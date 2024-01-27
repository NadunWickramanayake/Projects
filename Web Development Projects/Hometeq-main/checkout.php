<?php
session_start();
include("db.php");
mysqli_report(MYSQLI_REPORT_OFF); // deactivate the automatic error messaging

$pagename="checkout"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page

//store the current date and time in a local variable $currentdatetime
$currentdatetime = date('Y-m-d H:i:s');
//write a SQL query to insert a new record in the Orders table to generate a new order. 
$SQL = "INSERT into Orders (userId, orderDateTime, orderStatus) 
VALUES ('".$_SESSION['userid']."','".$currentdatetime."', 'Placed')";
//if execution of the INSERT INTO SQL query to add new order is correct
if (mysqli_query($conn, $SQL) and isset($_SESSION['basket']) and count($_SESSION['basket'])>0)
{
echo "<p><b>Order successfully placed!</b></p>";
$maxSQL = "SELECT max(orderNo) as maxOrderNo, userId FROM Orders WHERE userId =".$_SESSION['userid'];
$exemaxSQL = mysqli_query($conn, $maxSQL) or die (mysqli_error($conn));
$arrayo = mysqli_fetch_array($exemaxSQL);
$orderno = $arrayo['maxOrderNo'];
echo "<p>Order No: <b>".$orderno."</b></p>";
$total = 0;
echo "<table id='checkouttable'>";
echo "<tr>";
echo "<th>Product name</th>";
echo "<th>Price</th>";
echo "<th>Quantity</th>";
echo "<th>Subtotal</th>";
echo "</tr>";
foreach($_SESSION['basket'] as $index => $value)
{
$SQLb="select prodId, prodName, prodPrice from Product WHERE prodId = ".$index;
$exeSQLb = mysqli_query($conn, $SQLb) or die (mysqli_error($conn));
$arrayb = mysqli_fetch_array($exeSQLb);
$subtotal = $value * $arrayb['prodPrice'];
$SQLol = "INSERT into Order_Line(orderNo, prodId, quantityOrdered, subTotal) 
VALUES ('".$orderno."', '".$index."','".$value."','".$subtotal."')";
$exeSQLol = mysqli_query($conn, $SQLol) or die (mysqli_error($conn));
echo "<tr>";
echo "<td>".$arrayb['prodName']."</td>";
 echo "<td>&pound".$arrayb['prodPrice']."</td>";
echo "<td>".$value."</td>";
 echo "<td>&pound".$subtotal."</td>";
echo "</tr>";
$total = $total + $subtotal;
}
echo "<tr>";
echo "<th colspan='3'>TOTAL</th>";
echo "<th>&pound".$total."</th>";
echo "</tr>";
echo "</table>";
$SQLo="UPDATE Orders 
SET orderTotal=".$total." 
WHERE orderNo=".$orderno;
$exeSQLo = mysqli_query($conn, $SQLo) or die (mysqli_error($conn));
}
else
{
echo "<p><b>Error with the placing of your order!</b></p>";
}
unset($_SESSION['basket']);


include("footfile.html"); //include head layout
echo "</body>";
?>