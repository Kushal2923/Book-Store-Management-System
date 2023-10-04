<?php
	include("includes/header.php");
?>

<div id="content">
	<div class="post">
		<h2 class="title"><a href="#">Latest Books</a></h2>
			<p class="meta"></p>
			<div class="entry">

				<?php
					include("includes/connection.php");

					$sql="select * from book order by b_id desc LIMIT 0,9";
					$query = $conn->query($sql);

					while($lrow = $query->fetch_assoc())
					{
						echo '<div class="book_box">
								<a href="book_detail.php?id='.$lrow['b_id'].'">
									<img src="'.$lrow['b_img'].'">
									<h2>'.$lrow['b_nm'].'</h2>
									<p>Rs. '.$lrow['b_price'].'</p>
								</a>
							</div>';
					}
				?>
				

				<div style="clear:both;"></div>

			</div>
	</div>
</div><!-- end #content -->

<?php
	include("includes/footer.php");
?>