
<?php # movierec.php
include ('includes/session.php');
$page_title = 'Rate Movies';

include ('includes/header.html');
require_once ('/home/fses17g6/mysqli_connect.php');

$q = "SELECT * FROM movie_facts ORDER BY movie_title";
$r = @mysqli_query ($dbc, $q); // Run the query.

$rate = $_REQUEST['rate'];
$movieId = $_POST['movies'];

$check = "<script>isNan(.$rate.)</script>";

if($rate>=0&&$rate<=100)
{
	$check=false;
}


if ($rate != null)
{
	$a ="SELECT * FROM rating WHERE movie_id=$movieId";
	$q =@mysqli_query ($dbc, $a);
	
	if ($check)
{
	
	echo "<script>alert('Invalid input! Try again!');</script>";

}
	
	else{
		
		while($row = mysqli_fetch_array($q,MYSQLI_ASSOC))
		{
			$numRatings = $row['num_of_ratings'];
			$totalRate = $row['non_average'];
			
			++$numRatings;
			
			$nonAverage = ($totalRate+$rate);
			$finalAverage = $nonAverage/$numRatings;
			$sql = "UPDATE rating SET non_average=$nonAverage,num_of_ratings=$numRatings,user_rating=$finalAverage WHERE movie_id=$movieId";
			$done =@mysqli_query ($dbc, $sql);
			
		}
		echo "<script>alert('Thank you for rating this movie');</script>";
	
	}

}


echo "<p>Select Title:</p>";
echo "<form action='rate_title.php' method='post'>";
echo "<select name='movies'>";

while($row = mysqli_fetch_array($r,MYSQLI_ASSOC))
{
    echo '<option value='.$row['movie_id'].'>'.$row['movie_title'].'</option>';
}

echo "</select>";
echo "<br/>";
echo "<br/>";
echo "<br/>";
echo "<p>Rate Title:</p>";

echo "<input name='rate' id='rate' type='text' placeholder='Number between 0-100' >";
echo "<input type='submit' >";
echo "</form>";


?>



<?php
include ('./includes/footer.html')

?>
