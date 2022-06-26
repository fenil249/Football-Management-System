<html>
<body>
    

<a href="index.php"
class="btn btn-primary">home</a>

        <? php require_once 'process2.php'; ?>



        <?php
            if (isset($_SESSION['message'])): ?>
            <div class="alert alert-<?=$_SESSION['msg_type']?>" >

            <?php
                echo $_SESSION[ 'message' ];
                unset ($_SESSION[ 'message' ]);
            ?>

            </div>
            <?php endif ?>
        <div class="container">








        <?php

                $mysqli = new mysqli( 'localhost', 'root', '', 'football') or die(mysqli_error($mysqli));
                $result = $mysqli->query( "SELECT * FROM coach") or die($mysqli->error);

        ?>


                
        <div class="row justify-content-center">
        <form action="process2.php" method="POST">

            <div class="form-group">
            <label>Coach_ID</label>
            <input type="text" name="Coach_ID" class="form-control"  value="" >
            </div>
            <div class="form-group" >
            <label>Name</label>
            <input type ="text" name="Name"   class="form-control" value="" >
            </div>
            <div class="form-group">
            <label>Age</label>
            <input type="number" name="Age" class="form-control"  value="" >
            </div>
            <div class="form-group">
            <label>Email_ID</label>
            <input type="text" name="Email_ID" class="form-control"  value="" >
            </div>
            <div class="form-group">
            <label>Contact_No</label>
            <input type="number" name="Contact_No" class="form-control"  value="" >
            </div>
            <div class="form-group">
            <label>Address</label>
            <input type="text" name="Address" class="form-control"  value="" >
            </div>
            <div class="form-group">
            <label>Experience</label>
            <input type="number" name="Experience" class="form-control"  value="" >
            </div>


            <div class="form-group">

                <button type="submit" class="btn btn-primary" name="save">Save</button>
                

            </div>
        </form>
        </div>



<div class="row justify-content-center">
            <table class="table">
                <thead>

                    <tr>
                        <th>Coach_ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Email_ID</th>
                        <th>Contact_No</th>
                        <th>Address</th>
                        <th>Experience</th>
                        <th colspan= "2">Action</th>
                    </tr>

                </thead>
            <?php
                while ($row = $result->fetch_assoc()): 
            ?>
                    <tr>
                        <td><?php echo $row['Coach_ID']; ?></td>
                        <td><?php echo $row['Name']; ?></td>
                        <td><?php echo $row['Age']; ?></td>
                        <td><?php echo $row['Email_ID']; ?></td>
                        <td><?php echo $row['Contact_No']; ?></td>
                        <td><?php echo $row['Address']; ?></td>
                        <td><?php echo $row['Experience']; ?></td>
                        <td>
                            
                            <a href="process2.php?delete=<?php echo $row['Coach_ID']; ?>"
                            class="btn btn-danger">Delete</a>
                        </td>

                    </tr>
                    <?php endwhile; ?>
                </table>
            </div>






        
        <?php
                function pre_r( $array ) {
                echo '<pre>';
                print_r($array);
                echo '</pre>';
                }
        ?>




        
        </body>
</html> 