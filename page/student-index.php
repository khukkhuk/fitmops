<?php 
	include("top.php");
?>
<style type="text/css">
	a{
		margin: 5px;
		padding: 15px;
	}
</style>
<div class="content"> 
	<div class="row">
		<div class="col-md-6" style="display:flex;">
			<input  class="form-control" type="text" style="width:250px;margin-right:15px" name="txt_search" id="txt_search" class="form-control">
					<!-- <input type="submit" class="btn btn-primary" id="btn_search" value="ค้นหา"> -->
					<button id="btn_search" class="btn btn-primary"  ><img src="../img/1x/search.png"></button>
			<a href="#openModal" class="btn btn-primary">
					<img src="../img/1x/add.png">
			</a>
		</div>
	</div>	
<table id="table_id" class="" style="width:80%;margin-top:8px">
	<tr>
		<td>#</td>
		<td>ชื่อ - นามสกุล</td>
		<td>อีเมล</td>
		<td>เบอร์โทร</td>
		<td>สาขา</td>
		<td>จัดการ</td>
	</tr>

	<?php
		$select = $sql->select("*","students");
		if(isset($_GET['txt_search']) && $_GET['txt_search'] != null){
			$select = $sql->select("*","students","(name like '%".$_GET['txt_search']."%' or email like '%".$_GET['txt_search']."%'  or lastname like '%".$_GET['txt_search']."%'  or student_id like '%".$_GET['txt_search']."%' )");		
		}
		// print_r($select);
		$i = 1;
		while($row = mysqli_fetch_assoc($select)){
	?>
		<tr>
			<td><?php echo $row['student_id']; ?></td>
			<td><?php echo $row['name']." ".$row['lastname']; ?>
			<td><?php echo $row['email']; ?></td>
			<td><?php echo $row['tel']; ?></td>
			<td><?php echo $row['department_abb']; ?></td>
			<td style="display:flex;">
				<a href="#EditModal<?php echo $row['student_id'];?>" class="btn btn-primary">
					<img src="../img/1x/edit.png">
				</a>
					<form method="post" action="">
						<div id="EditModal<?php echo $row['student_id'];?>" class="modalDialog">
					    	<div>	
					    	<a href="#close" title="Close" class="close">x</a>
					        	<h4 style="margin-top: 12px;">แก้ไขข้อมูล</h4>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">ชื่อ</label>
					        			<input type="text" name="name" value="<?php echo $row['name'];?>" class="form-control">
					        		</div>
					        	</div>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">นามสกุล</label>
					        			<input type="text" name="lastname" value="<?php echo $row['lastname'];?>" class="form-control">
					        		</div>
					        	</div>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">อีเมล</label>
					        			<input type="text" name="email" value="<?php echo $row['email'];?>" class="form-control">
					        		</div>
					        	</div>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">เบอร์โทร</label>
					        			<input type="text" name="tel" value="<?php echo $row['tel'];?>" class="form-control">
					        		</div>
					        	</div>
					        	<div class="row" style="margin-top:7px">
					        		<div class="col-12">
					        			<input type="text" hidden name="method" value="update">
					        			<input type="text" hidden name="id" value="<?php echo $row['student_id'];?>">
					        			<input type="submit" value="แก้ไขข้อมูล" class="btn btn-primary">
					        		</div>
					        	</div>
					    	</div>
						</div>		
					</form>

				<a href="student-index.php/?id=<?php echo $row['student_id'];?>" class="btn btn-danger">
					
					<img src="../img/1x/delete.png">
				</a>
			</td>
		</tr>
	<?php
		}
	?>


</table>

<form method="post" action="">
	<div id="openModal" class="modalDialog">
    	<div>	
    	<a href="#close" title="Close" class="close">x</a>
        	<h4 style="margin-top: 12px;">เพิ่มข้อมูล</h4>
        	<div class="row">
        		<div class="col-12">
        			<label class="form-label">รายการคำร้อง</label>
        			<input type="text" name="name" class="form-control">
        		</div>
        	</div>
        	<div class="row" style="margin-top:7px">
        		<div class="col-12">
        			<input type="text" hidden name="method" value="insert">
        			<input type="submit" value="เพิ่มข้อมูล" class="btn btn-primary">
        		</div>
        	</div>
    	</div>
	</div>		
</form>

</div>
<?php 
	$url = "student-index.php";
	$sec = 0;

	
	if(isset($_POST['method'])){	
	print_r($_POST['method']);
		if($_POST['method'] == "insert"){
			$insert = $sql->insert("students","name","'".$_POST['name']."'");
			if($insert){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		if($_POST['method'] == "update"){
			$name = $_POST['name'];
			$lastname = $_POST['lastname'];
			$email = $_POST['email'];
			$tel = $_POST['tel'];
			$update = $sql->update("students","name = '$name',lastname = '$lastname',email = '$email'
				,tel = '$tel'","student_id=".$_POST['id']."");
			if($update){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				// echo $sql;
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		$helper->redirect($sec,$url);
	}
	if(isset($_GET['id'])){
		$delete = $sql->delete("students","student_id=".$_GET['id']."");
		if($delete){
			echo "<script>alert('สำเร็จ')</script>";	
		}else{
			echo "<script>alert('ไม่สำเร็จ')</script>";
		}
		$helper->redirect($sec,$url);
	}
?>
<?php 
	include("bottom.php");
?>
<script type="text/javascript">
	$("#btn_search").click(function(){
		txt = $("#txt_search").val()
		window.location.replace("student-index.php?txt_search="+txt)
	})
</script>