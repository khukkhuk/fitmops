<?php 
	include("top.php");
?>
<div class="content"> 
<style type="text/css">
	table {
width:100%;
display: inline-block;
}
td, th {
max-width:100%
}
</style>
	<table id="table_id" class="" style="width:60%">
		<tr >
			<th colspan="2" width="2%">
					<input  class="form-control" type="text" style="width:250px;" name="txt_search" id="txt_search" class="form-control">
					<input type="submit" class="btn btn-primary" id="btn_search" value="ค้นหา">
			</th>
			<th colspan="1">
				<a href="#openModal" class="btn btn-primary">เพิ่มข้อมูล</a>
			</th>
		</tr>
		<tr>
			<td>#</td>
			<td>รายการ</td>		<td>จัดการ</td>
		</tr>

	<?php
		$select = $sql->select("*","tb_role");
		if(isset($_GET['txt_search']) && $_GET['txt_search'] != null){
			$select = $sql->select("*","tb_role","name = '".$_GET['txt_search']."'");		
		}
		$i = 1;
		while($row = mysqli_fetch_assoc($select)){
	?>
		<tr>
			<td><?php echo $i++; ?></td>
			<td><?php echo $row['name']; ?></td>
			<td style="white-space:nowrap;">
				<a href="#EditModal<?php echo $row['id'];?>" class="btn btn-warning" style="width:60px">แก้ไข</a>
				<a href="../page/role-index.php?id=<?php echo $row['id'];?>" class="btn btn-danger" style="width:60px">ลบ</a>
					<form method="post" action="">
						<div id="EditModal<?php echo $row['id'];?>" class="modalDialog">
					    	<div>	
					    	<a href="#close" title="Close" class="close">x</a>
					        	<h4 style="margin-top: 12px;">เพิ่มข้อมูล</h4>
					        	<div class="row">
					        		<div class="col-12">
					        			<label class="form-label">ตำแหน่ง</label>
					        			<input type="text" name="name" class="form-control" value="<?php echo $row['name'];?>">
					        		</div>
					        	</div>
					        	<div class="row" style="margin-top:7px">
					        		<div class="col-12">
					        			<input type="text" hidden name="id" value="<?php echo $row['id'];?>">
					        			<input type="text" hidden name="method" value="update">
					        			<input type="submit" value="เพิ่มข้อมูล" class="btn btn-primary">
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

<form method="post" action="">
	<div id="openModal" class="modalDialog">
    	<div>	
    	<a href="#close" title="Close" class="close">x</a>
        	<h4 style="margin-top: 12px;">เพิ่มข้อมูล</h4>
        	<div class="row">
        		<div class="col-12">
        			<label class="form-label">ตำแหน่ง</label>
        			<input type="text" name="name" class="form-control">
        		</div>
        	</div>
        	<div class="row" style="margin-top:7px">
        		<div class="col-12">
        			<input type="text" hidden name="method" value="insert">
        			<input type="submit" value="เพิ่มข้อมูล" class="btn btn-primary">
        		</div>
        	</div>
    	</div>
	</div>		
</form>

</div>
<?php 

	$url = "role-index.php";
	$sec = 0;
	if(isset($_POST['method'])){	
		if($_POST['method'] == "insert"){
			$insert = $sql->insert("tb_role","name","'".$_POST['name']."'");
			if($insert){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		if($_POST['method'] == "update"){
			// echo "<script>alert('แก้ไข')</script>";
			$name = $_POST['name'];
			$update = $sql->update("tb_role","name = '$name'","id=".$_POST['id']."");
			if($update){
				echo "<script>alert('สำเร็จ')</script>";	
			}else{
				echo "<script>alert('ไม่สำเร็จ')</script>";
			}
		}
		$helper->redirect($sec,$url);
	}
	if(isset($_GET['id'])){
		$delete = $sql->delete("tb_role","id=".$_GET['id']."");
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
	$("#btn_search").click(function(){
		txt = $("#txt_search").val()
		window.location.replace("role-index.php?txt_search="+txt)
	})
</script>