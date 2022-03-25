<?php 	
	class helper{
		public function redirect($delay , $destination){
			echo "<META HTTP-EQUIV='Refresh' CONTENT='$delay;URL= $destination'>";
			 // header( "refresh:".$delay."; url=/".$destination );
			 exit(0);
		}
	}
?>