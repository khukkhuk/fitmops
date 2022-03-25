<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">  
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <link rel="stylesheet" type="text/css" href="../asset/css/Style.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css"> -->
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>

<style type="text/css">
  
body {
  top: 0;
  margin: 0;
  font-family: "supermarket", sans-serif;
  background-color: #D3D4D7;

}

.sidebar {
  border-radius: 0 20px 20px 0;
  margin: 0;
  padding: 0;
  width: 270px;
  background-color: #3d3c48;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  margin: 0px 10px;
  font-size: 20px;
  display: block;
  color: white;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  border-radius: 15px;
  background-color: #D3D4D7;
  color: black;
}

.sidebar a:hover:not(.active) {
  border-radius: 15px;
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 300px;
  margin-top: 80px;
  padding: 1px 16px;
  height: 1000px;
  position: fixed;
  width: 100%;

}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
span{
  color: white;
  font-size: 18px;
}
table {
  /*border: 1px solid black;*/
  border-radius: 15px;
  border-collapse: collapse;
  width: 100%;
  background-color: white;
  /*height: 100p;*/
}

th, td {
  text-align: center;
  padding: 8px;
}
tr{
  border-top: 1px solid #ddd;
  border-width: 80%;
}
tr:nth-child(even){
  /*background-color: #f2f2f2*/

}

th {
  /*background-color: #04AA6D;*/
  color: black;
}
.btn{
  padding: 1px 6px ;
  border-radius: 5px;
  color:white ;
  border: none;
}
.dot {
  height: 15px;
  width: 15px;
  border-radius: 50%;
  display: inline-block;
}


  .modalDialog {
    position: fixed;
    font-family: Arial, Helvetica, sans-serif;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: #858585cc;
    z-index: 99999;
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.modalDialog:target {
    opacity:1;
    pointer-events: auto;
}
.modalDialog > div {
    width: 400px;
    position: relative;
    margin: 10% auto;
    padding: 5px 20px 13px 20px;
    border-radius: 6px;
    background: #fff;
}
.close {
    /*background: #606061;*/
    color: black;
    position: absolute;
    right: 0px;
    text-align: center;
    top: 0px;
    width: 24px;
    text-decoration: none;
}

</style>
</head>
<body>
  <?php
    include("../code/sql.php");
    $sql = new sql();
    include("../code/helper.php");
    $helper = new helper();
  ?>

<div class="sidebar">
  <img src="../img/logo_kmutnb.png" style="margin:70px 0px 10px 50px">
  <center>
    <span>
      <?php echo $_SESSION['name']." ".$_SESSION['lastname'];?>
    </span>
    <br>
    <span>
      <?php echo $_SESSION['email'];?>
    </span>
  </center>
  <a style="margin-top:20px" class="active" href="#home">หน้าหลัก</a>
  <a href="form-index.php">ฟอร์ม</a>
  <a href="app-index.php">ยื่นคำร้อง</a>
  <a href="information.php">ข้อมูลส่วนตัว</a>
  <a href="person-index.php">รายชื่อเจ้าหน้าที่ บุคลากร</a>
  <a href="student-index.php">รายชื่อนิสิตนักศึกษา</a>
  <a href="role-index.php">ตำแหน่ง</a>
  

</div>

<div style="top:0;position:fixed;right: 0;background-color: #ff5151;height: 40px;width:100%;text-align: right;padding-top:6px;padding-bottom: -10px;z-index: 99;">
  <span>ยินดีต้อนรับ  <?php echo $_SESSION['name']." ".$_SESSION['lastname'];?></span>
  <a style="margin:0px 15px;text-decoration:none;color:black;font-size:18px" href="logout.php">ออกจากระบบ</a>
</div>