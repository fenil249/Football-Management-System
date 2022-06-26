<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$Super_Admin_ID = $_POST ['Super_Admin_ID'];
$Name = $_POST['Name'];
$Email_ID = $_POST['Email_ID'];
$Contact_No = $_POST['Contact_No'];



$mysqli->query("INSERT INTO super_admin ( Super_Admin_ID , Name, Email_ID,Contact_No) VALUES( '$Super_Admin_ID', '$Name','$Email_ID','$Contact_No' )") or
die($mysqli->error);


 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process44.php");
}


if (isset($_GET['delete'])){
    $Super_Admin_ID = $_GET['delete'];
    $mysqli->query("DELETE FROM super_admin where Super_Admin_ID='$Super_Admin_ID'") or die($mysqli->error());


 $_SESSION['message']="Record has been deleted!";
 $_SESSION['msg_type']="Danger";

  header("location: main-process44.php");

}
  
    
