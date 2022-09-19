<?php
//all the variables defined here are accessible in all the files that include this one
$con= new mysqli('localhost','root','usbw','project')or die("Could not connect to mysql".mysqli_error($con));
//$con= new mysqli('localhost','id19421763_lejos','HH3218450520hh!','id19421763_tytquindio')or die("Could not connect to mysql".mysqli_error($con));
$con->set_charset('utf8');
?>