<html>
<style type="text/css">
<?php include 'style.css'; ?>
</style>

   
<body>

<div class="player-info">
 <button class="home-btn" ><a href="index.php" class="btn btn-primary">home</a> 
</button>


<?php

$mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));

?>


<h1 class="contact">Query</h1>
    <section class="contactus">
        <div id="contactbox">
        <form action="sql1.php" method="POST">
               
                <div class="formgrp">
                <label>Age</label>
                 <input type="number" name="Age" class="form-control"  placeholder="Enter Your Age">
                </div>
                <div class="formgrp">
                 <button type="submit" class="btn btn-primary" name="Go">Go</button>
                </div> 


                
            </form>
        </div>
        
    </section>


    </div>

        
    <?php

        
            // $mysqli = new mysqli( 'localhost', 'root', '' , 'football') or die(mysqli_error ($mysqli));
            $Age= 25;
            if (isset($_POST['Go'])){
            $Age = $_POST['Age'];
            }
            $result = $mysqli->query( "SELECT Player_ID,Name,Age,Batch_No,Attendance FROM player_info where Age>='$Age' Order by Age") or die($mysqli->error);

    ?>
 


    <div class="justify-content-center">
            <table class="table" id="player-tbl">
                <thead>

                    <tr>
                        <th>Player_ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Batch_No</th>
                        <th>Attendance</th>
                    </tr>

                </thead>
            <?php
                while ($row = $result->fetch_assoc()): 
            ?>
                    <tr>
                        <td><?php echo $row['Player_ID']; ?></td>
                        <td><?php echo $row['Name']; ?></td>
                        <td><?php echo $row['Age']; ?></td>
                        <td><?php echo $row['Batch_No']; ?></td>
                        <td><?php echo $row['Attendance']; ?></td>
                       
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