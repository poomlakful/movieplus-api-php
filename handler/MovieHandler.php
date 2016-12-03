<?php
require_once("/config/Rest.php"); //Not use now
require_once("/config/Connect.php");
require_once("/model/Movie.php");


Class MovieHandler extends Rest {
	public function find_all() {
		$movie_list = array();
		$conn = new Connect();
		$sql = "SELECT * FROM movie";
		$result = $conn->query($sql);		

		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		        //echo "id = ".$row["mid"]." : name = ".$row["mname"];
		        $item = new Movie($row["mid"], $row["mname"], $row["detail"], $row["poster"], $row["trailer"], $row["type"], $row["mtime"], $row["director"], $row["status"]);
		    	array_push($movie_list,$item);
		    }
		} else {
		    echo "0 results";
		}
		$conn->close();

		$this->show($movie_list);
	}

	public function find_by_id($id) {
		$movie;
		$conn = new Connect();
		$sql = "SELECT * FROM movie WHERE mid = ".$id;
		$result = $conn->query($sql);		

		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		        //echo "mid = ".$row["mid"]." : name = ".$row["mname"];
		        $movie = new Movie($row["mid"], $row["mname"], $row["detail"], $row["poster"], $row["trailer"], $row["type"], $row["mtime"], $row["director"], $row["status"]);
		    }
		} else {
		    echo "0 results";
		}
		$conn->close();

		$this->show($movie);
	}
}
?>