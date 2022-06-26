<?php
function OpenCon()
 {
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "football";
 $conn = new mysqli('$localhost', '$root', '','$football') or die("Connect failed: %s\n". $conn -> error);
 
 return $conn;
 }

// function CloseCon($conn)
//  {
//  $conn -> close();
//  }
   
?>