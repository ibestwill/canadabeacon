<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>加国灯塔</title>

        <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/cb-logo.png" />

    </head>

    <body>

    <?php

    include("includes/header.php");

    ?>


        <div id="content" ><!-- content Starts -->
            <div class="container" ><!-- container Starts -->


                <div class="col-md-12" ><!-- col-md-12 Starts --->

                    <div class='box effect1'>

                        <h1>签证申请</h1>
                        <br>
                        <br>

                        <p>加拿大签证种类丰富，学签，工签和旅游签是最常见的签证类型，且每种签证也有不同的子类。目前赴加人数激增，签证拒签率高，传送门会针对您的具体情况提供符合您的签证申请方案，确保您签证的快速通过。</p>

                    </div>



                    <div><!-- row Starts -->

                        <?php getVisa('p_cat_id=2'); ?>

                    </div><!-- row Ends -->


                </div><!-- col-md-12 Ends --->


                <div id="wait" style="position:absolute;top:40%;left:45%;padding:100px;padding-top:200px;"><!--- wait Starts -->

                </div><!--- wait Ends -->

            </div><!-- container Ends -->
        </div><!-- content Ends -->



        <?php

        include("includes/footer.php");

        ?>

        <script src="js/jquery.min.js"> </script>

        <script src="js/bootstrap.min.js"></script>


    </body>

</html>