<?php # Script 3.4 - index.php
include ('includes/session.php');

$page_title = 'Welcome to this Site!';
include ('./includes/header.html');
?>
<div class="page-header">
    <h1>Welcome to MovieGo!</h1>
</div>
<div class="well">
    <p> Here you may find a list of movies which allows a user to see additional
	information such as year of release,box office sales, main actor, genre, and etc. The site will also allow the user to 
	sort a movie list for their convenience. The user will also be allowed to rate a movie title they select and it will 
	reflect on the Movie Facts page. Additonal funtionality includes users having discussion forums that allow them to talk to 
	other users about their favorite movies. Movie recommendations may also be made from the discussion board menu. 
	</p>
	<p><b>*Some functions may require a user log in. This site is for educational purposes only. MovieGo! does not own any movie
	titles,names, or characters used in this webapp.*</b></p>
</div>
<?php
include ('./includes/footer.html');
?>  