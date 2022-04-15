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
		<td></td>
	</tr>

	<?php
		$select = $sql->select("*","tb_app left join students on tb_app.std_id = students.student_id");
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
			<td style="display: flex;">

				<a href="#FlowModal<?php echo $row['id'];?>" class="btn btn-primary">
					<img src="../img/1x/person.png">
				</a>
					<form method="post" action="" enctype="multipart/form-data">
						<div id="FlowModal<?php echo $row['id'];?>" class="modalDialog" style="">
					    	<div style="width:50%;margin-top:50px">	
					    	<!-- <a href="#close" title="Close" class="close">x</a> -->
					        	<div class="card">
					        		<div class="card-header">
					        			<label class="form-label" style="float:left">จัดลำดับ</label>
					        		</div>
					        		<div class="card-body">
				        				<div class="row">	
						        			<div class="col-12">
						        			</div>
					        			</div>
					        			<div id="person_div">
					        				<div class="row">
							        			<div class="col-10">
							        				<!-- <label class="form-label">ลำดับที่ 1</label> -->
							        				<select style="margin-top:11px" class="form-control" name="select_person" id="select_person">
							        					<option hidden>กรุณาเลือกข้อมูล</option>
							        					<?php
							        						$select3 = $sql->select("*","tb_person");
							        						while($row3 = mysqli_fetch_assoc($select3)){
							        					?>
							        					<option value="<?php echo $row3['id'];?>"><?php echo $row3['name']." ".$row3['lastname'];?></option>
							        					<?php
							        						}
							        					?>
							        				</select>
							        				<!-- <button id="btn_del" type="button">delete</button> -->
							        			</div>
							        			<div class="col-1"><button class="btn btn-warning" style="margin-top:10px" type="button" id="btn_del">delete</button></div>
							        		</div>
					        			</div>
					        		</div>
					        		<div class="card-footer">
					    				<a href="#close" title="Close">
					    					<button class="btn btn-danger" type="button" style="float: right;">ปิด</button>
					    				</a>
					        				<button class="btn btn-primary" type="button" id="btn_add" style="float:right;margin:0px 10px">เพิ่มลำดับ</button>
					        		</div>

					        	</div>
					    	</div>
						</div>		
					</form>
				<a href="#DetailModal<?php echo $row['id'];?>" class="btn btn-warning">
					<img src="../img/1x/article.png">
				</a>
					<form method="post" action="" enctype="multipart/form-data">
						<div id="DetailModal<?php echo $row['id'];?>" class="modalDialog" style="">
					    	<div style="width:80%;margin-top:50px">	
					    	<!-- <a href="#close" title="Close" class="close">x</a> -->
					        	<div class="card">
					        		<div class="card-header">
					        			<label class="form-label" style="float:left">รายละเอียดคำร้อง</label>
					        		</div>
					        		<div class="card-body" style="padding:0px">
					        			<table class="table table-striped" style="width:100%;">
					        				<tr>
					        					<td style="width: 20%">รายการที่ <br> (No.)</td>
					        					<td>123456</td>
					        				</tr>
					        				<tr>
					        					<td>เลขที่คำร้อง<br> (Petition number)</td>
					        					<td>123456</td>
					        				</tr>
					        				<tr>
					        					<td>รหัสนักศึกษา<br> (Student code)</td>
					        					<td><?php echo $row['student_id'];?></td>
					        				</tr>
					        				<tr>
					        					<td>ชื่อ - นามสกุล<br> (Student name)</td>
					        					<td><?php echo $row['name']." ".$row['lastname'];?></td>
					        				</tr>
					        				<tr>
					        					<td>คณะ<br> (Faculty)</td>
					        					<td>คณะเทคโนโลยีและการจัดการอุตสาหกรรม (Faculty of industrial Technology and Management)</td>
					        				</tr>
					        				<tr>
					        					<td>ภาควิชา<br> (Department)</td>
					        					<td><?php echo $row['student_id'];?></td>
					        				</tr>
					        				<tr>
					        					<td>รายการคำร้อง<br> (Pattition list)</td>
					        					<td><?php echo $row['form_name'];?></td>
					        				</tr>
					        				<tr>
					        					<td>เอกสารแนบ<br> (Attach file)</td>
					        					<td>
					        						<?php 
					        							$select2 = $sql->select("*","tb_app_doc","app_id = '".$row['id']."'");
					        							while($row2 = mysqli_fetch_assoc($select2)){
				        							?>
				        							<a href="<?php echo $row2['doc_path'];?>"> a<?php echo $row2['doc_name']; ?></a>
				        							<?php
					        							}
					        						?>
					        					</td>
					        				</tr>
					        				<tr>
					        					<td>ประวัติการอนุมัติ<br> (Approve history)</td>
					        					<td>123456</td>
					        				</tr>
					        			</table>
					        		</div>
					        		<div class="card-footer">
					    				<a href="#close" title="Close">
					    					<button class="btn btn-danger" type="button" style="float: right;;margin:0px 10px">
					    					ปิด</button>
					    				</a>
					        		</div>

					        	</div>
					    	</div>
						</div>		
					</form>
			</td>
		</tr>
	<?php
		}
	?>


</table>


</div>
<?php 
	$url = "student-index.php";
	$sec = 0;

	
	if(isset($_POST['method'])){	
	print_r($_POST['method']);
		if($_POST['method'] == "insert"){

			$insert = $sql->insert("tb_app_detail","app_id,person_id,detail,status","'".$_POST['app_id']."','".$_POST['person_id']."','".$_POST['detail']."','on'");
			$person = $_POST['person_select'];
			$select = $sql->select("*","tb_app_detail");
			foreach($person as $row){
		$insert2 = $sql->insert("tb_person_detail","app_id,app_detail_id,person_id,status","'".$_POST['app_id']."','".$_POST['app_detail_id']."','".$row['']."','on'");
			}

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

	select_person = $("#person_div").html()
	console.log(select_person)
	$("#btn_search").click(function(){
		txt = $("#txt_search").val()
		window.location.replace("student-index.php?txt_search="+txt)
	})
	$("#btn_add").click(function(){
		 $("#person_div").append(select_person)
	})
	$(document).on('click', '#btn_del', function() {	
		 $(this).closest(".row").remove()
		 // $(this).closest(this).remove()
	})
</script>