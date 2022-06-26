<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$Trainer_ID = $_POST ['Trainer_ID'];
$Name = $_POST['Name'];
$Age = $_POST['Age'];
$Contact_No = $_POST['Contact_No'];
$Email_ID = $_POST['Email_ID'];


$mysqli->query("INSERT INTO trainer_info ( Trainer_ID , Name, Age,Contact_No, Email_ID) VALUES( '$Trainer_ID', '$Name','$Age','$Contact_No','$Email_ID' )") or
die($mysqli->error);


 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process33.php");
}


if (isset($_GET['delete'])){
    $Trainer_ID = $_GET['delete'];
    $mysqli->query("DELETE FROM trainer_info where Trainer_ID='$Trainer_ID'") or die($mysqli->error());


 $_SESSION['message']="Record has been deleted!";
 $_SESSION['msg_type']="Danger";

  header("location: main-process33.php");

}
  
    
