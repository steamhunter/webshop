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
	include("/modell/db.php");
	$db=DB::getInstance();
	$db->connect();
	$items=$db->query("select * from products");
	include("/modell/cart.php");
	include("/view/header.php");
	if(isset($_POST['endshop']))
	{
	include("view/paymentwindow.php");
	}else if(isset($_POST['finishcart']))
	{
	include("view/customerdata.php");
	}
	?>
	</body>
</html>