<?php
	require_once("top.php");
?>
<div class="content">
	<form method="post" action="">
		
		<table style="width:40%">
			<tr>
				<td colspan="2">ข้อมูลส่วนตัว</td>
			</tr>
			<tr>
				<td style="width: 20%">
					รหัสนักศึกษา
				</td>
				<td>
					<input type="text" class="form-control" readonly value="<?php echo $_SESSION['id'];?>"name="id">
				</td>
			</tr>
			<tr>
				<td style="width: 20%">
					ชื่อ
				</td>
				<td>
					<input type="text" class="form-control" value="<?php echo $_SESSION['name'];?>"name="name">
				</td>
			</tr>
			<tr>
				<td>
					นามสกุล
				</td>
				<td>
					<input type="text" class="form-control" value="<?php echo $_SESSION['lastname'];?>"name="lastname">
				</td>
			</tr>
			<tr>
				<td>
					อีเมล
				</td>
				<td>
					<input type="text" class="form-control" value="<?php echo $_SESSION['email'];?>"name="email">
				</td>
			</tr>
			<tr>
				<td>
					เบอร์โทร
				</td>
				<td>
					<input type="text" class="form-control" value="<?php echo $_SESSION['tel'];?>"name="tel">
				</td>
			</tr>
			<tr>
				<td colspan="2">

					<button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
					<button type="reset" class="btn btn-danger">ยกเลิก</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<?php 
	if(isset($_POST['id'])){
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
?>


<?php
	require_once("bottom.php");
?>