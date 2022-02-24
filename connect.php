<?php 	
	$con = mysqli_connect("localhost","root","","fitm_ops");
	if($con -> connect_errno){
  		echo "Failed to connect to MySQL: " . $con -> connect_error;
	}
?>