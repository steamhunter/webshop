<?php
include("../modell/db.php");


$username=$_POST['username'];
$password=$_POST['password'];

$db=DB::getInstance();
$db->connect();
$password=md5($password);
$user=$db->query("select username,id from users where username='$username' and password='$password'");
session_start();
print($user);
$_SESSION['username']=$user[0]['username'];
$_SESSION['id']=$user[0]['id'];
header("location: ../index.php");
?>