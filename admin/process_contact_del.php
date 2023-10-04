<?php

	session_start();
	
	include("../includes/connection.php");

	$q="delete from contact where c_id =".$_GET['id'];

	$query = $conn->query($q);

	header("location:contact_view.php");

?>