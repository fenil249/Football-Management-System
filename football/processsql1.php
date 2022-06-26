<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$Age = $_POST['Age'];



$result = $mysqli->query( "SELECT Player_ID,Name,Age,Batch_No,Attendance FROM player_info where Age>'$Age") or die($mysqli->error);



 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process1.php");
}



  
    
