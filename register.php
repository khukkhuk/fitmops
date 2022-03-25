<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>
		
	</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
  	body{
  		font-size: 15px;
  		background-color: #DADADA;
  		color: ;
  	}
  	div{
  		font-family: supermarket;
  	}
  	.row{
  		margin-top: 15px;
  	}
  	.smalltext{
  		font-size: 12px;
  		color: #6D6D6D;
  	}
  	label{
  		color: #6D6D6D;
  	}
  </style>
</head>
<body>
	<div class="container">
		<div class="col-xl-8" style="margin-top:5%;margin-left: 15%;">	
			<div class="row" style="margin-bottom: 20px;">
				<div class="col-4">
					<img src="img/logo.png" width="220">		
				</div>
				<div class="col-8">
					<center>
						<br>
					<h2>FITM Online Petetion Service</h2>
					<h3>ระบบคำร้องออนไลน์</h2>
				</div>
			</div>
		<?php 
			require("connect.php"); 
		?>
			<div class="card" style="border-radius:20px">
				<div class="card-body">
					<div class="col-12">
						<div class="row">
							<div style="background-color:  #3e93c7;border-radius: 15px;margin-top:-15px;padding-top:0px;display: inline-block;">
								<center>
								<img src="img/user.png" width="50" style="margin-top:-10px"><label style="color:white;font-size:40px;margin-left:20px">สมัครสมาชิก</label>
							</div>
						</div>
						<div class="row">	
							<div class="col-6">
								<div class="col-12">
									<label>ชื่อ</label>
									<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="text" id="name" name="name" placeholder="ชื่อ" required>
								</div>
								<div class="col-12">
									<label>นามสกุล</label>
									<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="text" id="lastname" name="lastname" placeholder="นามสกุล" required>
								</div>
								<div class="col-12">
									<label>ภาควิชา</label>
									<?php
											$sql= "SELECT * FROM faculties";
											$result = mysqli_query($con,$sql);
										?>
									<select name="faculty" id="faculty" class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;">
										<option hidden>กรุณาเลือกข้อมูล</option>
										<?php

											while($row = mysqli_fetch_assoc($result)){
										?>
										<option value="<?php echo $row['faculty_id']; ?>"><?php echo $row['faculty_name']; ?></option>
										<?php
											}
										?>
									</select>
								</div>
								<div class="col-12">
									<label>สาขา</label>
									<select name="department" id="department" class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;">
										<option>กรุณาเลือกข้อมูล</option>
									</select>
								</div>
							</div>
							<div class="col-6">
								<div class="col-12">
									<label>E-mail</label> <label style="color:red">(*กรุณาใช้ @fitm.kmutnb.ac.th เท่านั้น)</label>
									<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="text" id="email" name="email" placeholder="E-mail" required>
								</div>
								<div class="col-12">
									<label>เบอร์โทรศัพท์</label>
									<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="text" id="tel" name="tel" placeholder="เบอร์โทรศัพท์" required>
								</div>
								<div class="col-12">
									<label>รหัสผ่าน</label>
									<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="password" id="password" name="password" placeholder="รหัสผ่าน" required>
								</div>
								<div class="col-12">
									<label>ยืนยันรหัสผ่าน</label>
									<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="password" id="password_con" name="password_con" placeholder="ยืนยันรหัสผ่าน" required>
								</div>
							</div>
						</div>
						<div class="row">
							<center>
								<!-- <input type="" name=""> -->
							<button class="btn btn-success" id="btn" name="btn" style="border-radius: 15px; width: 250px;font-size:23px">ยืนยันการสมัครสมาชิก</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

	<div class="toast" id="register_success" style="top:0;position:fixed;margin-left: 80%;margin-top:15px;background-color:#20d367;color:white" data-autohide="false">
	    <div class="toast-body">
	    	สมัครสมาชิกสำเร็จ
	    </div>
	</div>
  	<script type="text/javascript" src="js/jquery.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript">

		$("#btn").click(function(){
			email = $("#email").val()
			// alert(email)
			text = email.substr(email.length-18,18)
			id = email.substr(0,13)
			console.log(id)
			if(  text  != "@fitm.kmutnb.ac.th"){
    			alert("email error")
    			$('#email_error').toast('show');
			}
			else{
				// alert("normal")
				$.ajax({
					method:"post",
					data:{
						name:$("#name").val(),
						lastname:$("#lastname").val(),
						id: id,
						// faculty:$("#faculty").val(),
						department:$("#department").val(),
						email:$("#email").val(),
						tel:$("#tel").val(),
						password:$("#password").val(),
						password_con:$("#password_con").val(),
						type:"register",
					},
					url:"./script/script.php",
					success : function(res){
						if(res == "ok"){
							alert("สมัครสำเร็จ")
		    			$('#register_success').toast('show');
						}
					}
				})
			}
		})
		$("#faculty").change(function(){
			$.ajax({
				method:"post",
				data:{
					fac: $(this).val(),
					type: "fac",
				},
				url:"./script/script.php",
				success : function(res){
					// console.log(res)
					$("#department").append(res)
				}
			})
		})
</script>
</body>
</html>