<?php 
	include("../code/sql.php");
	$sql = new sql();
	$select = $sql->select("*","tb_app");
?>