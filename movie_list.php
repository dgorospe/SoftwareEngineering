<?php 

include ('includes/session.php');
$page_title = 'Movie List';

include ('includes/header.html');
require_once ('/home/fses17g6/mysqli_connect.php');




$sort = $_POST['sort'];

if ($sort!=null)
{
	require_once ('/home/fses17g6/mysqli_connect.php'); // Connect to the db.
	
	if($sort == 1)
	{
		$s = "SELECT * FROM movie_facts ORDER BY movie_title";
	}
	elseif($sort==2)
	{
		$s = "SELECT* FROM movie_facts ORDER BY num_awards DESC";
	}
	elseif($sort==3)
	{
		$s = "SELECT * FROM movie_facts ORDER BY year_of_release DESC";
	}
	elseif($sort ==4)
	{
		$s = "SELECT * FROM movie_facts ORDER BY user_rating DESC";
	}
	else{
		$s = "SELECT * FROM movie_facts";
	}
	$rq = @mysqli_query ($dbc, $s); // Run the query.
	
	// Count the number of returned rows:
$num = mysqli_num_rows($rq);

if ($num > 0) { // If it ran OK, display the records.

	// Print how many users there are:
	echo "<p>MovieGo! currently has $num registered movies</p> Sort By: <form action='movie_list.php' method='post'>
															<select name='sort'>
															<option></option>
															<option value='1'> Alphabetical </option>
															<option value='2'> Number of Awards </option>
															<option value='3'> Year of Release </option>
															<option value='4'> Rating </option>
															</select>
															<input type='submit'>
															</form> </p>";
	// Table header.
	echo '<table align="center" cellspacing="3" cellpadding="3" width="75%">
	<tr><td align="left"><b>Movies</b></td><td align="left"><b>Year of Release</b></td>
	<td align="left"><b>Rating</b></td><td align="left"><b>Number of Rewards</b></td></tr>';
	
	
	// Fetch and print all the records:
	while ($row = mysqli_fetch_array($rq, MYSQLI_ASSOC)) {
		echo '<tr><td align="left"><a href="movie_facts .php?movie_id=' . $row['movie_id']  . ' ">' . $row['movie_title'] .'</a> </td>
		<td align="left">' . $row['year_of_release'] . '</td><td align="left">' . $row['user_rating'] .'%'. '</td>
		<td align="left">' . $row['num_awards'] . '</td></tr>
		';
		
	}

	echo '</table>'; // Close the table.
	
	mysqli_free_result ($rq); // Free up the resources.	

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered movies.</p>';

}


}
else{

require_once ('/home/fses17g6/mysqli_connect.php'); // Connect to the db.
	
$q = "SELECT * FROM movie_facts";

//echo '<h2>Movie Titles</h2>';



$r = @mysqli_query ($dbc, $q); // Run the query.

// Count the number of returned rows:
$num = mysqli_num_rows($r);

if ($num > 0) { // If it ran OK, display the records.

	// Print how many users there are:
	echo "<p>MovieGo! currently has $num registered movies</p> Sort By: <form action='movie_list.php' method='post'>
															<select name='sort'>
															<option></option>
															<option value='1'> Alphabetical </option>
															<option value='2'> Number of Awards </option>
															<option value='3'> Year of Release </option>
															<option value='4'> Rating </option>
															</select>
															<input type='submit'>
															</form> </p>";
	// Table header.
	echo '<table align="center" cellspacing="3" cellpadding="3" width="75%">
	<tr><td align="left"><b>Movies</b></td><td align="left"><b>Year of Release</b></td>
	<td align="left"><b>Rating</b></td><td align="left"><b>Number of Rewards</b></td></tr>';
	
	
	// Fetch and print all the records:
	while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
		echo '<tr><td align="left"><a href="movie_facts .php?movie_id=' . $row['movie_id']  . ' ">' . $row['movie_title'] .'</a> </td>
		<td align="left">' . $row['year_of_release'] . '</td><td align="left">' . $row['user_rating'] .'%'. '</td>
		<td align="left">' . $row['num_awards'] . '</td></tr>
		';
	}

	echo '</table>'; // Close the table.
	
	mysqli_free_result ($r); // Free up the resources.	

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered movies.</p>';

}


}
mysqli_close($dbc); // Close the database connection.


include ('./includes/footer.html');

?>

