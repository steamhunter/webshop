<html>
	<head>
	<link rel="stylesheet" href="view/base.css">
	 <link rel="stylesheet" href="css/style.css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=1.4.2"></script>
    <script src="js/login.js"></script>
	</head>
	<body>
	<?php
	session_start();
	if($_SERVER["REQUEST_METHOD"]=="POST")
	{
		$post=$_POST;
	}
	if(isset($post)&&isset($_SESSION['username']))
	{
	$_SESSION['cart'][]=$post['itemid'];
	}
	include("/modell/db.php");
	$db=DB::getInstance();
	$db->connect();
	$items=$db->query("select * from products");
	include("/modell/cart.php");
	

	include("/view/header.php");
	include("view/shop.php");
	?>
	</body>
</html>