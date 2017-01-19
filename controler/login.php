<?php
include("../modell/db.php");
$db=DB::getInstance();
$db->connect();

$username=$db->escape($_POST['username']);
$password=$db->escape($_POST['password']);


$password=md5($password);
$user=$db->query("select username,id from users where username='$username' and password='$password'");
session_start();
print($user);
$_SESSION['username']=$user[0]['username'];
$_SESSION['id']=$user[0]['id'];
header("location: ../index.php");
?>