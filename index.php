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
	include("/modell/db.php");
	include("/view/header.php");
	include("view/shop.php");
	?>
	</body>
</html>