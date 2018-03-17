-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2018 at 03:15 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fses17g6`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`categoryID`, `name`, `description`) VALUES
(1, 'QA', 'Q&A Discussion Board'),
(2, 'Movie Recommendations', 'Movie Recommendations Discussion Board');

-- --------------------------------------------------------

--
-- Table structure for table `movie_facts`
--

CREATE TABLE `movie_facts` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `year_of_release` int(11) NOT NULL,
  `total_gross` bigint(20) NOT NULL,
  `genre` text NOT NULL,
  `main_actor` varchar(100) NOT NULL,
  `num_awards` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_facts`
--

INSERT INTO `movie_facts` (`movie_id`, `movie_title`, `year_of_release`, `total_gross`, `genre`, `main_actor`, `num_awards`, `user_rating`, `rate_id`, `description`, `image`) VALUES
(1, 'Iron Man', 2008, 318000000, 'Action', 'Robert Downey Jr.', 8, 89, 1, 'A billionaire industrialist and genius inventor, Tony Stark (Robert Downey Jr.), is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.', 'images/ironman.jpg'),
(2, 'Captain America ', 2011, 623000000, 'Action/Super Hero', 'Cris Evans', 12, 82, 2, 'It is 1941 and the world is in the throes of war. Steve Rogers (Chris Evans) wants to do his part and join America\'s armed forces, but the military rejects him because of his small stature. Finally, Steve gets his chance when he is accepted into an experimental program that turns him into a supersoldier called Captain America. Joining forces with Bucky Barnes (Sebastian Stan) and Peggy Carter (Hayley Atwell), Captain America leads the fight against the Nazi-backed HYDRA organization.', 'images/captainamerica.jpg'),
(3, 'Batman V Superman', 2016, 872000000, 'Action/Drama', 'Ben Affleck', 5, 48, 3, 'It\'s been nearly two years since Superman\'s (Henry Cavill) colossal battle with Zod (Michael Shannon) devastated the city of Metropolis. The loss of life and collateral damage left many feeling angry and helpless, including crime-fighting billionaire Bruce Wayne (Ben Affleck). Convinced that Superman is now a threat to humanity, Batman embarks on a personal vendetta to end his reign on Earth, while the conniving Lex Luthor (Jesse Eisenberg) launches his own crusade against the Man of Steel.', 'images/bvs.jpg'),
(4, 'Titanic', 1997, 2187000000000, 'Romance', 'Leonardo DiCaprio ', 25, 75, 4, '"Titanic" is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the "ship of dreams" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912.', 'images/titanic.jpg'),
(5, 'The Notebook ', 2004, 115000000, 'Romance', 'Ryan Gosling ', 6, 63, 5, 'In 1940s South Carolina, mill worker Noah Calhoun (Ryan Gosling) and rich girl Allie (Rachel McAdams) are desperately in love. But her parents don\'t approve. When Noah goes off to serve in World War II, it seems to mark the end of their love affair. In the interim, Allie becomes involved with another man (James Marsden). But when Noah returns to their small town years later, on the cusp of Allie\'s marriage, it soon becomes clear that their romance is anything but over.', 'images/thenotebook.jpg'),
(6, 'Split', 2016, 274000000, 'Drama/Action', 'James McAvoy', 2, 84, 6, 'Though Kevin (James McAvoy) has evidenced 23 personalities to his trusted psychiatrist, Dr. Fletcher (Betty Buckley), there remains one still submerged who is set to materialize and dominate all of the others. Compelled to abduct three teenage girls led by the willful, observant Casey, Kevin reaches a war for survival among all of those contained within him -- as well as everyone around him -- as the walls between his compartments shatter.', 'images/split.jpg'),
(7, 'Star Wars VII', 2015, 2000000000, 'Action', 'Harrison Ford ', 10, 90, 7, 'Three decades after the destruction of the second Death Star and the Galactic Civil War, the First Order has risen from the fallen Galactic Empire and seeks to eliminate the New Republic. The Resistance, backed by the Republic and led by General Leia Organa, opposes them while searching for her brother, Luke Skywalker.', 'images/starwarsvii.jpg'),
(8, 'Avatar ', 2009, 278000000000, 'Sci-Fi/Action', 'Sam Worthington', 15, 64, 8, 'On the lush alien world of Pandora live the Na\'vi, beings who appear primitive but are highly evolved. Because the planet\'s environment is poisonous, human/Na\'vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully (Sam Worthington), a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\'vi woman (Zoe Saldana). As a bond with her grows, he is drawn into a battle for the survival of her world.', 'images/avatar.jpg'),
(9, 'Jurassic World', 2015, 1000000000, 'Sci/Fi/Action', 'Chris Pratt ', 8, 89, 9, 'Located off the coast of Costa Rica, the Jurassic World luxury resort provides a habitat for an array of genetically engineered dinosaurs, including the vicious and intelligent Indominus rex. When the massive creature escapes, it sets off a chain reaction that causes the other dinos to run amok. Now, it\'s up to a former military man and animal expert (Chris Pratt) to use his special skills to save two young brothers and the rest of the tourists from an all-out, prehistoric assault.', 'images/jw.jpg'),
(10, 'The Dark Knight', 2008, 1000000000, 'Action/Drama', 'Christian Bale', 9, 90, 10, 'With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.', 'images/tdk.jpg'),
(11, 'Rogue One(Star Wars)', 2016, 1000000000, 'Action', 'Felicity Jones', 4, 98, 11, 'Former scientist Galen Erso lives on a farm with his wife and young daughter Jyn. His peaceful existence comes crashing down when the evil Orson Krennic takes him away from his beloved family. Many years later, Galen is now the Empire\'s lead engineer for the most powerful weapon in the galaxy, the Death Star. Knowing that her father holds the key to its destruction, a vengeful Jyn joins forces with a spy and other resistance fighters to steal the space station\'s plans for the Rebel Alliance.', 'images/rogue.jpg'),
(12, 'Finding Dory ', 2016, 1000000000, 'Comedy', 'Ellen Degeneres', 6, 85, 12, 'Dory (Ellen DeGeneres) is a wide-eyed, blue tang fish who suffers from memory loss every 10 seconds or so. The one thing she can remember is that she somehow became separated from her parents as a child. With help from her friends Nemo and Marlin, Dory embarks on an epic adventure to find them. Her journey brings her to the Marine Life Institute, a conservatory that houses diverse ocean species. Dory now knows that her family reunion will only happen if she can save mom and dad from captivity.', 'images/fd.jpg'),
(13, 'Deadpool', 2016, 760000000, 'Comedy/Action', 'Ryan Reynolds ', 2, 93, 13, 'Wade Wilson (Ryan Reynolds) is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax (Ed Skrein) tortures, disfigures and transforms him into Deadpool. The rogue experiment leaves Deadpool with accelerated healing powers and a twisted sense of humor. With help from mutant allies Colossus and Negasonic Teenage Warhead (Brianna Hildebrand), Deadpool uses his new skills to hunt down the man who nearly destroyed his life.', 'images/deadpool.jpg'),
(14, 'Furious 7', 2015, 1516000000000, 'Action', 'Vin Diesel', 6, 54, 14, 'After defeating international terrorist Owen Shaw, Dominic Toretto (Vin Diesel), Brian O\'Conner (Paul Walker) and the rest of the crew have separated to return to more normal lives. However, Deckard Shaw (Jason Statham), Owen\'s older brother, is thirsty for revenge. A slick government agent offers to help Dom and company take care of Shaw in exchange for their help in rescuing a kidnapped computer hacker who has developed a powerful surveillance program.', 'images/f7.jpg'),
(15, 'Beauty and the Beast', 2017, 1000000000, 'Fantasy ', 'Emma Watson ', 1, 85, 15, 'Belle (Emma Watson), a bright, beautiful and independent young woman, is taken prisoner by a beast (Dan Stevens) in its castle. Despite her fears, she befriends the castle\'s enchanted staff and learns to look beyond the beast\'s hideous exterior, allowing her to recognize the kind heart and soul of the true prince that hides on the inside.', 'images/beauty1.jpg'),
(16, 'The Hunger Games', 2012, 100000000, 'Fantasy', 'Jennifer Lawrence', 8, 82, 16, 'In what was once North America, the Capitol of Panem maintains its hold on its 12 districts by forcing them each to select a boy and a girl, called Tributes, to compete in a nationally televised event called the Hunger Games. Every citizen must watch as the youths fight to the death until only one remains. District 12 Tribute Katniss Everdeen (Jennifer Lawrence) has little to rely on, other than her hunting skills and sharp instincts, in an arena where she must weigh survival against love.', 'images/hg.jpg'),
(17, 'Harry Potter and the Deathly Hallows', 2011, 1000000000, 'Fantasy', 'Daniel Radcliffe', 11, 80, 17, 'A clash between good and evil awaits as young Harry (Daniel Radcliffe), Ron (Rupert Grint) and Hermione (Emma Watson) prepare for a final battle against Lord Voldemort (Ralph Fiennes). Harry has grown into a steely lad on a mission to rid the world of evil. The friends must search for the Horcruxes that keep the dastardly wizard immortal. Harry and Voldemort meet at Hogwarts Castle for an epic showdown where the forces of darkness may finally meet their match.', 'images/hp7.jpg'),
(18, 'Spiderman ', 2002, 821000000, 'Fantasy', 'Tobey Maguire', 4, 74, 18, '"Spider-Man" centers on student Peter Parker (Tobey Maguire) who, after being bitten by a genetically-altered spider, gains superhuman strength and the spider-like ability to cling to any surface. He vows to use his abilities to fight crime, coming to understand the words of his beloved Uncle Ben: "With great power comes great responsibility."', 'images/spiderman.jpg'),
(19, 'The Avengers', 2012, 2000000000, 'Action/Super Hero', 'Robert Downey Jr. / Chris Evans', 3, 82, 19, 'When Thor\'s evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury\'s "dream team" are Iron Man (Robert Downey Jr.), Captain America (Chris Evans), the Hulk (Mark Ruffalo), Thor (Chris Hemsworth), the Black Widow (Scarlett Johansson) and Hawkeye (Jeremy Renner).', 'images/theavengers.jpg'),
(20, 'X-Men Days of Future Past', 2014, 747000000, 'Thriller', 'Hugh Jackman', 5, 88, 20, 'Convinced that mutants pose a threat to humanity, Dr. Bolivar Trask (Peter Dinklage) develops the Sentinels, enormous robotic weapons that can detect a mutant gene and zero in on that person. In the 21st century, the Sentinels have evolved into highly efficient killing machines. With mutants now facing extinction, Wolverine (Hugh Jackman) volunteers to go back in time and rally the X-Men of the past to help change a pivotal moment in history and thereby save their future.', 'images/xmen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `postID` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `postedDate` datetime NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`postID`, `subject`, `body`, `user_id`, `postedDate`, `categoryID`) VALUES
(1, 'Test Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sagittis, dui sit amet efficitur lacinia, est lacus faucibus massa, nec tincidunt massa mi convallis dui. Pellentesque et odio sit amet lectus suscipit suscipit sit amet et nibh. Vestibulum imperdiet ullamcorper mauris. Donec magna erat, vestibulum et dictum a, interdum a arcu. Phasellus dictum ut ante sed pharetra. Pellentesque et nisi ut justo placerat finibus. Donec ut ultricies enim. Nullam a lectus augue. Quisque commodo orci dignissim gravida accumsan. Nam vehicula urna eu augue commodo dignissim. Nam ullamcorper dignissim nisl at fermentum.\r\n\r\nSed vel quam maximus, convallis urna vel, rutrum libero. Nunc pellentesque auctor blandit. Nam pharetra enim eget ligula fringilla, ut commodo metus scelerisque. Morbi feugiat sapien non ex maximus molestie. Quisque facilisis imperdiet lacinia. Proin iaculis dui sit amet augue commodo, ac egestas est convallis. Aliquam placerat imperdiet aliquam.', 8, '2017-04-11 00:00:00', 2),
(2, 'This is a test thread', 'This is a test, some text goes in here', 7, '2017-04-12 00:00:00', 2),
(3, 'testsubject1', 'testbody1', 7, '2017-03-19 00:00:00', 1),
(4, 'testsubject2', 'testbody2', 8, '2017-03-20 00:00:00', 1),
(5, 'testsubject3', 'testbody3', 19, '2017-03-21 00:00:00', 1),
(6, 'testsubject4', 'testbody4', 34, '2017-03-22 00:00:00', 1),
(7, 'testsubject5', 'testbody5', 35, '2017-03-23 00:00:00', 1),
(8, 'testsubject6', 'testbody6', 7, '2017-03-24 00:00:00', 1),
(9, 'testsubject7', 'testbody7', 8, '2017-03-25 00:00:00', 1),
(10, 'testsubject8', 'testbody8', 19, '2017-03-26 00:00:00', 1),
(11, 'testsubject9', 'testbody9', 34, '2017-03-27 00:00:00', 1),
(12, 'testsubject10', 'testbody10', 35, '2017-03-28 00:00:00', 1),
(13, 'testsubject11', 'testbody11', 7, '2017-03-29 00:00:00', 1),
(14, 'testsubject12', 'testbody12', 8, '2017-03-30 00:00:00', 1),
(26, 'PostTest12', 'postestsubject12', 8, '2017-04-29 00:00:00', 2),
(27, 'PostTest13', 'postestsubject13', 19, '2017-04-29 00:00:00', 2),
(28, 'PostTest14', 'postestsubject14', 34, '2017-04-29 00:00:00', 2),
(29, 'PostTest15', 'postestsubject15', 35, '2017-04-29 00:00:00', 2),
(30, 'subjectblah', 'bodyblah', 8, '2017-05-01 00:00:00', 2),
(38, 'This is my title', 'This is my subject', 34, '2017-05-01 00:00:00', 2),
(39, 'work', 'working now', 34, '2017-05-01 00:00:00', 2),
(40, 'work', 'working now', 34, '2017-05-01 00:00:00', 2),
(41, 'Testing again', 'oh my god this sucks', 34, '2017-05-01 00:00:00', 2),
(42, 'does this work', 'let us see', 34, '2017-05-01 00:00:00', 2),
(57, 'sgg', 'sgdsgdg', 34, '2017-05-01 00:00:00', 2),
(58, 'sgg', 'sgdsgdg', 34, '2017-05-01 00:00:00', 2),
(59, 'This is insane', 'oh my god!!!!!!!!!!', 34, '2017-05-02 01:34:09', 2),
(60, 'testingpost', 'testing post', 34, '2017-05-02 01:52:01', 2),
(61, 'testingpost', 'testing post', 34, '2017-05-02 01:52:17', 2),
(65, 'last test to add', 'almost done', 34, '2017-05-02 01:57:56', 2),
(66, 'another test', 'never ending test', 34, '2017-05-02 01:58:32', 2),
(68, 'fsfagasf', 'sdsgdagsdg', 34, '2017-05-02 02:05:25', 2),
(70, 'Testing QA post', 'testttttttttttttttttttttttttttttttttttttttt', 34, '2017-05-02 02:15:09', 1),
(74, 'Dgg', 'Cat', 34, '2017-05-02 05:16:27', 1),
(76, 'does it work?', 'hope it does:)', 37, '2017-05-02 10:45:44', 1),
(77, 'the notebook', 'its romantic', 37, '2017-05-02 10:46:41', 2),
(78, '!!!', 'test 2 ', 37, '2017-05-02 10:54:30', 1),
(82, 'Testing Post to QA', 'teststtststttsttts', 34, '2017-05-03 14:01:18', 1),
(84, 'Test Q and A', 'This is my comment', 38, '2017-05-03 19:06:20', 1),
(86, 'Zombie Movies', 'Looking for a new zombie movie. Any thoughts?', 38, '2017-05-03 23:57:35', 2),
(88, 'Hello Amy', 'Hi Amy', 34, '2017-05-04 13:45:23', 2),
(89, 'hello', 'jknglaskjngksjagn', 37, '2017-10-04 14:46:59', 2),
(90, 'Testing', 'Testing comment', 38, '2017-10-16 16:59:13', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rate_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `non_average` int(11) NOT NULL,
  `num_of_ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rate_id`, `user_rating`, `movie_id`, `non_average`, `num_of_ratings`) VALUES
(1, 89, 1, 1244, 14),
(2, 82, 2, 989, 12),
(3, 48, 3, 1333, 28),
(4, 75, 4, 75, 1),
(5, 63, 5, 189, 3),
(6, 84, 6, 84, 1),
(7, 90, 7, 90, 1),
(8, 64, 8, 1347, 21),
(9, 89, 9, 89, 1),
(10, 90, 10, 179, 2),
(11, 98, 11, 195, 2),
(12, 85, 12, 85, 1),
(13, 93, 13, 185, 2),
(14, 54, 14, 215, 4),
(15, 85, 15, 170, 2),
(16, 82, 16, 82, 1),
(17, 80, 17, 80, 1),
(18, 74, 18, 223, 3),
(19, 82, 19, 246, 3),
(20, 88, 20, 265, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Reply`
--

CREATE TABLE `Reply` (
  `replyID` int(10) UNSIGNED NOT NULL,
  `comment` varchar(200) NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `postedDate` datetime NOT NULL,
  `categoryID` int(11) NOT NULL,
  `postID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reply`
--

INSERT INTO `Reply` (`replyID`, `comment`, `user_id`, `postedDate`, `categoryID`, `postID`) VALUES
(1, 'This is a comment to my post', 7, '2017-04-12 00:00:00', 2, 2),
(2, 'This is comment 2 to my post', 7, '2017-04-12 00:00:00', 2, 2),
(3, 'testcomment2', 7, '0000-00-00 00:00:00', 2, 1),
(4, 'testcomment3', 7, '0000-00-00 00:00:00', 1, 2),
(5, 'testcomment4', 7, '0000-00-00 00:00:00', 1, 3),
(6, 'testcomment5', 7, '0000-00-00 00:00:00', 1, 1),
(7, 'testcomment6', 7, '0000-00-00 00:00:00', 1, 1),
(8, 'testcomment7', 7, '0000-00-00 00:00:00', 1, 1),
(9, 'testcomment8', 7, '0000-00-00 00:00:00', 1, 2),
(10, 'testcomment9', 7, '0000-00-00 00:00:00', 1, 3),
(11, 'testcomment10', 7, '0000-00-00 00:00:00', 1, 4),
(12, 'testcomment11', 7, '0000-00-00 00:00:00', 1, 5),
(13, 'testcomment12', 7, '0000-00-00 00:00:00', 1, 7),
(14, 'testcomment13', 7, '0000-00-00 00:00:00', 1, 8),
(17, 'response to steve', 7, '2017-04-19 00:00:00', 2, 30),
(18, 'response to first post', 35, '2017-05-01 00:00:00', 2, 1),
(24, 'testing testing never ending testing', 34, '2017-05-02 01:42:51', 2, 1),
(26, 'testing if it will add twice upon refresh', 34, '2017-05-02 01:50:57', 2, 1),
(27, 'testing if it will add twice upon refresh', 34, '2017-05-02 01:51:15', 2, 1),
(28, 'testing if it will add twice upon refresh', 34, '2017-05-02 01:51:35', 2, 1),
(29, 'reply to testsubject12 on q&a', 34, '2017-05-02 02:12:01', 1, 14),
(30, 'will this post', 34, '2017-05-02 02:15:32', 1, 70),
(31, 'oh my god it worked', 34, '2017-05-02 02:15:54', 1, 70),
(37, 'yes!', 37, '2017-05-02 10:45:57', 1, 76),
(38, 'yes pt2.', 37, '2017-05-02 10:53:59', 1, 76),
(39, 'yes pt2.', 37, '2017-05-02 10:54:08', 1, 76),
(46, 'Testing reply to Post on first Post with name and date', 34, '2017-05-03 13:44:55', 2, 1),
(48, 'Testing reply to Post on first Post with name and date', 34, '2017-05-03 13:48:47', 2, 1),
(49, 'testing reply to mr', 34, '2017-05-03 14:04:02', 2, 77),
(50, 'testing reply to qa without sessions', 34, '2017-05-03 14:04:34', 1, 82),
(51, 'testing reply to qa without sessions', 34, '2017-05-03 14:04:39', 1, 82),
(54, 'This is a cool movie', 38, '2017-05-03 19:06:49', 2, 77),
(55, 'Hi Amy, Im Divina!', 34, '2017-05-04 13:45:47', 2, 88),
(56, 'Hello Gus', 34, '2017-05-04 14:45:36', 2, 1),
(57, 'Reply t Test Q and A', 38, '2017-10-16 17:02:40', 1, 84),
(58, 'I loved World War Z, and Day of the Dead.', 38, '2017-10-16 17:04:26', 2, 86);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` char(40) NOT NULL,
  `registration_date` datetime NOT NULL,
  `user_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `pass`, `registration_date`, `user_type_id`) VALUES
(7, 'Divina', 'Gorospe', 'dcgorosp@neiu.edu', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2017-04-11 21:24:28', 3),
(8, 'Steve', 'Collins', 'customer@customer', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', '2017-04-11 21:42:31', 1),
(19, 'test', 'test', 'test@yahoo.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', '2017-04-12 03:08:15', 3),
(34, 'Jane', 'Doe', 'jdoe@neiu.edu', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2017-04-17 16:54:46', 3),
(35, 'john', 'doe', 'johndoe@neiu.edu', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2017-04-17 18:06:01', 3),
(36, 'Enrique', 'Paredes', 'eparedes@neiu.edu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2017-05-01 18:00:25', 1),
(37, 'New', 'Admin', 'admin@admin.com', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', '2017-05-01 23:40:37', 3),
(38, 'Customer', 'Customer', 'c@c.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2017-05-02 02:28:22', 1),
(39, 'sad', 'sdaa', 'werwer@osadif.com', 'acee3609061b87f7a4294fc3fe96179819cf46be', '2017-05-03 22:22:02', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `type_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `type_name`, `type_description`) VALUES
(1, 'Customer', 'Customer Description'),
(2, 'Agent', 'Agent Description'),
(3, 'Administrator', 'Administrator Description');

-- --------------------------------------------------------

--
-- Table structure for table `Validate`
--

CREATE TABLE `Validate` (
  `validateID` int(10) UNSIGNED NOT NULL,
  `notes` int(11) NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `validateDate` datetime NOT NULL,
  `categoryID` int(11) NOT NULL,
  `postID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `movie_facts`
--
ALTER TABLE `movie_facts`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `rate_id` (`rate_id`),
  ADD KEY `user_rating` (`user_rating`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `rate_id` (`rate_id`),
  ADD KEY `rate_id_2` (`rate_id`),
  ADD KEY `rate_id_3` (`rate_id`),
  ADD KEY `user_rating` (`user_rating`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `Reply`
--
ALTER TABLE `Reply`
  ADD PRIMARY KEY (`replyID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `pwd` (`pass`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `Validate`
--
ALTER TABLE `Validate`
  ADD PRIMARY KEY (`validateID`),
  ADD KEY `user_id` (`user_id`,`categoryID`,`postID`),
  ADD KEY `postID` (`postID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `movie_facts`
--
ALTER TABLE `movie_facts`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Post`
--
ALTER TABLE `Post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `Reply`
--
ALTER TABLE `Reply`
  MODIFY `replyID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Validate`
--
ALTER TABLE `Validate`
  MODIFY `validateID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_facts`
--
ALTER TABLE `movie_facts`
  ADD CONSTRAINT `movie_facts_ibfk_1` FOREIGN KEY (`user_rating`) REFERENCES `rating` (`user_rating`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_facts_ibfk_2` FOREIGN KEY (`rate_id`) REFERENCES `rating` (`rate_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `Categories` (`categoryID`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie_facts` (`movie_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Reply`
--
ALTER TABLE `Reply`
  ADD CONSTRAINT `Reply_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `Reply_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `Categories` (`categoryID`),
  ADD CONSTRAINT `Reply_ibfk_3` FOREIGN KEY (`postID`) REFERENCES `Post` (`postID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`);

--
-- Constraints for table `Validate`
--
ALTER TABLE `Validate`
  ADD CONSTRAINT `Validate_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `Categories` (`categoryID`),
  ADD CONSTRAINT `Validate_ibfk_2` FOREIGN KEY (`postID`) REFERENCES `Post` (`postID`),
  ADD CONSTRAINT `Validate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
