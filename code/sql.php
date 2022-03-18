<?php 
	class sql{
		public function connect(){
			return $db = new mysqli("localhost","root","","fitm_ops");
			if ($db -> connect_errno) {
			  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
			  exit();
			}
		}
		public function select($select , $from , $where = null){
			if($where != null){
				$sql = "SELECT $select from $from WHERE $where";
			}else{
				$sql = "SELECT $select from $from";
			}
			// echo $sql;
			return $this->connect()->query($sql);
		}
		public function insert($from , $field , $val){
			$sql = "INSERT INTO $from  ($field) VALUES ($val)";	
			echo $sql;
			return $this->connect()->query($sql);
		}
		public function update($from , $val , $where){
			$sql = "UPDATE $from SET $val WHERE $where";	
			echo $sql;
			return $this->connect()->query($sql);
		}
		public function delete($from , $where ){
			$sql = "DELETE from $from WHERE $where";
			return $this->connect()->query($sql);
			echo $sql;
		}
	}
?>