<?php
session_start();

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));



if (isset($_POST['save'])){
$Player_ID = $_POST ['Player_ID'];
$Name = $_POST['Name'];
$Age = $_POST['Age'];
$Batch_No = $_POST['Batch_No'];
$Joining_Date = $_POST['Joining_Date'];
$Attendance = $_POST['Attendance'];
$Contact_No = $_POST['Contact_No'];
$Address = $_POST['Address'];

$mysqli->query("INSERT INTO player_info ( Player_ID , Name, Age, Batch_No, Joining_Date, Attendance,Contact_No,Address ) VALUES( '$Player_ID', '$Name','$Age','$Batch_No','$Joining_Date','$Attendance','$Contact_No','$Address' )") or
die($mysqli->error);


 $_SESSION['message']="Record has been inserted!";
 $_SESSION['msg_type']="Success!";

  header ("location: main-process1.php");
}


if (isset($_GET['delete'])){
    $Player_ID = $_GET['delete'];
    $mysqli->query("DELETE FROM player_info where Player_ID='$Player_ID'") or die($mysqli->error());


 $_SESSION['message']="Record has been deleted!";
 $_SESSION['msg_type']="Danger";

  header("location: main-process1.php");

}
  
    
