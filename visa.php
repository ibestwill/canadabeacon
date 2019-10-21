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

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">
        <link href="styles/w3.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/cb-logo.png" />

    </head>

    <body>


    <div class="navbar navbar-default navbar-fixed-top" id="navbar"><!-- navbar navbar-default Starts -->

        <!--red line-->
        <div id="header"></div>

        <!--logo + contact-->
        <div id="top"><!-- top Starts -->

            <div class="container"><!-- container Starts -->

                <div class="col-md-10 top-brand">
                    <a href="index" style="text-align:center"><!--- navbar navbar-brand home Starts -->

                        <img src="images/cb-dark-long.png" alt="cb logo" height="45">

                    </a><!--- navbar navbar-brand home Ends -->

                    <div class="dropdown hidden-lg hidden-md" style="float:right;">
                        <button class="dropbtn"><i class="fa fa-align-justify"></i></button>
                        <div class="dropdown-content">

                            <li>
                                <a href="news"> 动态 </a>
                            </li>

                            <li>
                                <a href="immigration"> 移民 </a>
                            </li>

                            <li>
                                <a href="visa"> 签证 </a>
                            </li>

                            <li>
                                <a href="study"> 留学 </a>
                            </li>


                            <li>
                                <form action="language_switcher.php" method="post">
                                    <input type="hidden" name="lang" value="en">
                                    <input type="image" src="images/CANADA.png" height="35" style="margin-left: 20px">
                                </form>

                            </li>
                            <li>
                                <form action="language_switcher.php" method="post">
                                    <input type="hidden" name="lang" value="cn">
                                    <input type="image" src="images/CHINA.png" height="35" style="margin-left: 20px">
                                </form>

                            </li>


                        </div>
                    </div>

                </div>

                <div class="col-md-2 offer hidden-xs hidden-sm"><!-- col-md-6 Starts -->

                    <ul class="list-inline"><!-- menu Starts -->

                        <li>
                            <form action="language_switcher.php" method="post">
                                <input type="hidden" name="lang" value="en">
                                <input type="image" src="images/CANADA.png" height="35">
                            </form>
                        </li>
                        <li>
                            <form action="language_switcher.php" method="post">
                                <input type="hidden" name="lang" value="cn">
                                <input type="image" src="images/CHINA.png" height="35">
                            </form>

                    </ul><!-- menu Ends -->

                </div><!-- col-md-6 Ends -->

            </div><!-- container Ends -->
        </div><!-- top Ends -->


        <div class="container hidden-xs"><!-- container Starts -->

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
                            <a href="news"> 动态 </a>
                        </li>

                        <li>
                            <a href="immigration"> 移民 </a>
                        </li>

                        <li id="nav">
                            <a href="visa"> 签证 </a>
                        </li>

                        <li>
                            <a href="study"> 留学 </a>
                        </li>


                    </ul><!-- nav navbar-nav navbar-left Ends -->

                </div><!-- padding-nav Ends -->

            </div><!-- navbar-collapse collapse Ends -->

        </div><!-- container Ends -->
    </div><!-- navbar navbar-default Ends -->


    <div id="content"><!-- content Starts -->
            <div class="container" ><!-- container Starts -->


                <div class="col-md-9"><!-- col-md-12 Starts --->

                    <div>

                        <h1>签证申请</h1>
                        <br>
                        <p>
                            加拿大签证种类丰富，工签、访问签和学签是最常见的签证类型，且每种签证也有不同的子类。目前赴加人数激增，签证拒签率高，“加国灯塔”会针对您的具体情况提供符合您的签证申请方案，确保您签证的快速通过。</p>
                        <br>
                    </div>



                    <div><!-- row Starts -->

                        <?php getVisa('p_cat_id=2'); ?>

                    </div><!-- row Ends -->


                </div><!-- col-md-9 Ends --->

                <div class="col-md-3">
                    <?php

                    include("includes/sidebar.php");

                    ?>

                </div>


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