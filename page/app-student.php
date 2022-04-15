<?php require("top.php"); ?>
<div class="content">
	<?php 
	$form_id = $_GET['form_id'];
	$select = $sql->select("*","tb_form","id = $form_id");
	$row = mysqli_fetch_assoc($select);
	?>
	<div class="col-8">
		<form action="" method="POST" enctype="multipart/form-data">
			
		<div class="card">
			<div class="card-header">
				รายการคำร้อง : <?php echo $row['name'];?>

			</div>
			<div class="card-body">
				<div class="col-12">
					<div class="row">	
						<div class="col-4">
							<label>แบบฟอร์ม</label>
						</div>
						<div class="col-4">
							<label>ตัวอย่างการกรอก</label>
						</div>
						<div class="col-4">
							<label>เอกสาร</label>
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<?php 

								$result_form_doc = $sql->select("*","tb_form_doc","type='file'  AND form_id = '".$row['id']."'");
								$count_doc = 0;
								while($row_file = mysqli_fetch_assoc($result_form_doc)){
									$count_doc++;
							?>
								<div style="width: 100%;text-align:right;display:flex;">
									<a target="_blank" href="<?php echo $row_file['doc_path']; ?>"><?php echo $row_file['doc_name'];?></a>
								</div>
							<?php
								}
							?>
						</div>
						<div class="col-4">
							<?php 
								$result_form_exam = $sql->select("*","tb_form_doc","type='exam'  AND form_id = '".$row['id']."'");
								while($row_exam = mysqli_fetch_assoc($result_form_exam)){
							?>
								<div style="width: 100%;text-align:right;display:flex;">
									<a  target="_blank"href="<?php echo $row_exam['doc_path']; ?>"><?php echo $row_exam['doc_name'];?></a>
								</div>
							<?php
								}
							?>
						</div>
						<div class="col-4">
							<?php 
								for($i=0;$i<$count_doc;$i++){
									echo '<input type="file" class="form-control" name="file'.$i.'" style="margin-top:5px" value="แนบไฟล์">';
								} 
							?>
						</div>
					</div>
					<div class="row">
						<div class="col-12"><hr></div>
					</div>
					<div class="row">
						<div class="col-8">
							<label>รายละเอียดคำร้อง</label>
							<textarea class="form-control" name="app_detail" style="min-height: 140px;"></textarea>
						</div>
						<div class="col-4">
							<label>ข้อมูลติดต่อ</label>
							<br>
							<label>Facebook</label>
							<input class="form-control" type="text" name="contact1" >	
							<label>เบอร์ติดต่อ</label>
							<input class="form-control" type="text" name="contact2" >	
						</div>
					</div>
					<div class="row">
						<div class="col-12 text-center" style="margin-top:15px">
							<input type="text" name="count_doc" value="<?php echo $count_doc; ?>" hidden>
							<input type="text" name="form_name" value="<?php echo $row['name']; ?>" hidden>
							<input type="text" name="form_id" value="<?php echo $_GET['form_id']; ?>" hidden>
							<button class="btn btn-primary" type="submit" name="btn">ยืนยันรายการ</button>
							<button class="btn btn-danger">ยกเลิก</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
	</div>
</div>
<?php 	
	if(isset($_POST['btn'])){
		// print_r($_FILES);
		$insert = $sql->insert("tb_app","form_id,detail,form_name,std_id,contact1,contact2"," '".$_POST['form_id']."', '".$_POST['app_detail']."','".$_POST['form_name']."','".$_SESSION['id']."','".$_POST['contact1']."', '".$_POST['contact2']."'");
		for($i=0;$i<$_POST['count_doc'];$i++){
			$file = $_FILES['file'.$i];
			$directory = "../document/app/".$_SESSION['id']."/".$_POST['form_id']."/".date("dmy-his")."/".$file['name'] ;
			$path = "../document/app/".$_SESSION['id']."/".$_POST['form_id']."/".date("dmy-his")."/";
			// echo $path;

		    if (!file_exists($path)) {
        		mkdir("../document/app/".$_SESSION['id']."/".$_POST['form_id']."/".date("dmy-his")."/", 0777, true);
        	}
			copy($file['tmp_name'],$directory);
			$docname = $file['name'];
			// $app_id = $conn->lastInsertId();
			$selectapp = $sql->select("*","tb_app LIMIT 1");
			$row = mysqli_fetch_assoc($selectapp);
			$app_id = $row['id'];
			$doc_name = $file['name'];
			$insert2 = $sql->insert("tb_app_doc","app_id,doc_name,doc_path,status"," '$app_id','$doc_name','$directory','on' ");
		}

		if($insert){
			echo "<script>alert('สำเร็จ')</script>";	
		}else{
			echo "<script>alert('ไม่สำเร็จ')</script>";
		}
		$url = "student-index.php";
		$sec = 0;
		$helper->redirect($sec,$url);
	}
?>
<?php require("bottom.php"); ?>