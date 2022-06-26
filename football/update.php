<?php

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));

?>
<!DOCTYPE html>
<html>
 <head>
   <title> Retrive data</title>
   <link rel="stylesheet" href="style.css">
 </head>
<body>
<?php
if (mysqli_num_rows($result) > 0) {
?>
<table>
	  <tr>
	    <td>User_ID</td>
		<td>Password</td>
	  </tr>
			<?php
			$i=0;
			while($row = mysqli_fetch_array($result)) {
			?>
	  <tr>
	    <td><?php echo $row["User_ID"]; ?></td>
		<td><?php echo $row["Password"]; ?></td>

		<td><a href="update-process.php?id=<?php echo $row["User_ID"]; ?>">Update</a></td>
      </tr>
			<?php
			$i++;
			}
			?>
</table>
 <?php
}
else
{
    echo "No result found";
}
?>
 </body>
</html>