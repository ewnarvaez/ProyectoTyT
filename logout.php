<?php 
session_start();
//if(isset($_SESSION['email'])){
	session_destroy();
//}
$ref= @$_GET['q'];
header("location:$ref");
//header("Location: http://shrtco.de/XcCdsr");
die();
?>