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
		<td style="width:10%">รายการ</td>
		<td style="width:15%">ไฟล์</td>
		<td style="width:15%">ตัวอย่างเอกสาร</td>
		<td style="width:5%">จัดการ</td>
	</tr>

	<?php
		$select = $sql->select("*","tb_form");
		if(isset($_GET['txt_search']) && $_GET['txt_search'] != null){
			$select = $sql->select("*","tb_form","(name like '%".$_GET['txt_search']."%')");		
		}
		// print_r($select);
		$i = 1;
		while($row = mysqli_fetch_assoc($select)){
	?>
		<tr>
			<td><?php echo $row['name']; ?>
			<td>
				<?php 
					$result_form_doc = $sql->select("*","tb_form_doc","type='file'  AND form_id = '".$row['id']."'");
					while($row_file = mysqli_fetch_assoc($result_form_doc)){
				?>
			<div style="width: 100%;text-align:right;display:flex;margin-top:-35px">
					<a target="_blank" href="<?php echo $row_file['doc_path']; ?>"><?php echo $row_file['doc_name'];?></a>
					<a href="?del_doc=<?php echo $row_file['id'];?>">ลบ</a>
			</div>
				<?php
					}
				?>
			</td>
			<td style="">
				<center>
				<?php 
					$result_form_exam = $sql->select("*","tb_form_doc","type='exam'  AND form_id = '".$row['id']."'");
					while($row_exam = mysqli_fetch_assoc($result_form_exam)){
				?>
			<div style="width: 100%;text-align:right;display:flex;margin-top:-35px">
					<a  target="_blank"href="<?php echo $row_exam['doc_path']; ?>"><?php echo $row_exam['doc_name'];?></a>
					<a href="?del_doc=<?php echo $row_exam['id'];?>">ลบ</a>
			</div>
				<?php
					}
				?>
			</center>
			</td>
			<td style="display:flex;">
				<a href="#FileModal<?php echo $row['id'];?>" class="btn btn-warning">
					<img src="../img/1x/add.png">
				</a>
					<form method="post" action="" enctype="multipart/form-data">
						<div id="FileModal<?php echo $row['id'];?>" class="modalDialog">
					    	<div>	
					    	<a href="#close" title="Close" class="close">x</a>
					        	<h4 style="margin-top: 12px;">เพิ่มเอกสาร</h4>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">อัพโหลดเอกสาร</label>
					        			<input type="file" name="doc" class="form-control">
					        		</div>
					        	</div>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">ประเภท</label>
					        			<select name="doc_type" class="form-control" required />
					        				<option hidden>กรุณาเลือกประเภทเอกสาร</option>
					        				<option value="exam" selected>เอกสารตัวอย่าง</option>
					        				<option value="file">ไฟล์เปล่า</option>
					        			</select>
					        		</div>
					        	</div>
					        	<div class="row" style="margin-top:7px">
					        		<div class="col-12">
					        			<input type="text" hidden name="method" value="insert_file">
					        			<input type="text" hidden name="id" value="<?php echo $row['id'];?>">
					        			<input type="submit" value="บันทึกข้อมูล" class="btn btn-primary">
					        		</div>
					        	</div>
					    	</div>
						</div>		
					</form>
				<a href="#EditModal<?php echo $row['id'];?>" class="btn btn-primary">
				<!-- <a href="form-edit.php" class="btn btn-primary"> -->
					<img src="../img/1x/edit.png">
				</a>
					<form method="post" action="">
						<div id="EditModal<?php echo $row['id'];?>" class="modalDialog">
					    	<div>	
					    	<a href="#close" title="Close" class="close">x</a>
					        	<h4 style="margin-top: 12px;">แก้ไขข้อมูล</h4>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">ชื่อรายการ</label>
					        			<input type="text" name="name" value="<?php echo $row['name'];?>" class="form-control">
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

				<a href="form-index.php/?id=<?php echo $row['id'];?>" class="btn btn-danger">
					
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
        			<label class="form-label">รายการ</label>
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
	// if($sec == 1){	
	print_r($_POST['method']);

		if($_POST['method'] == "insert_file"){
			print_r($_FILES);
			$file = $_FILES['doc'];
			$directory = "../document/".$_POST['doc_type']."/".$file['name'] ;
			copy($file['tmp_name'],$directory);
			$insert = $sql->insert("tb_form_doc","doc_name,form_id,doc_path,type,status"," '".$file['name']."','".$_POST['id']."','".$directory."','".$_POST['doc_type']."', 'on'");
			if($insert){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
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
				// echo $sql;
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
		// header("Refresh:0");
		$helper->redirect($sec,"/project/page/".$url);
	}
	if(isset($_GET['del_doc'])){
		$delete = $sql->delete("tb_form_doc","id=".$_GET['del_doc']."");
		if($delete){
			echo "<script>alert('สำเร็จ')</script>";	
		}else{
			echo "<script>alert('ไม่สำเร็จ')</script>";
		}
		header("Refresh:0");
		$helper->redirect($sec,"/project/page/".$url);
	}

?>
<?php 
	include("bottom.php");
?>
<script type="text/javascript">
	$("#btn_search").click(function(){
		txt = $("#txt_search").val()
		window.location.replace("form-index.php?txt_search="+txt)
	})
</script>