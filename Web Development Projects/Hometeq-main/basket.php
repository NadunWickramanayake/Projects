<?php
session_start();
include ("db.php"); //include db.php file to connect to DB
$pagename="smart basket"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>";
//display name of the page as window title
echo "<body>";
include ("headfile.html");
include ("detectlogin.php");
//include header layout file
echo "<h4>".$pagename."</h4>";
//display name of the page on the web page
//display random text
$total = 0;
if (isset($_POST['h_prodid']))
{
	$newprodid =$_POST['h_prodid'];
	$reququantity =$_POST['p_quantity'];
	
	// echo "ID of selected Product:".$newprodid;
	// echo "Qty of selected Product:".$reququantity;
    echo "<p><b>1 Item added to the cart</b>";
	
	//create a new cell in the basket session array. Index this cell with the new product id.
//Inside the cell store the required product quantity
	$_SESSION['basket'][$newprodid]=$reququantity;
}

else
{
	echo "<p><b>1 Item has been removed from the cart</b>";
}
	echo "<table id=baskettable>";
	echo"<tr>";
	echo	"<th>Product Name</th>";
	echo	"<th>Price</th>";
	echo	"<th>Quantity</th>";
	echo	"<th>SubTotal</th>";
	echo	"<th>Remove Product</th>";
	echo"</tr>";

//if the session array $_SESSION['basket'] is set
if(isset($_SESSION['basket'])){

	foreach($_SESSION['basket'] as $key => $value)
	{	
		$SQL="select prodId,prodName,prodPrice from product where prodId = '".$key."';";
		//Create a new variable containing the execution of the SQL query i.e. select the records or get out
		$exeSQL=mysqli_query($conn,$SQL) or die (mysqli_error());
		$arrayprod=mysqli_fetch_array($exeSQL);
		echo "<tr>
		<td>".$arrayprod['prodName']."</td>
		<td>".$arrayprod['prodPrice']."</td>
		<td>".$value."</td>
		<td> Rs ".$arrayprod['prodPrice']*$value."</td>";
		$total = $total+($arrayprod['prodPrice']*$value);
		echo "<form action=basket.php method=post>";
echo "<td>";
echo "<input type=submit value='Remove' id='submitbtn'>";
echo "</td>";
echo "<input type=hidden name=del_prodid value=".$arrayprod['prodId'].">";
echo "</form>";
	}

		}
else{
	echo "Empty Basket";
	}
		echo "<tr><td colspan='4'>Total</td><td>Rs ".$total."</td></tr></table>";
		echo "<a href='clearbasket.php'>Clear the basket</a>";
		if(isset($_SESSION['userid'])){
			echo "<br><p><a href=checkout.php>CHECKOUT</a></p>";
		}
		else{
			echo "<br><p>New hometeq customers: <a href='signup.php'>Sign up </a></p>";
			echo "<p>Returning homteq customers: <a href='login.php'>Login</a></p>";

		}
		// echo "<br><br>";
		// echo "New HomeTeq Customers";
		// echo "<a href='register.php'> Register</a>";
		// echo "<br>";
		// echo "Returning HomeTeq Customers";
		// echo "<a href='login.php'> Login</a>";
		
		
		
		if (isset($_POST['del_prodid']))
		{
		//capture the posted product id and assign it to a local variable $delprodid
		$delprodid=$_POST['del_prodid'];
		//unset the cell of the session for this posted product id variable
		unset ($_SESSION['basket'][$delprodid]);
		//display a "1 item removed from the basket" message
		header("Refresh:0");
		echo "<p>1 item removed";
		}
		

include("footfile.html");
//include head layout
echo "</body>";
?>