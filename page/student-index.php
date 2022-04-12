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
			<select class="form-control" style="width:240px" name="status">
				<option hidden>เลือกสถานะ</option>
				<option>ทั้งหมด</option>
				<option>อนุมัติ</option>
				<option>ไม่อนุมัติ</option>
				<option>รอการแก้ไข</option>
				<option>อยู่ระหว่างการดำเนินการ</option>
			</select>
			<input  class="form-control" type="text" style="width:250px;margin-right:15px" name="txt_search" id="txt_search" class="form-control" placeholder="ค้นหา: รายการคำร้อง">
					<!-- <input type="submit" class="btn btn-primary" id="btn_search" value="ค้นหา"> -->
					<button id="btn_search" class="btn btn-primary"  ><img src="../img/1x/search.png"></button>
			</a>
		</div>
	</div>	
<table id="table_id" class="" style="width:80%;margin-top:8px">
	<tr>
		<td>#</td>
		<td>รายการคำร้อง</td>
		<td>วันที่สร้าง</td>
		<td>แก้ไขล่าสุด</td>
		<td>สถานะ</td>
	</tr>

	<?php
		$select = $sql->select("*","tb_app");
		if(isset($_GET['txt_search']) && $_GET['txt_search'] != null){
			$select = $sql->select("*","tb_app","(form_name like '%".$_GET['txt_search']."%' AND status like '%".$_GET['status']."%'");		
		}
		// print_r($select);
		$i = 1;
		while($row = mysqli_fetch_assoc($select)){
	?>
		<tr>
			<td><?php echo $i; ?></td>
			<td><?php echo $row['form_name']; ?></td>
			<td><?php echo $row['created']; ?></td>
			<td><?php echo $row['updated']; ?></td>
			<td><span class="btn" style="background-color:#72CC41">คำร้องสำเร็จ</span></td>
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
			$insert = $sql->insert("tb_app","name","'".$_POST['name']."'");
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
			$update = $sql->update("tb_app","name = '$name',lastname = '$lastname',email = '$email'
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
		$delete = $sql->delete("tb_app","student_id=".$_GET['id']."");
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