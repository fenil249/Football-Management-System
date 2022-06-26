
<?php

include 'connection.php';


$sql= "SELECT * FROM login";

$result = mysqli_query($conn, $sql); 
echo $result;


 
//echo "Connected Successfully";
// mysqli_close($conn);
?>