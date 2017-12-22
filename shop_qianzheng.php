<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>
<html>

    <head>
        <title>传送门 CSM.WORLD</title>

        <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/favicon.ico" />

    </head>

    <body>

    <!--nav-->
    <div class="navbar navbar-default navbar-fixed-top" id="navbar"><!-- navbar navbar-default Starts -->

        <!--red line-->
        <div id="header"></div>

        <!--logo + contact-->
        <div id="top"><!-- top Starts -->

            <div class="container"><!-- container Starts -->

                <div class="col-md-6 top-brand">
                    <a href="index" style="text-align:center"><!--- navbar navbar-brand home Starts -->

                        <img src="images/logo-small.png" alt="csm logo" height="35">

                    </a><!--- navbar navbar-brand home Ends -->

                </div>

                <div class="col-md-6 offer hidden-xs hidden-sm"><!-- col-md-6 Starts -->

                    <ul class="menu"><!-- menu Starts -->

                        <li>
                            <a class="right" href="contact.php"><!-- btn btn-primary navbar-btn right Starts -->


                                <i class="fa fa-phone-square fa-2x"></i>


                            </a><!-- btn btn-primary navbar-btn right Ends -->

                        </li>

                    </ul><!-- menu Ends -->

                </div><!-- col-md-6 Ends -->


            </div><!-- container Ends -->
        </div><!-- top Ends -->


        <div class="container"><!-- container Starts -->

            <div class="navbar-header"><!-- navbar-header Starts -->

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                    <span class="sr-only">Toggle Navigation </span>

                    <i class="fa fa-align-justify"></i>

                </button>


            </div><!-- navbar-header Ends -->


            <div class="navbar-collapse collapse" id="navigation"><!-- navbar-collapse collapse Starts -->

                <div class="padding-nav"><!-- padding-nav Starts -->

                    <ul class="nav nav-pills card-header-pills nav-justified"><!-- nav navbar-nav navbar-left Starts -->

                        <li>
                            <a href="shop_dongtai.php"> 动态 </a>
                        </li>

                        <li>
                            <a href="shop_yimin.php"> 移民 </a>
                        </li>

                        <li id="nav">
                            <a href="shop_qianzheng.php"> 签证 </a>
                        </li>

                        <li>
                            <a href="shop_liuxue.php"> 留学 </a>
                        </li>


                        <li>
                            <a href="shop_bibei.php"> 百科 </a>
                        </li>


                    </ul><!-- nav navbar-nav navbar-left Ends -->

                </div><!-- padding-nav Ends -->

            </div><!-- navbar-collapse collapse Ends -->

        </div><!-- container Ends -->
    </div><!-- navbar navbar-default Ends -->


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