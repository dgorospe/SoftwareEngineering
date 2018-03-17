<?php # Script 15.5 - read.php for movie recommendation
include ('includes/session.php');
$page_title = 'Movie Recommendation';

include ('includes/header.html');
require_once ('/home/fses17g6/mysqli_connect.php');


// Check for a thread ID...
if(isset($_GET['postID'])) {
	
	$pid=$_GET['postID'];

	// Run the query:
	
	
	$q="select * from Post p, users u where postID=$pid and u.user_id=p.user_id";//this works!!!
	$r = mysqli_query ( $dbc, $q );
	
	
	echo '<div class="panel panel-success">';
	
	
	while ( $row = mysqli_fetch_array ( $r, MYSQLI_ASSOC ) )
	{

		echo'<div class="panel-heading">'.$row['subject'].'</div>';
		echo'<div class="panel-body">'.$row['body'].'</div>';
		echo'<div class="panel-footer" style="text-align:right"><em>Posted by: '.$row['first_name'].' '.$row['last_name'].'<br/>Posted on: '.$row['postedDate']. '</em></div>';
	}
	echo "</div>";
}


//$q1="Select * from Reply where Reply.postID=$pid and Reply.categoryID=2";
$q1="select * from Reply r, users u where r.postID=$pid and u.user_id=r.user_id and categoryID=2 order by postedDate desc";
$r = mysqli_query ( $dbc, $q1 );



while ( $row = mysqli_fetch_array ( $r, MYSQLI_ASSOC ) )
{
	echo '<div class="panel panel-default">';
	echo'<div class="panel-body">'.$row['comment'].'</div>';
	echo'<div class="panel-footer" style="text-align:right"><em>Posted by: '.$row['first_name'].' '.$row['last_name'].'<br/>Posted on: '.$row['postedDate']. '</em></div>';
	echo "</div>";
}


?>
<br/>
<div class="panel panel-default" style="width:50%;" >
<div class="panel-heading"><b>Reply to Post</b></div>
<div class="panel-body">
<form method="post">

  <div class="form-group">
  	
  <label for="comment">Comment:</label>
  <textarea type="normal" class="form-control" rows="5" required id="comment" name="body" value="<?php if (isset($_POST['comment'])) echo $_POST['comment']; ?>"></textarea>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
       <input type="hidden" name="submitted" value="TRUE" />
</form>	
</div>
</div>
<?php 

// Make the query:

if (isset($_POST['submitted'])){
	//$subject = mysqli_real_escape_string($dbc, trim($_POST['subject']));
	//$body = mysqli_real_escape_string($dbc, trim($_POST['body']));

	$body = $_POST['body'];
	$user = $_SESSION['user_id'];
	$cat = '2';
	$pid=$_GET['postID'];
	
	$q = "INSERT INTO Reply (comment, user_id, postedDate, categoryID, postID) VALUES
	('$body', '$user', NOW(),'$cat', '$pid')";
	$r = @mysqli_query ($dbc, $q); // Run the query.
	
	if ($r) { // If it ran OK.
		
		// Print a message:
		echo '<h1>Thank you!</h1>
        <p>Your post has been submitted!</p><p><br /></p>';
		
	} else { // If it did not run OK.
		
		// Public message:
		echo '
                <p class="error">You have to be logged in to submit a post.Please <a href="login.php"><b><u>log in</u></b></a> </p>';
		
		// Debugging message:
		//echo '<p>' . mysqli_error($dbc) . '<br /><br />Query: ' . $q . '</p>';
		
	} // End of if ($r) IF.
	mysqli_close($dbc); // Close the database connection.
	
	header('Location: '.$_SERVER['PHP_SELF'].'?success');
	exit; 
} 
	
if(ISSET($_GET['success'])){
	
	echo "<h2>Post Submitted</h2>";
	
} 


?>

<?php 

include ('includes/footer.html');
?>
