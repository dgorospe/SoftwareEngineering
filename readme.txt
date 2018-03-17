Login In credentials

un: admin@admin.com
pw: admin1
uType: Admin

un: c@c.com
pw: password
uType: customer


**********************************************************************************
When the user first logs in, they will be redirected to the index page which will display a welcome message. The top right menu bar will display additional navigation links to webpages depending on the user type (Admin, registered users, and non-registered users.

UsertType----Additional navigation
Admin – View Users, View Posts
registered users - 	Rate Movies
non-registered users/not logged-in - Register and Sign in


**********************************************************************************
Movie Facts - Enrique Paredes
Link:   http://cs.neiu.edu/~fses17g6/divina/CS319_Project/movie_list.php
List of functionality:
1. The page will display all the movies listed in the database.
2. Users can sort the list with the following criterion: Movies, Year of Release, Rating, and Number of Rewards. 
3. Registered users will be able to rate movies, which is not available for non-registered users. The link will appear on the navigation once the user has logged-in.  Link: http://cs.neiu.edu/~fses17g6/divina/CS319_Project/rate_title.php
4. Once they click on rate movie, a new page will load with a drop down list and a text box. The movies populated in the drop down list are in alphabetical order. The user may click a movie they wish to rate and then they may enter a numerical value between 0-100. Error checking is implemented so when numbers greater than 100 or less than 0 are entered, users will see an alert message letting them know to try entering a value again.

**********************************************************************************
Module: Discussion Board developed by Divina Gorospe
*The two categories are identical in their functionality. 

Link: http://cs.neiu.edu/~fses17g6/divina/CS319_Project/movierec.php

List of functionality:
1. All types of users can view the posts.
2. Only registered users can reply or submit a post. 
a. Users will be prompted this error: You have to be logged in to submit a post. Please log in
b. Forms validation in client side ie using “required” attribute
3. Users can click on any post and will be redirected to a page that will show the body of the post and all the replies for that post. 

Under Construction:
Link:http://cs.neiu.edu/~fses17g6/valpost.php
Post validation is not fully implemented
Admin user should be able to delete post and send email


**********************************************************************************
Design implemented by Divina
The entire website uses the same template which enforces consistency
Used CSS and bootstrap
Used PHP, HTML, MySQL
Screen Responsive


