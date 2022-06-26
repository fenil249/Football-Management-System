<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$Coach_ID = $_POST ['Coach_ID'];
$Name = $_POST['Name'];
$Age = $_POST['Age'];
$Email_ID = $_POST['Email_ID'];
$Contact_No = $_POST['Contact_No'];
$Address = $_POST['Address'];
$Experience = $_POST['Experience'];

$mysqli->query("INSERT INTO coach ( Coach_ID , Name, Age, Email_ID,Contact_No,Address,Experience ) VALUES( '$Coach_ID', '$Name','$Age','$Email_ID','$Contact_No','$Address','$Experience' )") or
die($mysqli->error);


 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process22.php");
}


if (isset($_GET['delete'])){
    $Coach_ID = $_GET['delete'];
    $mysqli->query("DELETE FROM coach where Coach_ID='$Coach_ID'") or die($mysqli->error());


 $_SESSION['message']="Record has been deleted!";
 $_SESSION['msg_type']="Danger";

  header("location: main-process22.php");

}
  
    
