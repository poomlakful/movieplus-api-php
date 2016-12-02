<?php
Class Connect {

	private $msql;
	private $servername = "localhost";
	private $username = "root";
	private $password = "";
	private $dbname = "movieplus_db";

	function __construct() {
		$this->connect_db();
	}

	public function connect_db() {
		// Create connection
		$conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
		// Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		}		

		/* change character set to utf8 */
		if (!$conn->set_charset("utf8")) {
		    printf("Error loading character set utf8: %s\n", $conn->error);
		    exit();
		}
		
		$this->msql = $conn;		
	}

	public function query($sql) {
		return $this->msql->query($sql);	
	}

	public function close() {
		$this->msql->close();
	}
}
?>