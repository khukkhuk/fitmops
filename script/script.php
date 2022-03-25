<?php 	
session_start();
require("../connect.php");
if($_POST['type'] == "login"){
	$sql ="SELECT * FROM students where email='".$_POST["username"]."' AND password='".$_POST["password"]."'";
	$result = mysqli_query($con,$sql);
	// print_r($result);
  	$rowcount=mysqli_num_rows($result);
  	if($rowcount>0){
  		$data=mysqli_fetch_assoc($result);
  		// print_r($data);
		$_SESSION['name'] = $data['name'];
		$_SESSION['id'] = $data['student_id'];
		$_SESSION['lastname'] = $data['lastname'];
		$_SESSION['email'] = $data['email'];
		echo "true";
  	}else{
  		echo "false";
  	}
}
else if($_POST['type']=="register"){
	$name = $_POST['name'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$tel = $_POST['tel'];
	$department_abb = $_POST['department'];
	$id = $_POST['id'];
	// $sql ="SELECT * FROM students where email='".$_POST["email"]."'";
	$sql = "INSERT INTO `students` (`student_id`,`name`,`lastname`,`email`,`password`,`tel`,`department_abb`) 
	VALUES ('$id','$name','$lastname','$email','$password','$tel','$department_abb')";
	$result = mysqli_query($con,$sql);
	// echo $sql;
	if($result){
		echo "ok";
	}else{
		echo "no";		
	}


}else if($_POST['type'] == "fac"){
	$sql = "select * from departments where faculty_id ='".$_POST['fac']."'";
	echo $sql;
	$result = mysqli_query($con,$sql);	
	// $row ;
	$option ="";
	while($row= mysqli_fetch_assoc($result)){
		$option = $option.'<option value="'.$row['department_abb'].'">'.$row['department_name'].'</option>';
	}
	echo $option;

}
?>