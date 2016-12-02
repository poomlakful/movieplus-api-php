<?php
require_once("handler/MovieHandler.php");
require_once("handler/ShowtimeHandler.php");
		
$view = "";
if(isset($_GET["view"])) {
	$view = $_GET["view"];
}
/*
controls the RESTful services
URL mapping
*/
switch($view){

	case "movieall":
		$movie_handler = new MovieHandler();
		$movie_handler->find_all();
		break;

	case "moviesingle":
		$movie_handler = new MovieHandler();
		$movie_handler->find_by_id($_GET["id"]);
		break;
		
	case "showtime":
		$showtime_handler = new ShowtimeHandler();
		$showtime_handler->find_by_cinema_id($_GET["id"]);
		break;

	case "" :
		//404 - not found;
		break;
}
?>
