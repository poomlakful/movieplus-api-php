<?php
require_once(ROOT_PATH."/core/Rest.php");
require_once(ROOT_PATH."/core/Connect.php");
require_once(ROOT_PATH."/model/Showtime.php");

Class ShowtimeHandler extends Rest {
	public function find_all() {
		//hander here
	}

	public function find_by_cinema_id($id) {
		$showtime_list = array();
		$conn = new Connect();
		$sql = "SELECT * FROM theatre
			INNER JOIN cinema ON theatre.cid = cinema.cid 
			INNER JOIN showtime ON showtime.tid = theatre.tid 
			INNER JOIN movie ON movie.mid = showtime.mid
			WHERE theatre.cid = ".$id;
		$result = $conn->query($sql);		

		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		        //echo "id = ".$row["mid"]." : name = ".$row["mname"];
		        $item = new Showtime($row["shtid"], $row["tname"], $row["cid"], $row["mid"], $row["mname"], $row["poster"], $row["mtime"], $row["director"], $row["language"]);
		        array_push($showtime_list,$item);
		    }
		}
		$conn->close();
		
		$this->show($showtime_list);
	}
}
?>