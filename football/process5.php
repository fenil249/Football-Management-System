<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$Super_User_ID = $_POST ['Super_User_ID'];
$Name = $_POST['Name'];
$Contact_No = $_POST['Contact_No'];
$Email_ID = $_POST['Email_ID'];



$mysqli->query("INSERT INTO super_user ( Super_User_ID , Name, Contact_No, Email_ID) VALUES( '$Super_User_ID', '$Name','$Contact_No','$Email_ID' )") or
die($mysqli->error);


 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process55.php");
}


if (isset($_GET['delete'])){
    $Super_User_ID = $_GET['delete'];
    $mysqli->query("DELETE FROM super_user where Super_User_ID='$Super_User_ID'") or die($mysqli->error());


 $_SESSION['message']="Record has been deleted!";
 $_SESSION['msg_type']="Danger";

  header("location: main-process55.php");

}
  
    
