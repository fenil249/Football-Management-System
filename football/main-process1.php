
<html>
<style type="text/css">
<?php include 'style.css'; ?>
</style>

   
<body>
<!-- 
         <div class="player-info">
        <div class="home-btn">
        <div class="row">
        <div class="col-md-12">
            <div class="row">
        <div class="col-md-6">
            <div class="heading">Player-Info</div>
        </div>
        <div class="col-md-6"> 
            <div class="main-btn">
        <a href="index.php" class="button btn-primary">home</a>
        </div>
       </div>
        </div>
        </div>
        </div>

        </div>  -->

 <div class="player-info">
 <button class="home-btn" ><a href="index.php" class="btn btn-primary">home</a> 
</button>
 <!-- <a href="index.php" class="btn btn-primary">home</a>  -->

       



        <? php require_once 'process1.php'; ?>



        <?php
            if (isset($_SESSION['message'])): ?>
            <div class="alert alert-<?=$_SESSION['msg_type']?>" >

            <?php
                echo $_SESSION[ 'message' ];
                unset ($_SESSION[ 'message' ]);
            ?>

            </div>
            <?php endif ?>
        








        <?php

                $mysqli = new mysqli( 'localhost', 'root', '', 'football') or die(mysqli_error($mysqli));
                $result = $mysqli->query( "SELECT * FROM player_info") or die($mysqli->error);

        ?>

<!-- 
        <div class="container">        
        <div class="player-form">
        <form action="process1.php" method="POST">

            <div class="form-group">
                <div class="row">
            <label>Player_ID</label>
            <input type="text" name="Player_ID" class="form-control"  value="" >
            </div>
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
            <label>Batch_No</label>
            <input type="text" name="Batch_No" class="form-control"  value="" >
            </div>
            <div class="form-group">
            <label>Joining_Date</label>
            <input type="text" name="Joining_Date" class="form-control"  value="" >
            </div>
            <div class="form-group">
            <label>Attendance</label>
            <input type="text" name="Attendance" class="form-control"  value="" >
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

                <button type="submit" class="btn btn-primary" name="save">Save</button>
                

            </div> 


        </form>
        </div>
            </div>
            </div>
 -->

 <h1 class="contact">Player Info</h1>
    <section class="contactus">
        <div id="contactbox">
        <form action="process1.php" method="POST">
                <div class="formgrp">
                <label>Player ID</label>
                <input type="text" name="Player_ID" class="form-control"   placeholder="Enter Your Player ID">
                </div>
                <div class="formgrp">
                <label>Name</label>
                 <input type ="text" name="Name"   class="form-control" placeholder="Enter Your Name">
                </div>
                <div class="formgrp">
                <label>Age</label>
                 <input type="number" name="Age" class="form-control"  placeholder="Enter Your Age">
                </div>
                <div class="formgrp">
                <label>Batch No</label>
                 <input type="text" name="Batch_No" class="form-control"  placeholder="Enter Your Batch No">
                </div>
                <div class="formgrp">
                <label>Joining Date</label>
                <input type="text" name="Joining_Date" class="form-control" placeholder="Enter Your Joining Date">
                </div>
                <div class="formgrp">
                <label>Attendance</label>
                <input type="text" name="Attendance" class="form-control"  placeholder="Enter Your Attendance">
                </div>
                <div class="formgrp">
                <label>Contact No</label>
                <input type="number" name="Contact_No" class="form-control"  placeholder="Enter Your Contact No">
                </div>
                <div class="formgrp">
                <label>Address</label>
                <input type="text" name="Address" class="form-control"    placeholder="Enter Your address">
                </div>
                <div class="formgrp">
                 <button type="submit" class="btn btn-primary" name="save">Save</button>
                </div> 


                
            </form>
        </div>
        
    </section>


    </div>
<div class="justify-content-center">
            <table class="table" id="player-tbl">
                <thead>

                    <tr>
                        <th>Player_ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Batch_No</th>
                        <th>Joining_Date</th>
                        <th>Attendance</th>
                        <th>Contact_No</th>
                        <th>Address</th>
                        <th colspan= "2">Action</th>
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
                        <td><?php echo $row['Joining_Date']; ?></td>
                        <td><?php echo $row['Attendance']; ?></td>
                        <td><?php echo $row['Contact_No']; ?></td>
                        <td><?php echo $row['Address']; ?></td>
                        <td>
                            
                            <a href="process1.php?delete=<?php echo $row['Player_ID']; ?>"
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