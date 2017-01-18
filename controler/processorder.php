<?php
session_start();
include("../modell/db.php");
$uname=$_POST['customername'];
$city=$_POST['customercity'];
$address=$_POST['customeraddress'];
$cart=$_SESSION['cart'];
$userid=$_SESSION['id'];
$db=DB::getInstance();
$db->connect();
$db->query("INSERT INTO `orders` (`orderid`, `userid`, `name`, `city`, `address`, `state`) VALUES (NULL, '$userid', '$uname', '$city', '$address', '0')");
$orderid=$db->query("SELECT orderid FROM orders WHERE userid='$userid' ORDER BY orderid DESC LIMIT 1");
$orderid=$orderid[0]['orderid'];
for($i=0;$i<count($cart);$i++)
{
	
	$db->query("INSERT INTO `cart` (`orderid`, `productid`) VALUES ('$orderid', '$cart[$i]')");
}
$_SESSION['cart']=null; 
header("location: ../index.php");
?>