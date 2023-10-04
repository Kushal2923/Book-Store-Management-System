<?php

	session_start();
	
	include("../includes/connection.php");

	$q="delete from book where b_id =".$_GET['id'];

	$query = $conn->query($q);

	header("location:category_view.php");

?>