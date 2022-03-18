<?php 
	include("top.php");
?>
<div class="content"> 

<table id="table_id" class="table table" style="width:80%">
	<tr>
		<th colspan="3"><input type="text" style="width:250px" name="txt_search" class="form-control"></th>
		<th colspan="2">
			<a href="#openModal" class="btn btn-primary">เพิ่มข้อมูล</a>
		</th>
	</tr>
	<tr>
		<td>#</td>
		<td>รายการ</td>
		<td>ไฟล์</td>
		<td>ตัวอย่าง</td>
		<td>จัดการ</td>
	</tr>

	<?php
		$select = $sql->select("*","tb_form");
		// print_r($select);
		$i = 1;
		while($row = mysqli_fetch_assoc($select)){
	?>
		<tr>
			<td><?php echo $i++; ?></td>
			<td><?php echo $row['name']; ?>
			<a href="#EditModal<?php echo $row['id'];?>" class="btn btn-primary">แก้ไขข้อมูล</a>
					<form method="post" action="">
						<div id="EditModal<?php echo $row['id'];?>" class="modalDialog">
					    	<div>	
					    	<a href="#close" title="Close" class="close">x</a>
					        	<h4 style="margin-top: 12px;">แก้ไขข้อมูล</h4>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">รายการคำร้อง</label>
					        			<input type="text" name="name" value="<?php echo $row['name'];?>" class="form-control">
					        		</div>
					        	</div>
					        	<div class="row" style="margin-top:7px">
					        		<div class="col-12">
					        			<input type="text" hidden name="method" value="insert">
					        			<input type="text" hidden name="id" value="<?php echo $row['id'];?>">
					        			<input type="submit" value="แก้ไขข้อมูล" class="btn btn-primary">
					        		</div>
					        	</div>
					    	</div>
						</div>		
					</form>
			</td>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['name']; ?></td>
			<td>
				<button class="btn btn-warning">แก้ไข</button>
				<a href="form-index.php/?id=<?php echo $row['id'];?>" class="btn btn-danger">ลบ</a>
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
	$url = "form-index.php";
	$sec = 0;
	if(isset($_POST['method'])){	
		if($_POST['method'] == "insert"){
			$insert = $sql->insert("tb_form","name","'".$_POST['name']."'");
			if($insert){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		if($_POST['method'] == "update"){
			$name = $_POST['name'];
			$update = $sql->update("tb_form","name = '$name'","id=".$_POST['id']."");
			if($update){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		$helper->redirect($sec,$url);
	}
	if(isset($_GET['id'])){
		$delete = $sql->delete("tb_form","id=".$_GET['id']."");
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