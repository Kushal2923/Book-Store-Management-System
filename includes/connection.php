<?php
	$conn = new mysqli("localhost", "root", '', "bms");

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>