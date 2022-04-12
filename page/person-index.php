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
		<td style="width:10%">#</td>
		<td style="width:20%">ชื่อ - นามสกุล</td>
		<td style="width:15%">อีเมล</td>
		<td style="width:10%">เบอร์โทร</td>
		<td style="width:10%">สถานะ</td>
		<td style="width:10%">จัดการ</td>
	</tr>

	<?php
		$select = $sql->select("*","tb_person");
		if(isset($_GET['txt_search']) && $_GET['txt_search'] != null){
			$select = $sql->select("*","tb_person","(name like '%".$_GET['txt_search']."%' or email like '%".$_GET['txt_search']."%'  or lastname like '%".$_GET['txt_search']."%'  or id like '%".$_GET['txt_search']."%' )");		
		}
		// print_r($select);
		$i = 1;
		while($row = mysqli_fetch_assoc($select)){
	?>
		<tr>
			<td><?php echo $row['id']; ?></td>
			<td><?php echo $row['name']." ".$row['lastname']; ?>
			<td><?php echo $row['email']; ?></td>
			<td><?php echo $row['tel']; ?></td>
			<td><?php echo $row['status']; ?></td>
			<td style="display:flex;">


				<a href="#listModal<?php echo $row['id'];?>" class="btn btn-warning">
					<img src="../img/1x/list.png">
				</a>
					<form method="post" action="">
						<div id="listModal<?php echo $row['id'];?>" class="modalDialog">
					    	<div>	
					    	<a href="#close" title="Close" class="close">x</a>
					    		<h4 style="margin-top: 12px;">จัดการข้อมูลตำแหน่ง</h4>
			        				<?php
										$person_position = $sql->select("* ,tb_role_list.id as list_id","tb_role_list left join tb_role on tb_role_list.role_id = tb_role.id","person_id='".$row['id']."'");
			        					while($row_pos = mysqli_fetch_assoc($person_position)){ 
			        				 ?>
								        <div class="row">
								        	<div class="col-6">
								        		<label><?php echo $row_pos['name'];?></label>
								        	</div>
								        	<div class="col-6">
								        		<a href="person-index.php/?list=<?php echo $row_pos['list_id'];?>" class="btn btn-danger">ลบ</a>
								        	</div>
								        </div>
			        				<?php 
				        				}
			        				?>

					        <hr>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">เพิ่มตำแหน่ง</label>
					        			<select class="form-control" name="role_id">
					        				<?php
												$result_position = $sql->select("*","tb_role","");
					        					while($res_pos = mysqli_fetch_assoc($result_position)){ 
					        				 ?>
					        				<option value="<?php echo $res_pos['id'];?>"> <?php echo $res_pos['name'];?></option>
					        				<?php 
						        				}
					        				?>
					        			</select>
					        		</div>
					        	</div>
					        	<div class="row" style="margin-top:7px">
					        		<div class="col-12">
					        			<input type="text" hidden name="method" value="insert_role">
					        			<input type="text" hidden name="id" value="<?php echo $row['id'];?>">
					        			<input type="submit" value="เพิ่มตำแหน่ง" class="btn btn-primary">
					        		</div>
					        	</div>
					    	</div>
						</div>		
					</form>

				<a href="#EditModal<?php echo $row['id'];?>" class="btn btn-primary">
					<img src="../img/1x/edit.png">
				</a>
					<form method="post" action="">
						<div id="EditModal<?php echo $row['id'];?>" class="modalDialog">
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
					        			<input type="text" hidden name="id" value="<?php echo $row['id'];?>">
					        			<input type="submit" value="แก้ไขข้อมูล" class="btn btn-primary">
					        		</div>
					        	</div>
					    	</div>
						</div>		
					</form>

				<a href="person-index.php/?id=<?php echo $row['id'];?>" class="btn btn-danger">
					
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
        			<label class="form-label">ชื่อ</label>
        			<input type="text" name="name" class="form-control">
        		</div>
        	</div>
        	<div class="row">
        		<div class="col-12">
        			<label class="form-label">นามสกุล</label>
        			<input type="text" name="lastname" class="form-control">
        		</div>
        	</div>
        	<div class="row">
        		<div class="col-12">
        			<label class="form-label">อีเมล</label>
        			<input type="text" name="email" class="form-control">
        		</div>
        	</div>
        	<div class="row">
        		<div class="col-12">
        			<label class="form-label">เบอร์โทร</label>
        			<input type="text" name="tel" class="form-control">
        		</div>
        	</div>
        	<div class="row">
        		<div class="col-12">
        			<label class="form-label">สถานะ</label>
        			<select class="form-control" name="status">
        				<option hidden>กรุณาเลือกข้อมูล</option>
        				<!-- <option value="teacher">ครู อาจารย์</option> -->
        				<option value="teacher">บุคลากร</option>
        				<option value="officer">เจ้าหน้าที่</option>
        				<option value="admin">ผู้ดูแลระบบ</option>
        			</select>
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
	$url = "person-index.php";
	$sec = 0;

	
	if(isset($_POST['method'])){	
	// print_r($_POST['method']);
		if($_POST['method'] == "insert_role"){
			$insert = $sql->insert("tb_role_list","role_id,person_id","'".$_POST['role_id']."','".$_POST['id']."'");
			if($insert){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		if($_POST['method'] == "insert"){
			$insert = $sql->insert("tb_person","name,lastname,email,tel,status","'".$_POST['name']."','".$_POST['lastname']."','".$_POST['email']."','".$_POST['tel']."','".$_POST['status']."'");
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
			$update = $sql->update("tb_person","name = '$name',lastname = '$lastname',email = '$email'
				,tel = '$tel'","id=".$_POST['id']."");
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
		$delete = $sql->delete("tb_person","id=".$_GET['id']."");
		if($delete){
			echo "<script>alert('สำเร็จ')</script>";	
		}else{
			echo "<script>alert('ไม่สำเร็จ')</script>";
		}
		// header("Refresh:0");
		$helper->redirect($sec,"/project/page/".$url);
	}

	if(isset($_GET['list'])){
		$delete = $sql->delete("tb_role_list","id=".$_GET['list']."");
		if($delete){
			echo "<script>alert('สำเร็จ')</script>";	
		}else{
			echo "<script>alert('ไม่สำเร็จ')</script>";
		}
		// header("Refresh:0");
		$helper->redirect($sec,"/project/page/".$url);
	}
?>
<?php 
	include("bottom.php");
?>
<script type="text/javascript">
	$("#btn_search").click(function(){
		txt = $("#txt_search").val()
		window.location.replace("person-index.php?txt_search="+txt)
	})
</script>