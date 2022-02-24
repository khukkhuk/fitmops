<?php require("top.php"); ?>
<div class="content">
	
	<table style="width: 80%; ">
		<tr>
			<th colspan="6"> <center>รวมรายการคำร้อง</center></th>

		</tr>
		<tr>
			<td width="40">ลำดับ</td>
			<td width="60">วันเดือนปี</td>
			<td width="60">เลขที่คำร้อง</td>
			<td width="100">รายการ</td>
			<td width="60">สถานะ</td>
			<td width="50">เพิ่มเติม</td>
		</tr>
		<?php 	
			$color = "2168DF";
			$color = "72CC41";
			$color = "FF1C00"
		?>
		<tr>
			<td>1</td>
			<td>10/10/2555</td>
			<td>231456</td>
			<td>ทดสอบข้อความ</td>
			<!-- <td><span class="dot"></span></td> -->
			<td><span class="btn" style="background-color:#72CC41">คำร้องสำเร็จ</span></td>
			<td><button class="btn" style="background-color:#0D6CBB">
<i class="Small material-icons">find_in_page</i></button> <button class="btn" style="background-color:#D30000"><i class="Small material-icons">delete</i></button> </td>
		</tr>
	</table>

</div>
<?php require("bottom.php"); ?>