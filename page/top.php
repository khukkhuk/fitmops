<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">  
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
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
td{
  /*border-bottom: 1px solid #ddd*/
}
tr:nth-child(even){background-color: #f2f2f2}

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
</style>
</head>
<body>

<div class="sidebar">
  <img src="../img/logo_kmutnb.png" style="margin:70px 0px 10px 50px">
  <center>
    <span>
      นายสรรเพชญ  กิจเปรื่อง
    </span>
    <br>
    <span>
      6206021420109@fitm.kmutnb.ac.th
    </span>  
  </center>
  <a style="margin-top:20px" class="active" href="#home">หน้าหลัก</a>
  <a href="#news">ข้อมูลส่วนตัว</a>
  <a href="#contact">ตัวอย่างเอกสารคำร้อง</a>
  <a href="#about">ยื่นคำร้อง</a>
</div>
<div style="top:0;position:fixed;right: 0;background-color: #ff5151;height: 40px;width:100%;text-align: right;padding-top:6px;padding-bottom: -10px;z-index: 99;">
  <span>ยินดีต้อนรับ นายสรรเพชญ กิจเปรื่อง</span>
  <a style="margin:0px 15px;text-decoration:none;color:black;font-size:18px" href="">ออกจากระบบ</a>
</div>
<!-- 
<div class="col-12" style="display:flex;">
  <div class="row" style="justify-content: center;">
    <center>
    <div>
      <img src="../img/logo.png">
    </div>
    <div>
      FITM Online Petition Service
      <br>
      ระบบคำร้องออนไลน์
    </div>
  </div>
</div> -->