<?php
session_start();
$_SESSION['cart']=null; 
header("location: ../index.php");
?>