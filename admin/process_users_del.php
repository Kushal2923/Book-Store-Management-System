<?php

	session_start();
	
	include("../includes/connection.php");

	$q="delete from register where r_id =".$_GET['id'];

	$query = $conn->query($q);

	header("location:users_view.php");

?>