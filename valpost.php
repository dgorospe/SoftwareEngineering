<?php # Script 8.6 - view_users.php #2
include ('includes/session.php');

require_once ('/home/fses17g6/mysqli_connect.php');
$page_title = 'Validate Post';
include ('includes/header.html');


if (isset($_SESSION['user_id'] )) {
				
if ($is_admin) {

  // Page header:
echo '<h1>Submitted Posts</h1>';


// This script retrieves all the records from the post and reply table.		
// Make the query:
$q = "SELECT * from Post";		

$r = @\mysqli_query($dbc, $q); // Run the query.

// Count the number of returned rows:
$num = mysqli_num_rows($r);

$q="SELECT 
	CONCAT(first_name, ' ', last_name) AS name,  subject, body, postedDate, postID, categoryID From Post, users 
        WHERE categoryID =2 AND Post.user_id=users.user_id order by postedDate DESC  ";			
$r = mysqli_query ( $dbc, $q );//executes the query


if (mysqli_num_rows ( $r ) > 0) {
	echo'<div class="panel panel-success">';
	// Create a table to output the posts:
	echo '<table class="table table-hover" width="100%" border="0" cellspacing="2" cellpadding="2" align="center action="post">
		<tr>
			<td align="left" width="20%"><b>Subject</b>:</td>
                        <td align="left" width="20%"><b>body</b>:</td>
			<td align="left" width="20%"><b>Posted By</b>:</td>
			<td align="left" width="20%"><b>Posted On</b>:</td>
                        <td align="left" width="10%"><b>Reject</b>:</td>
                        <td align="left" width="10%"><b>Send Email</b>:</td>
		</tr>';
	
	// Fetch each thread:
	while ( $row = mysqli_fetch_array ( $r, MYSQLI_ASSOC ) ) {
		echo'<form action="" method="post">';
		echo '<tr>
			<td align="left" width="10%">' . $row['subject'] . ' </td>
			<td align="left" width="30%">' . $row ['body'] . '</td>
			<td align="left" width="10%">' . $row ['name'] . '</td>
<td align="left" width="10%">' . $row ['postedDate'] . '</td>
    <td><button type="submit" name="deleteItem" class="btn btn-sm btn-primary" value="'.$row['id'].'" /></td>
    <td><button type="submit" name="sendEmail" class="btn btn-sm btn-primary" value="'.$row['id'].'" /></td>
			</tr>';
                echo'</form>';
                echo'</div>';
                if(isset($_POST['deleteItem']) and is_numeric($_POST['deleteItem']))
{
  // here comes your delete query: use $_POST['deleteItem'] as your id
  // $delete = $_POST['deleteItem']
  $q = "DELETE FROM Post where id = '$delete'"; 
$r = @\mysqli_query($dbc, $q); // Run the query.

}
                
	}
	
	echo '</table>'; // Complete the table.

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered users.</p>';

}  
		// Debugging message use for coding purpose, comment out before implementing
		//echo '<p>' . mysqli_error($dbc) . '<br /><br />Query: ' . $q . '</p>';
}

else{
    echo'<h1>You are not authorized to view this page. </h1>';
}	}		
?>



<?php

include ('includes/footer.html');
?>
