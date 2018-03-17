<?php 
include ('includes/session.php');
include ('includes/header.html');
$page_title = 'Movie Facts';

require_once ('/home/fses17g6/mysqli_connect.php');

require_once ('/home/fses17g6/mysqli_connect.php'); // Connect to the db.
$movie_id =  $_GET['movie_id'];


//Make the query

$f = "SELECT * FROM movie_facts WHERE movie_id=$movie_id";		

$m = @mysqli_query ($dbc, $f); // Run the query.

while ($row = mysqli_fetch_array($m, MYSQLI_ASSOC)) {
	
		echo '<h2>'. $row['movie_title'] . '</h1>'.'<br>';
		echo '<img src='.$row['image'].' style="width:250px;height:350px;" align="right">';
		echo '<p style="font-size:14px">'.'<b>'.'Year of release: '.'</b>' . $row['year_of_release'].'</p>'.'<br>';
		echo '<p style="font-size:14px">'. '<b>'.'Box Office: $'.'</b>'.$row['total_gross'].'</p>'.'<br>';
		echo '<p style="font-size:14px">'. '<b>'.'Genre: '.'</b>'.$row['genre'].'</p>'.'<br>';
		echo '<p style="font-size:14px">'.'<b>'.'Main Actor: '.'</b>'. $row['main_actor'].'</p>'.'<br>';
		echo '<p style="font-size:14px">'.'<b>'.'Number of awards: '.'</b>'.$row['num_awards'].'</p>'.'<br>';
		echo '<p style="font-size:14px">'.'<b>'.'Current user rating: '.'</b>'.$row['user_rating'].'%'.'</p>'.'<br>';
		echo '<p style="font-size:14px">'.'<b>'.'Description: '.'</b>'.$row['description'].'</p>'.'<br>';
	}

  

mysqli_close($dbc); // Close the database connection.

include ('./includes/footer.html')


?>






