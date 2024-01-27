<?php

session_start();
include("db.php");
$pagename="clear smart basket"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
include ("detectlogin.php");
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page
unset($_SESSION['basket']);

echo "<P>Your basket has been cleared!";
include ("footfile.html");
echo "</body>";
?>
