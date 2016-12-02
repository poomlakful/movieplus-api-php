<?php
require_once("/config/Rest.php");
require_once("/config/Connect.php");
require_once("/model/Movie.php");

Class MovieHandler extends Rest {
	public function find_all() {
		$movie_list = array();
		$conn = new Connect();
		$sql = "SELECT * FROM movie";
		$result = $conn->query($sql);		

		if ($result->num_rows > 0) {
		    // output data of each row
		    while($row = $result->fetch_assoc()) {
		        //echo "id = ".$row["id"]." : name = ".$row["name"];
		        $item = new Movie($row["id"], $row["name"], $row["detail"], $row["poster"], $row["trailer"], $row["type"], $row["time"], $row["director"], $row["status"]);
		    	array_push($movie_list,$item);
		    }
		} else {
		    echo "0 results";
		}

		$conn->close();

		header('Content-Type: application/json');
		echo json_encode($movie_list);
		//echo "find_movie_all";
	}

	public function find_by_id($id) {
		echo "finc_movie_by_id, id = ".$id;
	}
}
?>