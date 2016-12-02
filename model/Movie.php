<?php
Class Movie {

	public $id;
	public $name;
	public $detail;
	public $poster;
	public $trailer;
	public $type;
	public $time;
	public $director;
	public $status;

	function __construct($movie_id, $movie_name, $movie_detail, $movie_poster, $movie_trailer, $movie_type, $movie_time, $movie_director, $movie_status) {
		$this->id       = $movie_id;
		$this->name     = $movie_name;
		$this->detail   = $movie_detail;
		$this->poster   = $movie_poster;
		$this->trailer  = $movie_trailer;
		$this->type     = $movie_type;
		$this->time     = $movie_time;
		$this->director = $movie_director;
		$this->status   = $movie_status;
	}
}
?>