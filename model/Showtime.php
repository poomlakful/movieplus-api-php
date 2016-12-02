<?php
Class Showtime {

	public $id;
	public $theatre_name;
	public $cinema_id;
	public $movie_id;
	public $movie_name;
	public $poster;
	public $time;
	public $director;
	public $language;
	public $showTime;

	function __construct($showtime_id, $showtime_theatre_name, $showtime_cinema_id, $showtime_movie_id, $showtime_movie_name, $showtime_poster, $showtime_time, $showtime_director, $showtime_language, $showtime_showTime) {
		$this->id           = $showtime_id;
		$this->theatre_name = $showtime_theatre_name;
		$this->cinema_id    = $showtime_cinema_id;
		$this->movie_id     = $showtime_movie_id;
		$this->movie_name   = $showtime_movie_name;
		$this->poster       = $showtime_poster;
		$this->time         = $showtime_time;
		$this->director     = $showtime_director;
		$this->language     = $showtime_language;
		$this->showTime     = $showtime_showTime;
	}
}
?>