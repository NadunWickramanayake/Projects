<?php
if (isset($_SESSION['userid']))
{
echo "<p style='float: right'><i><b>Account: ".$_SESSION['fname']." ".$_SESSION['sname']." |"." User Type: ".$_SESSION['usertype']."</b></i></p>";
}
?>
