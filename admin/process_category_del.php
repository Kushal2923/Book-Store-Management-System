<?php

	session_start();
	
	include("../includes/connection.php");

	$q="delete from category where cat_id =".$_GET['id'];

	$query = $conn->query($q);

	header("location:category_view.php");

?>