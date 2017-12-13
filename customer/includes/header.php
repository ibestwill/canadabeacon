<div id="header"> </div>
<div id="top"><!-- top Starts -->

    <div class="container"><!-- container Starts -->

        <div class="col-md-6 top-brand">
            <a  href="index.php" style="text-align:center"><!--- navbar navbar-brand home Starts -->

                <img src="images/logo.png" alt="helloworld logo" class="hidden-xs" >

            </a><!--- navbar navbar-brand home Ends -->

        </div>

        <div class="col-md-6 offer"><!-- col-md-6 Starts -->

            <ul class="menu"><!-- menu Starts -->

                <li>
                    <a href="..\customer_register.php">
                        注册
                    </a>
                </li>
                <li>
                    <?php

                    if(!isset($_SESSION['customer_email'])){

                        echo "<a href='..\checkout.php'> 登录 </a>";

                    }else {

                        echo "<a href='..\logout.php'> 退出 </a>";

                    }

                    ?>
                </li>

                <li>
                    <?php

                    if(!isset($_SESSION['customer_email'])){

                        echo "<a href='..\checkout.php' >账户</a>";    

                    }
                    else{

                        echo "<a href='my_account.php?my_orders'>账户</a>";

                    }

                    ?>
                </li>
                <li>
                    <a class="right" href="..\cart.php"><!-- btn btn-primary navbar-btn right Starts -->

                        <i class="fa fa-shopping-cart"></i>

                        <span>[<?php items(); ?>]</span>

                    </a><!-- btn btn-primary navbar-btn right Ends -->

                </li>

            </ul><!-- menu Ends -->

        </div><!-- col-md-6 Ends -->


    </div><!-- container Ends -->
</div><!-- top Ends -->

<div class="navbar navbar-default" id="navbar"><!-- navbar navbar-default Starts -->
    <div class="container" ><!-- container Starts -->

        <div class="navbar-header"><!-- navbar-header Starts -->

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation"  >

                <span class="sr-only" >Toggle Navigation </span>

                <i class="fa fa-align-justify"></i>

            </button>



        </div><!-- navbar-header Ends -->

        <div class="navbar-collapse collapse" id="navigation" ><!-- navbar-collapse collapse Starts -->

            <div class="padding-nav" ><!-- padding-nav Starts -->

                <ul class="nav nav-pills card-header-pills nav-justified"><!-- nav navbar-nav navbar-left Starts -->

                    <li>
                        <a href="..\index.php"> 常用 </a>
                    </li>
                    <li>
                        <a href="..\shop_liuxue.php"> 留学 </a>
                    </li>
                    <li>
                        <a href="..\shop_yimin.php"> 移民 </a>
                    </li>
                    <li>
                        <a href="..\shop_qianzheng.php"> 签证 </a>
                    </li>
                    <li>
                        <a href="..\shop_bibei.php"> 必备 </a>
                    </li>


                </ul><!-- nav navbar-nav navbar-left Ends -->

            </div><!-- padding-nav Ends -->

        </div><!-- navbar-collapse collapse Ends -->

    </div><!-- container Ends -->
</div><!-- navbar navbar-default Ends -->