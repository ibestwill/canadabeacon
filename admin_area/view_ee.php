<?php


if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>

    <div class="row"><!-- 1 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"></i> Dashboard / View Express Entry

                </li>

            </ol><!-- breadcrumb Ends -->


        </div><!-- col-lg-12 Ends -->

    </div><!-- 1 row Ends -->

    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title">

                        <i class="fa fa-money fa-fw"></i> <a href="index.php?insert_ee"> 添加快速通道 </a>


                    </h3>

                </div><!-- panel-heading Ends -->

                <div class="panel-body"><!-- panel-body Starts -->

                    <div class="table-responsive"><!-- table-responsive Starts -->

                        <table class="table table-bordered table-hover table-striped">
                            <!-- table-bordered table-hover table-striped Starts -->

                            <thead><!-- thead Starts -->

                            <tr>

                                <th>编号</th>
                                <th>次数</th>
                                <th>日期</th>
                                <th>分数</th>
                                <th>人数</th>
                                <th>Delete</th>
                                <th>Edit</th>


                            </tr>

                            </thead><!-- thead Ends -->

                            <tbody><!-- tbody Starts -->

                            <?php

                            $i = 0;

                            $get_ee = "select * from express_entry ORDER BY times DESC";

                            $run_ee = mysqli_query($con, $get_ee);

                            while ($row_ee = mysqli_fetch_array($run_ee)) {

                                $ee_id = $row_ee['id'];

                                $ee_times = $row_ee['times'];

                                $ee_date = $row_ee['date'];

                                $ee_score = $row_ee['score'];

                                $ee_number = $row_ee['number'];

                                $i++;


                                ?>

                                <tr>

                                    <td><?php echo $i; ?></td>

                                    <td><?php echo $ee_times; ?></td>

                                    <td><?php echo $ee_date; ?></td>

                                    <td><?php echo $ee_score; ?></td>

                                    <td><?php echo $ee_number; ?></td>


                                    <td>

                                        <a href="index.php?delete_ee=<?php echo $ee_id; ?>">

                                            <i class="fa fa-trash-o"></i> Delete

                                        </a>

                                    </td>

                                    <td>

                                        <a href="index.php?edit_ee=<?php echo $ee_id; ?>">

                                            <i class="fa fa-pencil"></i> Edit

                                        </a>

                                    </td>

                                </tr>


                            <?php } ?>

                            </tbody><!-- tbody Ends -->

                        </table><!-- table-bordered table-hover table-striped Ends -->


                    </div><!-- table-responsive Ends -->

                </div><!-- panel-body Ends -->

            </div><!-- panel panel-default Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 2 row Ends -->


<?php } ?>