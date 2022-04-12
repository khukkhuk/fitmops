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
  		font-size: 20px;
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
		<!-- <form method="post"> -->
			<div class="card" style="border-radius: 25px;box-shadow: 0px 8px 8px rgba(0, 0, 0, 0.25);height:370px ;">
				<div class="card-body" style="display: flex;">
					<!-- <div class="row"> -->
					<div class="col-md-5">
						<div  style="background-color: #3e93c7; border-radius:15px; height: 100%;">
							<img src="img/user.png" width="80%" style="margin-left:20px;margin-top: 60px;">
						</div>
					</div>
					<div class="col-md-7">
						<div class="row">		
							<div class="col-md-12">	
								<!-- <label>email</label> -->
								<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="text" id="username" name="username" placeholder="ชื่อผู้ใช้งาน" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">	
								<!-- <label>username</label> -->
								<input class="form-control" style="background-color: #DADADA; border-radius: 15px;padding: 0px 25px;" type="password" id="password" name="password" placeholder="รหัสผ่าน" required>
							</div>
						</div>
						<div class="row">
							<div class="col-6" style="text-align: center;">	
								<input type="checkbox" name="">
								<label>จดจำรหัสผ่าน</label>
							</div>
							<div class="col-6" style="text-align: center;">
								<a style="color:#6D6D6D;text-decoration: none;" href="">ลืมรหัสผ่าน ?</a>
							</div>
						</div>
						<div class="row">
							<div class="col-6" style="text-align: center;">
								<input type="submit" name="btn" id="btn" value="เข้าสู่ระบบ" class="btn btn-success" style="width:180px;border-radius: 18px;">
								
							</div>
							<div class="col-6" style="text-align: center;">
								<a class="btn btn-danger" style="width:180px;border-radius: 18px;" href="register.php">สมัครสมาชิก</a>
								<!-- <button class="btn btn-danger" style="width:180px;border-radius: 18px;">สมัครสมาชิก</button> -->
							</div>
						</div>
						<div class="row smalltext" style="text-align: center;margin-top:30px">
							<label> ติดต่องานทะเบียน : โทร. 02-555-2000 ต่อ 1621-1635</label>
							<br>
							<label>Office of The Registration : Tel. 02-555-2000 ext. 1621-1635</label>
						</div>
					</div>
				</div>
			</div>
		<!-- </form> -->
			<div class="row smalltext" style="margin-top:5%">	
				* สำหรับนักศึกษาปัจจุบันที่ประสงค์จะขอ Transcript รือหนังสือรับรองผลสอบในช่วงปิดเทอมมหาวิทยาลัยเป็นการชั่วคราว สามารถขอได้ที่เว็บไซต์ :
			</div>
			<div class="row smalltext">	
				* For current studnts who want to request for Transcript or awaiting the results of the examination during Temporary Universirt Closure due to the Coronavirus Pandemic. Go to website:

			</div>
			<div class="row smalltext" style="text-align: center;">	
				<a style="text-decoration: none;" href="https://e-service.acdserv.kmutnb.ac.th/regReqDoc">https://e-service.acdserv.kmutnb.ac.th/regReqDoc</a>
				
			</div>
		</div>
	</div>
	<div class="toast" id="fill_username" style="top:0;position:fixed;margin-left: 80%;margin-top:15px;background-color:#f56c6c;color:white" data-autohide="false">
	    <div class="toast-body">
	    	กรุณากรอก Username
	    </div>
  	</div>
	<div class="toast" id="fill_password" style="top:0;position:fixed;margin-left: 80%;margin-top:15px;background-color:#f56c6c;color:white" data-autohide="false">
	    <div class="toast-body">
	    	กรุณากรอก Password
	    </div>
  	</div>
	<div class="toast" id="fail" style="top:0;position:fixed;margin-left: 80%;margin-top:15px;background-color:#f56c6c;color:white" data-autohide="false">
	    <div class="toast-body">
	    	Username หรือ Password ไม่ถูกต้อง
	    </div>
  	</div>
	<div class="toast" id="loginsuccess" style="top:0;position:fixed;margin-left: 80%;margin-top:15px;background-color:#20d367;color:white" data-autohide="false">
	    <div class="toast-body">
	    	กำลังเข้าสู่ระบบ..
	    </div>
  	</div>

  	<script type="text/javascript" src="js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>

		$("#emailasdasdasd").change(function(){
			
		})
		$("#btn").click(function(){
			user = $("#username").val()
			text = user.substr(user.length-18,18)
			// alert(text)
			// alert('@fitm.kmutnb.ac.th')
			if($("#username").val() == ""){
    			$('#fill_username').toast('show');
			}
			else if($("#password").val() == ""){
    			$('#fill_password').toast('show');
			}
			else if(  text  == "@fitm.kmutnb.ac.th"){
				$.ajax({
					method:"post",
					data:{
						username:$("#username").val(),
						password:$("#password").val(),
						type:"login",
					},
					url:"script/script.php",
					success : function(res){
						// alert(res)
						if(res == "std"){
			    			$('#loginsuccess').toast('show');
			    			window.location="page/student-index.php";
						}
						else if(res == "teacher"){
			    			$('#loginsuccess').toast('show');
			    			window.location="page/teacher-index.php";
						}
						else if(res == "officer"){
			    			$('#loginsuccess').toast('show');
			    			window.location="page/index.php";
						}
						else if(res == "admin"){
			    			$('#loginsuccess').toast('show');
			    			window.location="page/index.php";
						}else{
		    				$('#fail').toast('show');
						}
					}
				})
			}else{
				alert(text)
		    	$('#fail').toast('show');
			}
			
		})
</script>
</body>
</html>