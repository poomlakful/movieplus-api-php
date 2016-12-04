<?php
Class Showtime {

	public $id;
	public $theatreName;
	public $cinemaId;
	public $movieID;
	public $name;
	public $poster;
	public $time;
	public $director;
	public $language;
	public $showTime;

	function __construct($showtime_id, $showtime_theatre_name, $showtime_cinema_id, $showtime_movie_id, $showtime_movie_name, $showtime_poster, $showtime_time, $showtime_director, $showtime_language) {
		$this->id           = $showtime_id;
		$this->theatreName = $showtime_theatre_name;
		$this->cinemaId    = $showtime_cinema_id;
		$this->movieID     = $showtime_movie_id;
		$this->name   = $showtime_movie_name;
		$this->poster       = $showtime_poster;
		$this->time         = $showtime_time;
		$this->director     = $showtime_director;
		$this->language     = $showtime_language;
		$this->showTime     = array("13.30", "15.00", "17.30", "20.00");
	}
}
?>