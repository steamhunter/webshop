<html>
	<head>
	<link rel="stylesheet" href="view/base.css">
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