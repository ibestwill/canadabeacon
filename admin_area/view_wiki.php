<?php


if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>


    <div class="row"><!--  1 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"></i> Dashboard / View Wiki

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!--  1 row Ends -->

    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title"><!-- panel-title Starts -->

                        <i class="fa fa-money fa-fw"></i> View Wiki

                    </h3><!-- panel-title Ends -->


                </div><!-- panel-heading Ends -->

                <div class="panel-body"><!-- panel-body Starts -->

                    <div class="table-responsive"><!-- table-responsive Starts -->

                        <table class="table table-bordered table-hover table-striped">
                            <!-- table table-bordered table-hover table-striped Starts -->

                            <thead>

                            <tr>
                                <th>Post ID</th>
                                <th>Title</th>
                                <th>Features</th>
                                <th>Date</th>
                                <th>Delete</th>
                                <th>Edit</th>


                            </tr>

                            </thead>

                            <tbody>

                            <?php

                            $i = 0;

                            $get_pro = "select * from products where status='wiki' ORDER BY date DESC";

                            $run_pro = mysqli_query($con, $get_pro);

                            while ($row_pro = mysqli_fetch_array($run_pro)) {

                                $pro_id = $row_pro['product_id'];

                                $pro_title = $row_pro['product_title'];

                                $pro_feature = $row_pro['product_features'];

                                $pro_date = $row_pro['date'];

                                $post_id = $row_pro['post_id'];

                                $i++;

                                ?>

                                <tr>

                                    <td><?php echo $post_id; ?></td>

                                    <td><?php echo $pro_title; ?></td>

                                    <td><?php echo $pro_feature; ?></td>

                                    <td><?php echo $pro_date; ?></td>

                                    <td>

                                        <a href="index.php?delete_wiki=<?php echo $pro_id; ?>">

                                            <i class="fa fa-trash-o"> </i> Delete

                                        </a>

                                    </td>

                                    <td>

                                        <a href="index.php?edit_wiki=<?php echo $pro_id; ?>">

                                            <i class="fa fa-pencil"> </i> Edit

                                        </a>

                                    </td>

                                </tr>

                            <?php } ?>


                            </tbody>


                        </table><!-- table table-bordered table-hover table-striped Ends -->

                    </div><!-- table-responsive Ends -->

                </div><!-- panel-body Ends -->

            </div><!-- panel panel-default Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 2 row Ends -->


<?php } ?>