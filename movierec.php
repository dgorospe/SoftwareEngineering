<?php # movierec.php
include ('includes/session.php');
$page_title = 'Movie Recommendation';

include ('includes/header.html');
require_once ('/home/fses17g6/mysqli_connect.php');

//submitting a post will require user to be loggged in--accomplished by use of session
// This page shows the parent post in a forum with the post title, posted by, and date posted.
// clicking on the parent post will redirect users to the post with the body and replies	

?>

<h2>Movie Recommendation Forum</h2>
<br/>

<div class="panel panel-default" >
<div class="panel-heading"><b>Submit A New Post</b></div>
<div class="panel-body">
<form method="post">
  <div class="form-group">
  	
    <label for="subject">Title:</label>
 <input type="normal" class="form-control" autofocus required name="subject" maxlength="30" value="<?php if (isset($_POST['subject'])) echo $_POST['subject']; ?>" />
  </div>
  <div class="form-group">
  	
  <label for="comment">Comment:</label>
  <textarea type="normal" class="form-control" rows="5" required id="comment" name="body" value="<?php if (isset($_POST['body'])) echo $_POST['body']; ?>"></textarea>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
      <input type="hidden" name="submitted" value="TRUE" />
</form>	
</div>
</div>

<?php 

// Make the query to insert the post into the database from the html form
if (isset($_POST['submitted'])){

	$subject = $_POST['subject'];
	$body = $_POST['body'];
	$user = $_SESSION['user_id'];
	$cat = '2';
	
	$q = "INSERT INTO Post (body, subject, postedDate, user_id, categoryID) VALUES 
	('$body', '$subject', NOW(), '$user', '$cat')";
	$r = @mysqli_query ($dbc, $q); // Run the query.
	
	if ($r) { // If it ran OK.
		
		// Print a message:
		echo '<h1>Thank you!</h1>
        <p>Your post has been submitted!</p><p><br /></p>';
		
	} else { // If it did not run OK.
		
		// Public message:
		echo '
                <p class="error">You have to be logged in to submit a post. 
                Please <a href="login.php"><b><u>log in</u></b></a> </p>';
		
		// Debugging message use for coding purpose, comment out before implementing
		//echo '<p>' . mysqli_error($dbc) . '<br /><br />Query: ' . $q . '</p>';
		
	} // End of if ($r) IF.	
} 
?>


<div class="container">
<?php 
// Retrieve all the messages in this forum...

// If the user is logged in and has chosen a time zone,
// use that to convert the dates and times:

if (isset ( $_SESSION ['user_id'] )) {
	$first = "CONVERT_TZ(p.posted_on, 'UTC', '{$_SESSION['user_id']}')";
	$last = "CONVERT_TZ(p.posted_on, 'UTC', '{$_SESSION['user_id']}')";
} else {
	$first = 'p.posted_on';
	$last = 'p.posted_on';
}


$q="SELECT 
	CONCAT(first_name, ' ', last_name) AS name,  subject, body, postedDate, postID, categoryID From Post, users 
        WHERE categoryID =2 AND Post.user_id=users.user_id order by postedDate DESC  ";			
$r = mysqli_query ( $dbc, $q );//executes the query


if (mysqli_num_rows ( $r ) > 0) {
	
	// Create a table to output the posts:
	echo '<table class="table table-hover" width="100%" border="0" cellspacing="2" cellpadding="2" align="center action="post">
		<tr>
			<td align="left" width="20%"><b>Subject</b>:</td>
			<td align="left" width="10%"><b>Posted By</b>:</td>
			<td align="center" width="20%"><b>Posted On</b>:</td>
		</tr>';
	
	// Fetch each thread:
	while ( $row = mysqli_fetch_array ( $r, MYSQLI_ASSOC ) ) {
		
		echo '<tr>
			<td align="left"><a href="read.php?postID=' . $row['postID'] . '">' . $row['subject'] . '</a> </td>
			<td align="left" width="10%">' . $row ['name'] . '</td>
			<td align="center" width="20%">' . $row ['postedDate'] . '</td>



			</tr>';
	}
	
	echo '</table>'; // Complete the table.
} else {
	echo '<p>There are currently no messages in this forum.</p>';
}

?>

</div>
<!-- end page specific content -->

<?php
// Include the HTML footer file:
include ('includes/footer.html');
?>
