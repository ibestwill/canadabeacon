<?php


if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {


    ?>

    <div class="row"><!-- 1 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <h1 class="page-header">Dashboard</h1>

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"></i> Dashboard

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 1 row Ends -->


    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 Starts -->

            <div class="panel panel-green"><!-- panel panel-green Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <div class="row"><!-- panel-heading row Starts -->

                        <div class="col-xs-3"><!-- col-xs-3 Starts -->

                            <i class="fa fa-gg fa-5x"> </i>

                        </div><!-- col-xs-3 Ends -->

                        <div class="col-xs-9 text-right"><!-- col-xs-9 text-right Starts -->

                            <div class="huge"> 动态 </div>


                        </div><!-- col-xs-9 text-right Ends -->

                    </div><!-- panel-heading row Ends -->

                </div><!-- panel-heading Ends -->

                <a href="index.php?view_posts">

                    <div class="panel-footer"><!-- panel-footer Starts -->

                        <span class="pull-left"> View Details </span>

                        <span class="pull-right"> <i class="fa fa-arrow-circle-right"></i> </span>

                        <div class="clearfix"></div>

                    </div><!-- panel-footer Ends -->

                </a>

            </div><!-- panel panel-green Ends -->

        </div><!-- col-lg-3 col-md-6 Ends -->




        <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 Starts -->

            <div class="panel panel-primary"><!-- panel panel-primary Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <div class="row"><!-- panel-heading row Starts -->

                        <div class="col-xs-3"><!-- col-xs-3 Starts -->

                            <i class="fa fa-gg fa-5x"> </i>

                        </div><!-- col-xs-3 Ends -->

                        <div class="col-xs-9 text-right"><!-- col-xs-9 text-right Starts -->

                            <div class="huge">产品</div>

                            <div></div>
                        </div><!-- col-xs-9 text-right Ends -->

                    </div><!-- panel-heading row Ends -->

                </div><!-- panel-heading Ends -->

                <a href="index.php?view_products">

                    <div class="panel-footer"><!-- panel-footer Starts -->

                        <span class="pull-left"> View Details </span>

                        <span class="pull-right"> <i class="fa fa-arrow-circle-right"></i> </span>

                        <div class="clearfix"></div>

                    </div><!-- panel-footer Ends -->

                </a>

            </div><!-- panel panel-primary Ends -->

        </div><!-- col-lg-3 col-md-6 Ends -->

        <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 Starts -->

            <div class="panel panel-red"><!-- panel panel-red Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <div class="row"><!-- panel-heading row Starts -->

                        <div class="col-xs-3"><!-- col-xs-3 Starts -->

                            <i class="fa fa-gg fa-5x"> </i>

                        </div><!-- col-xs-3 Ends -->

                        <div class="col-xs-9 text-right"><!-- col-xs-9 text-right Starts -->

                            <div class="huge"> 百科 </div>


                        </div><!-- col-xs-9 text-right Ends -->

                    </div><!-- panel-heading row Ends -->

                </div><!-- panel-heading Ends -->

                <a href="index.php?view_wiki">

                    <div class="panel-footer"><!-- panel-footer Starts -->

                        <span class="pull-left"> View Details </span>

                        <span class="pull-right"> <i class="fa fa-arrow-circle-right"></i> </span>

                        <div class="clearfix"></div>

                    </div><!-- panel-footer Ends -->

                </a>

            </div><!-- panel panel-red Ends -->

        </div><!-- col-lg-3 col-md-6 Ends -->

        <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 Starts -->

            <div class="panel panel-yellow"><!-- panel panel-yellow Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <div class="row"><!-- panel-heading row Starts -->

                        <div class="col-xs-3"><!-- col-xs-3 Starts -->

                            <i class="fa fa-gg fa-5x"> </i>

                        </div><!-- col-xs-3 Ends -->

                        <div class="col-xs-9 text-right"><!-- col-xs-9 text-right Starts -->

                            <div class="huge"> 品类 </div>


                        </div><!-- col-xs-9 text-right Ends -->

                    </div><!-- panel-heading row Ends -->

                </div><!-- panel-heading Ends -->

                <a href="index.php?view_p_cats">

                    <div class="panel-footer"><!-- panel-footer Starts -->

                        <span class="pull-left"> View Details </span>

                        <span class="pull-right"> <i class="fa fa-arrow-circle-right"></i> </span>

                        <div class="clearfix"></div>

                    </div><!-- panel-footer Ends -->

                </a>

            </div><!-- panel panel-yellow Ends -->

        </div><!-- col-lg-3 col-md-6 Ends -->


    </div><!-- 2 row Ends -->


<?php } ?>