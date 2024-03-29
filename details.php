<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>

<?php


$product_id = @$_GET['pro_id'];

$get_product = "select * from products where product_url='$product_id'";

$run_product = mysqli_query($con, $get_product);

$check_product = mysqli_num_rows($run_product);

if ($check_product == 0) {

    echo "<script> window.open('index','_self') </script>";

} else {


    $row_product = mysqli_fetch_array($run_product);

    $p_cat_id = $row_product['p_cat_id'];

    $pro_id = $row_product['product_id'];

    $pro_title = $row_product['product_title'];

    $pro_price = $row_product['product_price'];

    $pro_desc = $row_product['product_desc'];

    $pro_img1 = $row_product['product_img1'];

    $pro_img2 = $row_product['product_img2'];

    $pro_img3 = $row_product['product_img3'];

    $pro_label = $row_product['product_label'];

    $pro_psp_price = $row_product['product_psp_price'];

    $pro_features = $row_product['product_features'];

    $pro_video = $row_product['product_video'];

    $status = $row_product['status'];

    $pro_url = $row_product['product_url'];

    if ($pro_label == "") {


    } else {

        $product_label = "

        <a class='label sale' href='#' style='color:black;'>

            <div class='thelabel'>$pro_label</div>

            <div class='label-background'> </div>

        </a>

        ";

    }

    $get_p_cat = "select * from product_categories where p_cat_id='$p_cat_id'";

    $run_p_cat = mysqli_query($con, $get_p_cat);

    $row_p_cat = mysqli_fetch_array($run_p_cat);

    $p_cat_title = $row_p_cat['p_cat_title'];


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

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/cb-logo.png" />

    </head>

    <body>

    <!--nav-->
    <div class="navbar navbar-default navbar-fixed-top" id="navbar"><!-- navbar navbar-default Starts -->

        <!--red line-->
        <div id="header"></div>

        <!--logo + contact-->
        <div id="top"><!-- top Starts -->

            <div class="container"><!-- container Starts -->

                <div class="col-md-10 top-brand">
                    <a href="index"><!--- navbar navbar-brand home Starts -->

                        <img src="images/cb-dark-long.png" alt="cb logo">

                    </a><!--- navbar navbar-brand home Ends -->

                    <div class="dropdown hidden-lg hidden-md hidden-sm" style="float:right;">
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
                                <a href="wiki"> 百科 </a>
                            </li>

                            <li><a href="en"><img src="images/CANADA.png" height="35"></a></li>
                            <li><a href="index"><img src="images/CHINA.png" height="35"></a></li>


                        </div>
                    </div>


                </div>

                <div class="col-md-2 offer hidden-xs hidden-sm"><!-- col-md-6 Starts -->

                    <ul class="list-inline"><!-- menu Starts -->

                        <li><a href="en"><img src="images/CANADA.png" height="35"></a></li>
                        <li><a href="index"><img src="images/CHINA.png" height="35"></a></li>
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

                        <li <?php if ($p_cat_title == "动态") {echo 'id="nav"';} ?>>
                            <a href="index"> 动态 </a>
                        </li>

                        <li <?php if ($p_cat_title == "移民") {echo 'id="nav"';} ?>>
                            <a href="immigration"> 移民 </a>
                        </li>

                        <li <?php if ($p_cat_title == "签证") {echo 'id="nav"';} ?>>
                            <a href="visa"> 签证 </a>
                        </li>

                        <li <?php if ($p_cat_title == "留学") {echo 'id="nav"';} ?>>
                            <a href="study"> 留学 </a>
                        </li>


                        <li <?php if ($p_cat_title == "百科") {echo 'id="nav"';} ?>>
                            <a href="wiki"> 百科 </a>
                        </li>


                    </ul><!-- nav navbar-nav navbar-left Ends -->

                </div><!-- padding-nav Ends -->

            </div><!-- navbar-collapse collapse Ends -->

        </div><!-- container Ends -->
    </div><!-- navbar navbar-default Ends -->


    <div id="content"><!-- content Starts -->
        <div class="details_container"><!-- container Starts -->


            <div class="col-md-12"><!-- col-md-12 Starts -->

                <h2 class="text-left"> <?php echo $pro_title; ?> </h2>
                <br>

                <div class="box" id="details"><!-- box Starts -->

                    <div class="tab-content"><!-- tab-content Starts -->

                        <div id="description" class="tab-pane fade in active" style="margin-top:7px;">
                            <!-- description tab-pane fade in active Starts -->

                            <?php echo $pro_desc; ?>

                        </div><!-- description tab-pane fade in active Ends -->

                        <div id="features" class="tab-pane fade in" style="margin-top:7px;">
                            <!-- features tab-pane fade in  Starts -->

                            <?php echo $pro_features; ?>

                        </div><!-- features tab-pane fade in  Ends -->

                        <div id="video" class="tab-pane fade in" style="margin-top:7px;">
                            <!-- video tab-pane fade in Starts -->

                            <?php echo $pro_video; ?>

                        </div><!-- video tab-pane fade in  Ends -->

                        <p>&nbsp;</p>
                        <p>&nbsp;</p>

                    </div><!-- tab-content Ends -->

                </div><!-- box Ends -->

                <?php
                if ($pro_price) {

                    include("includes/serviceprice.php");
                }
                ?>
            </div><!-- col-md-12 Ends -->



        </div><!-- container Ends -->
    </div><!-- content Ends -->


    <?php

    include("includes/footer.php");

    ?>

    <script src="js/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>


    </body>
    </html>

<?php } ?>
