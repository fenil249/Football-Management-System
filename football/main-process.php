<html>
<body>
    

<a href="index.php"
class="btn btn-primary">home</a>

        <? php require_once 'process.php'; ?>



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
                $result = $mysqli->query( "SELECT * FROM login") or die($mysqli->error);

        ?>


                
        <div class="row justify-content-center">
        <form action="process.php" method="POST">

            <div class="form-group">
            <label>User_ID</label>
            <input type="text" name="User_ID" class="form-control"  value="" >
            </div>
            <div class="form-group" >

            <label>Password</label>
            <input type ="password" name="Password"   class="form-control" value="" >
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
                        <th>User_ID</th>
                        <th>Password</th>
                        <th colspan= "2">Action</th>
                    </tr>

                </thead>
            <?php
                while ($row = $result->fetch_assoc()): 
            ?>
                    <tr>
                        <td><?php echo $row['User_ID']; ?></td>
                        <td><?php echo $row['Password']; ?></td>
                        <td>
                            
                            <a href="process.php?delete=<?php echo $row['User_ID']; ?>"
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