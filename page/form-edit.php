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
	<div class="col-4">
		<div class="card">
			<div class="card-header">
				จัดการฟอร์ม
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-12">
						<label>ชื่อรายการ</label>
						<input type="text" class="form-control" name="name">
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<hr>
						<label>จัดการการทำงาน</label>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<label>ขั้นตอนที่ 1</label>
						<select class="form-control">
							<option value="" hidden>กรุณาเลือกข้อมูล</option>
						</select>
					</div>
				</div>
			</div>
			<div class="card-footer">
				<div class="col-12">
					<button class="btn btn-danger" style="float: right">ยกเลิก</button>
					<button class="btn btn-info" style="float: right;margin: 0px 10px">บันทึกข้อมูล</button>
				</div>
			</div>
		</div>
	</div>
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