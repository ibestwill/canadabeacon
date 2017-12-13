<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>
<html>

    <head>
        <title>Hello World</title>

        <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/favicon.ico" />

    </head>

    <body>

        <?php

        include("includes/header.php");

        ?>

        <div id="content" ><!-- content Starts -->
            <div class="container" ><!-- container Starts -->

                <div class="col-md-12" ><!--- col-md-12 Starts -->

                    <ul class="breadcrumb" ><!-- breadcrumb Starts -->

                        <li>
                            <a href="index.php">Home</a>
                        </li>

                        <li>Register</li>

                    </ul><!-- breadcrumb Ends -->



                </div><!--- col-md-12 Ends -->


                <div class="col-md-12" ><!-- col-md-12 Starts -->

                    <?php

                    if(!isset($_SESSION['customer_email'])){

                        include("customer/customer_login.php");


                    }else{

                        include("payment_options.php");

                    }



                    ?>


                </div><!-- col-md-12 Ends -->


            </div><!-- container Ends -->
        </div><!-- content Ends -->



        <?php

        include("includes/footer.php");

        ?>

        <script src="js/jquery.min.js"> </script>

        <script src="js/bootstrap.min.js"></script>

    </body>
</html>