<?php
require_once(ROOT_PATH."/core/Rest.php");
require_once(ROOT_PATH."/core/Connect.php");
require_once(ROOT_PATH."/model/Movie.php");

Class MovieHandler extends Rest {
	public function find_all() {
		$movie_list = array();
		$conn = new Connect();
		$sql = "SELECT * FROM movie";
		$result = $conn->query($sql);		

		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		        $item = new Movie($row["mid"], $row["mname"], $row["detail"], $row["poster"], $row["trailer"], $row["type"], $row["mtime"], $row["director"], $row["status"]);
		    	array_push($movie_list,$item);
		    }
		}
		$conn->close();

		$this->show($movie_list);
	}

	public function find_by_id($id) {
		$movie;
		$conn = new Connect();
		$sql = "SELECT TOP(1) * FROM movie WHERE mid = ".$id;
		$result = $conn->query($sql);		

		if ($result) {
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$movie = new Movie($row["mid"], $row["mname"], $row["detail"], $row["poster"], $row["trailer"], $row["type"], $row["mtime"], $row["director"], $row["status"]);
				}
				$this->show($movie);
			} else {
				$this->show_null();
			}
		} else {
			$this->show_null();
		}
		$conn->close();
	}
}
?>