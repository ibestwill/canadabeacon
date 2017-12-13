<?php


if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {


    ?>

    <nav class="navbar navbar-inverse navbar-fixed-top"><!-- navbar navbar-inverse navbar-fixed-top Starts -->

        <div class="navbar-header"><!-- navbar-header Starts -->

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <!-- navbar-ex1-collapse Starts -->


                <span class="sr-only">Toggle Navigation</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>


            </button><!-- navbar-ex1-collapse Ends -->

            <a class="navbar-brand" href="index.php?dashboard">控制面板</a>


        </div><!-- navbar-header Ends -->

        <ul class="nav navbar-right top-nav"><!-- nav navbar-right top-nav Starts -->

            <li class="dropdown"><!-- dropdown Starts -->

                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><!-- dropdown-toggle Starts -->

                    <i class="fa fa-user"></i>

                    <?php echo $admin_name; ?> <b class="caret"></b>


                </a><!-- dropdown-toggle Ends -->

                <ul class="dropdown-menu"><!-- dropdown-menu Starts -->

                    <li><!-- li Starts -->

                        <a href="index.php?user_profile=<?php echo $admin_id; ?>">

                            <i class="fa fa-fw fa-user"></i> Profile


                        </a>

                    </li><!-- li Ends -->

                    <li><!-- li Starts -->

                        <a href="index.php?view_products">

                            <i class="fa fa-fw fa-envelope"></i> Products

                            <span class="badge"><?php echo $count_products; ?></span>


                        </a>

                    </li><!-- li Ends -->




                    <li><!-- li Starts -->

                        <a href="index.php?view_p_cats">

                            <i class="fa fa-fw fa-gear"></i> Product Categories

                            <span class="badge"><?php echo $count_p_categories; ?></span>


                        </a>

                    </li><!-- li Ends -->

                    <li class="divider"></li>

                    <li><!-- li Starts -->

                        <a href="logout.php">

                            <i class="fa fa-fw fa-power-off"> </i> Log Out

                        </a>

                    </li><!-- li Ends -->

                </ul><!-- dropdown-menu Ends -->


            </li><!-- dropdown Ends -->


        </ul><!-- nav navbar-right top-nav Ends -->

        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <!-- collapse navbar-collapse navbar-ex1-collapse Starts -->

            <ul class="nav navbar-nav side-nav"><!-- nav navbar-nav side-nav Starts -->

                <li><!-- li Starts -->

                    <a href="index.php?dashboard">

                        <i class="fa fa-fw fa-gg"></i> 总览

                    </a>

                </li><!-- li Ends -->

                <li><!-- Posts li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#posts">

                        <i class="fa fa-fw fa-gg"></i> 动态

                        <i class="fa fa-fw fa-caret-down"></i>


                    </a>

                    <ul id="posts" class="collapse">

                        <li>
                            <a href="index.php?insert_post"> Insert Posts </a>
                        </li>

                        <li>
                            <a href="index.php?view_posts"> View Posts </a>
                        </li>


                    </ul>

                </li><!-- Posts li Ends -->



                <li><!-- Products li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#products">

                        <i class="fa fa-fw fa-gg"></i> 产品

                        <i class="fa fa-fw fa-caret-down"></i>


                    </a>

                    <ul id="products" class="collapse">

                        <li>
                            <a href="index.php?insert_product"> Insert Products </a>
                        </li>

                        <li>
                            <a href="index.php?view_products"> View Products </a>
                        </li>


                    </ul>

                </li><!-- Products li Ends -->


                <li><!-- Posts li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#wiki">

                        <i class="fa fa-fw fa-gg"></i> 百科

                        <i class="fa fa-fw fa-caret-down"></i>


                    </a>

                    <ul id="wiki" class="collapse">

                        <li>
                            <a href="index.php?insert_wiki"> Insert Wiki </a>
                        </li>

                        <li>
                            <a href="index.php?view_wiki"> View Wiki </a>
                        </li>


                    </ul>

                </li><!-- Posts li Ends -->


                <li><!-- Country li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#manufacturers">

                        <i class="fa fa-fw fa-gg"></i> 国类

                        <i class="fa fa-fw fa-caret-down"></i>


                    </a>

                    <ul id="manufacturers" class="collapse"><!-- ul collapse Starts -->

                        <li>
                            <a href="index.php?insert_manufacturer"> Insert Country </a>
                        </li>

                        <li>
                            <a href="index.php?view_manufacturers"> View Countries </a>
                        </li>

                    </ul><!-- ul collapse Ends -->


                </li><!-- Country li Ends -->


                <li><!-- Products Categories li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#p_cat">

                        <i class="fa fa-fw fa-gg"></i> 品类

                        <i class="fa fa-fw fa-caret-down"></i>


                    </a>

                    <ul id="p_cat" class="collapse">

                        <li>
                            <a href="index.php?insert_p_cat"> Insert Product Category </a>
                        </li>

                        <li>
                            <a href="index.php?view_p_cats"> View Products Categories </a>
                        </li>


                    </ul>

                </li><!-- Products Categories li Ends -->

                <li><!-- li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#cat">

                        <i class="fa fa-fw fa-gg"></i> 子类

                        <i class="fa fa-fw fa-caret-down"></i>

                    </a>

                    <ul id="cat" class="collapse">

                        <li>
                            <a href="index.php?insert_cat"> Insert Category </a>
                        </li>

                        <li>
                            <a href="index.php?view_cats"> View Categories </a>
                        </li>


                    </ul>

                </li><!-- li Ends -->


                <li><!-- li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#express_entry">

                        <i class="fa fa-fw fa-gg"></i> 快速通道

                        <i class="fa fa-fw fa-caret-down"></i>

                    </a>

                    <ul id="express_entry" class="collapse">

                        <li>
                            <a href="index.php?insert_ee"> Insert EE </a>
                        </li>

                        <li>
                            <a href="index.php?view_ee"> View EE </a>
                        </li>


                    </ul>

                </li><!-- li Ends -->



                <li><!-- Values section li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#services">

                        <i class="fa fa-fw fa-gg"></i> 价值使命

                        <i class="fa fa-fw fa-caret-down"></i>

                    </a>

                    <ul id="services" class="collapse">

                        <li>
                            <a href="index.php?insert_service"> Insert Service </a>
                        </li>

                        <li>
                            <a href="index.php?view_services"> View Services </a>
                        </li>

                    </ul>

                </li><!-- Values section li Ends -->


                <li><!-- contact us li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#contact_us"><!-- anchor Starts -->

                        <i class="fa fa-fw fa-gg"> </i> 联系我们

                        <i class="fa fa-fw fa-caret-down"></i>

                    </a><!-- anchor Ends -->

                    <ul id="contact_us" class="collapse">

                        <li>

                            <a href="index.php?edit_contact_us"> Edit Contact Us </a>

                        </li>

                        <li>

                            <a href="index.php?insert_enquiry"> Insert Enquiry Type </a>

                        </li>

                        <li>

                            <a href="index.php?view_enquiry"> View Enquiry Types </a>

                        </li>

                    </ul>

                </li><!-- contact us li Ends -->

                <li><!-- about us li Starts -->

                    <a href="index.php?edit_about_us">

                        <i class="fa fa-fw fa-gg"></i> 关于我们

                    </a>

                </li><!-- about us li Ends -->


                <li><!-- terms li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#terms"><!-- anchor Starts -->

                        <i class="fa fa-fw fa-gg"></i> 招贤纳士

                        <i class="fa fa-fw fa-caret-down"></i>

                    </a><!-- anchor Ends -->

                    <ul id="terms" class="collapse"><!-- ul collapse Starts -->

                        <li>
                            <a href="index.php?insert_term"> Insert Terms </a>
                        </li>

                        <li>
                            <a href="index.php?view_terms"> View Terms </a>
                        </li>

                    </ul><!-- ul collapse Ends -->


                </li><!-- terms li Ends -->

                <li><!-- li Starts -->

                    <a href="#" data-toggle="collapse" data-target="#users">

                        <i class="fa fa-fw fa-gg"></i> 管理员们

                        <i class="fa fa-fw fa-caret-down"></i>


                    </a>

                    <ul id="users" class="collapse">

                        <li>
                            <a href="index.php?insert_user"> Insert User </a>
                        </li>

                        <li>
                            <a href="index.php?view_users"> View Users </a>
                        </li>

                        <li>
                            <a href="index.php?user_profile=<?php echo $admin_id; ?>"> Edit Profile </a>
                        </li>

                    </ul>

                </li><!-- li Ends -->


            </ul><!-- nav navbar-nav side-nav Ends -->

        </div><!-- collapse navbar-collapse navbar-ex1-collapse Ends -->

    </nav><!-- navbar navbar-inverse navbar-fixed-top Ends -->

<?php } ?>