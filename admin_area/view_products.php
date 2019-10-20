<?php


if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>


    <div class="row"><!--  1 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"></i> Dashboard / View Products

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!--  1 row Ends -->

    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title"><!-- panel-title Starts -->

                        <i class="fa fa-money fa-fw"></i> View Products

                    </h3><!-- panel-title Ends -->


                </div><!-- panel-heading Ends -->

                <div class="panel-body"><!-- panel-body Starts -->


                    <!--Toggleable/Dyanmics Tabs Starts-->
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#menu1">全部</a></li>
                        <li><a data-toggle="tab" href="#menu2">移民</a></li>
                        <li><a data-toggle="tab" href="#menu3">签证</a></li>
                        <li><a data-toggle="tab" href="#menu4">留学</a></li>

                    </ul>

                    <div class="tab-content">

                        <!--所有 Tab-->
                        <div id="menu1" class="tab-pane fade in active">

                            <div class="table-responsive"><!-- table-responsive Starts -->

                                <table class="table table-bordered table-hover table-striped">
                                    <!-- table table-bordered table-hover table-striped Starts -->

                                    <thead>

                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Title</th>
                                        <th>Product Category</th>
                                        <th>Sub Category</th>
                                        <th>Product Price</th>
                                        <th>Product sold</th>
                                        <th>Product Date</th>
                                        <th>Product Delete</th>
                                        <th>Product Edit</th>


                                    </tr>

                                    </thead>

                                    <tbody>

                                    <?php

                                    $i = 0;

                                    $get_pro = "select * from products where status='product' order by p_cat_id, cat_id";

                                    $run_pro = mysqli_query($con, $get_pro);

                                    while ($row_pro = mysqli_fetch_array($run_pro)) {

                                        $pro_id = $row_pro['product_id'];

                                        $pro_title = $row_pro['product_title'];

                                        $pro_price = $row_pro['product_price'];

                                        $pro_cat = $row_pro['p_cat_id'];

                                        $sub_cat = $row_pro['cat_id'];

                                        $pro_keywords = $row_pro['product_keywords'];

                                        $pro_date = $row_pro['date'];

                                        $post_id = $row_pro['post_id'];

                                        $i++;

                                        ?>

                                        <tr>

                                            <td><?php echo $post_id; ?></td>

                                            <td><?php echo $pro_title; ?></td>
                                            <td>
                                                <?php

                                                $get_pro_cat = "select * from product_categories where p_cat_id = '$pro_cat'";
                                                $run_pro_cat = mysqli_query($con,$get_pro_cat);
                                                $row_pro_cat = mysqli_fetch_array($run_pro_cat);
                                                $pro_cat_title = $row_pro_cat['p_cat_title'];
                                                echo $pro_cat_title;

                                                ?>

                                            </td>


                                            <td><?php

                                                $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
                                                $run_sub_cat = mysqli_query($con,$get_sub_cat);
                                                $row_sub_cat = mysqli_fetch_array($run_sub_cat);
                                                $pro_sub_title = $row_sub_cat['cat_title'];
                                                echo $pro_sub_title;

                                                ?>
                                            </td>

                                            <td>$ <?php echo $pro_price; ?></td>

                                            <td>
                                                <?php

                                                $get_sold = "select * from pending_orders where product_id='$pro_id'";
                                                $run_sold = mysqli_query($con, $get_sold);
                                                $count = mysqli_num_rows($run_sold);
                                                echo $count;
                                                ?>
                                            </td>

                                            <td><?php echo $pro_date; ?></td>

                                            <td>

                                                <a href="index.php?delete_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-trash-o"> </i> Delete

                                                </a>

                                            </td>

                                            <td>

                                                <a href="index.php?edit_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-pencil"> </i> Edit

                                                </a>

                                            </td>

                                        </tr>

                                    <?php } ?>


                                    </tbody>


                                </table><!-- table table-bordered table-hover table-striped Ends -->

                            </div><!-- table-responsive Ends -->

                        </div>

                        <!--移民 Tab-->
                        <div id="menu2" class="tab-pane fade">

                            <div class="table-responsive"><!-- table-responsive Starts -->

                                <table class="table table-bordered table-hover table-striped">
                                    <!-- table table-bordered table-hover table-striped Starts -->

                                    <thead>

                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Title</th>
                                        <th>Product Category</th>
                                        <th>Sub Category</th>
                                        <th>Product Price</th>
                                        <th>Product sold</th>
                                        <th>Product Date</th>
                                        <th>Product Delete</th>
                                        <th>Product Edit</th>


                                    </tr>

                                    </thead>

                                    <tbody>

                                    <?php

                                    $i = 0;

                                    $get_pro = "select * from products where status='product' and p_cat_id='1' order by cat_id";

                                    $run_pro = mysqli_query($con, $get_pro);

                                    while ($row_pro = mysqli_fetch_array($run_pro)) {

                                        $pro_id = $row_pro['product_id'];

                                        $pro_title = $row_pro['product_title'];

                                        $pro_price = $row_pro['product_price'];

                                        $pro_cat = $row_pro['p_cat_id'];

                                        $sub_cat = $row_pro['cat_id'];

                                        $pro_keywords = $row_pro['product_keywords'];

                                        $pro_date = $row_pro['date'];

                                        $post_id = $row_pro['post_id'];

                                        $i++;

                                        ?>

                                        <tr>

                                            <td><?php echo $post_id; ?></td>

                                            <td><?php echo $pro_title; ?></td>
                                            <td>
                                                <?php

                                                $get_pro_cat = "select * from product_categories where p_cat_id = '$pro_cat'";
                                                $run_pro_cat = mysqli_query($con,$get_pro_cat);
                                                $row_pro_cat = mysqli_fetch_array($run_pro_cat);
                                                $pro_cat_title = $row_pro_cat['p_cat_title'];
                                                echo $pro_cat_title;

                                                ?>

                                            </td>


                                            <td><?php

                                                $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
                                                $run_sub_cat = mysqli_query($con,$get_sub_cat);
                                                $row_sub_cat = mysqli_fetch_array($run_sub_cat);
                                                $pro_sub_title = $row_sub_cat['cat_title'];
                                                echo $pro_sub_title;

                                                ?>
                                            </td>

                                            <td>$ <?php echo $pro_price; ?></td>

                                            <td>
                                                <?php

                                                $get_sold = "select * from pending_orders where product_id='$pro_id'";
                                                $run_sold = mysqli_query($con, $get_sold);
                                                $count = mysqli_num_rows($run_sold);
                                                echo $count;
                                                ?>
                                            </td>

                                            <td><?php echo $pro_date; ?></td>

                                            <td>

                                                <a href="index.php?delete_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-trash-o"> </i> Delete

                                                </a>

                                            </td>

                                            <td>

                                                <a href="index.php?edit_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-pencil"> </i> Edit

                                                </a>

                                            </td>

                                        </tr>

                                    <?php } ?>


                                    </tbody>


                                </table><!-- table table-bordered table-hover table-striped Ends -->

                            </div><!-- table-responsive Ends -->

                        </div>


                        <!--签证 Tab-->
                        <div id="menu3" class="tab-pane fade">

                            <div class="table-responsive"><!-- table-responsive Starts -->

                                <table class="table table-bordered table-hover table-striped">
                                    <!-- table table-bordered table-hover table-striped Starts -->

                                    <thead>

                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Title</th>
                                        <th>Product Category</th>
                                        <th>Sub Category</th>
                                        <th>Product Price</th>
                                        <th>Product sold</th>
                                        <th>Product Date</th>
                                        <th>Product Delete</th>
                                        <th>Product Edit</th>


                                    </tr>

                                    </thead>

                                    <tbody>

                                    <?php

                                    $i = 0;

                                    $get_pro = "select * from products where status='product' and p_cat_id='2' order by cat_id";

                                    $run_pro = mysqli_query($con, $get_pro);

                                    while ($row_pro = mysqli_fetch_array($run_pro)) {

                                        $pro_id = $row_pro['product_id'];

                                        $pro_title = $row_pro['product_title'];

                                        $pro_price = $row_pro['product_price'];

                                        $pro_cat = $row_pro['p_cat_id'];

                                        $sub_cat = $row_pro['cat_id'];

                                        $pro_keywords = $row_pro['product_keywords'];

                                        $pro_date = $row_pro['date'];

                                        $post_id = $row_pro['post_id'];

                                        $i++;

                                        ?>

                                        <tr>

                                            <td><?php echo $post_id; ?></td>

                                            <td><?php echo $pro_title; ?></td>
                                            <td>
                                                <?php

                                                $get_pro_cat = "select * from product_categories where p_cat_id = '$pro_cat'";
                                                $run_pro_cat = mysqli_query($con,$get_pro_cat);
                                                $row_pro_cat = mysqli_fetch_array($run_pro_cat);
                                                $pro_cat_title = $row_pro_cat['p_cat_title'];
                                                echo $pro_cat_title;

                                                ?>

                                            </td>


                                            <td><?php

                                                $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
                                                $run_sub_cat = mysqli_query($con,$get_sub_cat);
                                                $row_sub_cat = mysqli_fetch_array($run_sub_cat);
                                                $pro_sub_title = $row_sub_cat['cat_title'];
                                                echo $pro_sub_title;

                                                ?>
                                            </td>

                                            <td>$ <?php echo $pro_price; ?></td>

                                            <td>
                                                <?php

                                                $get_sold = "select * from pending_orders where product_id='$pro_id'";
                                                $run_sold = mysqli_query($con, $get_sold);
                                                $count = mysqli_num_rows($run_sold);
                                                echo $count;
                                                ?>
                                            </td>

                                            <td><?php echo $pro_date; ?></td>

                                            <td>

                                                <a href="index.php?delete_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-trash-o"> </i> Delete

                                                </a>

                                            </td>

                                            <td>

                                                <a href="index.php?edit_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-pencil"> </i> Edit

                                                </a>

                                            </td>

                                        </tr>

                                    <?php } ?>


                                    </tbody>


                                </table><!-- table table-bordered table-hover table-striped Ends -->

                            </div><!-- table-responsive Ends -->

                        </div>


                        <!--留学 Tab-->
                        <div id="menu4" class="tab-pane fade">

                            <div class="table-responsive"><!-- table-responsive Starts -->

                                <table class="table table-bordered table-hover table-striped">
                                    <!-- table table-bordered table-hover table-striped Starts -->

                                    <thead>

                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Title</th>
                                        <th>Product Category</th>
                                        <th>Sub Category</th>
                                        <th>Product Price</th>
                                        <th>Product sold</th>
                                        <th>Product Date</th>
                                        <th>Product Delete</th>
                                        <th>Product Edit</th>


                                    </tr>

                                    </thead>

                                    <tbody>

                                    <?php

                                    $i = 0;

                                    $get_pro = "select * from products where status='product' and p_cat_id='3' order by cat_id";

                                    $run_pro = mysqli_query($con, $get_pro);

                                    while ($row_pro = mysqli_fetch_array($run_pro)) {

                                        $pro_id = $row_pro['product_id'];

                                        $pro_title = $row_pro['product_title'];

                                        $pro_price = $row_pro['product_price'];

                                        $pro_cat = $row_pro['p_cat_id'];

                                        $sub_cat = $row_pro['cat_id'];

                                        $pro_keywords = $row_pro['product_keywords'];

                                        $pro_date = $row_pro['date'];

                                        $post_id = $row_pro['post_id'];

                                        $i++;

                                        ?>

                                        <tr>

                                            <td><?php echo $post_id = $row_pro['post_id'];; ?></td>

                                            <td><?php echo $pro_title; ?></td>
                                            <td>
                                                <?php

                                                $get_pro_cat = "select * from product_categories where p_cat_id = '$pro_cat'";
                                                $run_pro_cat = mysqli_query($con,$get_pro_cat);
                                                $row_pro_cat = mysqli_fetch_array($run_pro_cat);
                                                $pro_cat_title = $row_pro_cat['p_cat_title'];
                                                echo $pro_cat_title;

                                                ?>

                                            </td>


                                            <td><?php

                                                $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
                                                $run_sub_cat = mysqli_query($con,$get_sub_cat);
                                                $row_sub_cat = mysqli_fetch_array($run_sub_cat);
                                                $pro_sub_title = $row_sub_cat['cat_title'];
                                                echo $pro_sub_title;

                                                ?>
                                            </td>

                                            <td>$ <?php echo $pro_price; ?></td>

                                            <td>
                                                <?php

                                                $get_sold = "select * from pending_orders where product_id='$pro_id'";
                                                $run_sold = mysqli_query($con, $get_sold);
                                                $count = mysqli_num_rows($run_sold);
                                                echo $count;
                                                ?>
                                            </td>

                                            <td><?php echo $pro_date; ?></td>

                                            <td>

                                                <a href="index.php?delete_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-trash-o"> </i> Delete

                                                </a>

                                            </td>

                                            <td>

                                                <a href="index.php?edit_product=<?php echo $pro_id; ?>">

                                                    <i class="fa fa-pencil"> </i> Edit

                                                </a>

                                            </td>

                                        </tr>

                                    <?php } ?>


                                    </tbody>


                                </table><!-- table table-bordered table-hover table-striped Ends -->

                            </div><!-- table-responsive Ends -->

                        </div>


                    </div>

                    <!--Toggleable/Dyanmics Tabs Ends-->


                </div><!-- panel-body Ends -->

            </div><!-- panel panel-default Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 2 row Ends -->


<?php } ?>