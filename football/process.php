<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$User_ID = $_POST ['User_ID'];
$Password = $_POST['Password'];

$mysqli->query("INSERT INTO login ( User_ID , Password) VALUES( '$User_ID', '$Password' )") or
die($mysqli->error);


 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process.php");
}


if (isset($_GET['delete'])){
    $User_ID = $_GET['delete'];
    $mysqli->query("DELETE FROM login where User_ID='$User_ID'") or die($mysqli->error());


 $_SESSION['message']="Record has been deleted!";
 $_SESSION['msg_type']="Danger";

  header("location: main-process.php");

}
  
    
