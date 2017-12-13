<?php

if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {


    ?>

    <?php

    if (isset($_GET['edit_ee'])) {

        $edit_id = $_GET['edit_ee'];

        $edit_ee = "select * from express_entry where id='$edit_id'";

        $run_edit = mysqli_query($con, $edit_ee);

        $row_edit = mysqli_fetch_array($run_edit);

        $ee_id = $row_edit['id'];

        $ee_times = $row_edit['times'];

        $ee_date = $row_edit['date'];

        $ee_score = $row_edit['score'];

        $ee_number = $row_edit['number'];

    }

    ?>

    <div class="row"><!-- 1 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li>

                    <i class="fa fa-dashboard"></i> Dashboard / Edit Express Entry

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 1 row Ends -->


    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title"><!-- panel-title Starts -->

                        <i class="fa fa-money fa-fw"></i> Edit Express Entry

                    </h3><!-- panel-title Ends -->

                </div><!-- panel-heading Ends -->

                <div class="panel-body"><!-- panel-body Starts -->

                    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                        <!-- form-horizontal Starts -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label">次数</label>

                            <div class="col-md-6">

                                <input type="number" name="times" class="form-control" min="1" value="<?php echo $ee_times?>">

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label">日期</label>

                            <div class="col-md-6">

                                <input type="date" name="date" class="form-control" value="<?php echo $ee_date;?>">

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label">分数</label>

                            <div class="col-md-6">

                                <input type="number" name="score" class="form-control" min="0" value="<?php echo $ee_score;?>">

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label">人数</label>

                            <div class="col-md-6">

                                <input type="number" name="number" class="form-control" min="0" value="<?php echo $ee_number;?>">

                            </div>

                        </div><!-- form-group Ends -->



                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"></label>

                            <div class="col-md-6">

                                <input type="submit" name="update" value="Update EE"
                                       class="btn btn-primary form-control">

                            </div>

                        </div><!-- form-group Ends -->

                    </form><!-- form-horizontal Ends -->

                </div><!-- panel-body Ends -->

            </div><!-- panel panel-default Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 2 row Ends -->

    <?php

    if (isset($_POST['update'])) {

        $ee_times = $_POST['times'];

        $ee_date = $_POST['date'];

        $ee_score = $_POST['score'];

        $ee_number = $_POST['number'];



        $update_ee = "update express_entry set times='$ee_times',date='$ee_date',score='$ee_score',number='$ee_number' where id='$ee_id'";

        $run_ee = mysqli_query($con, $update_ee);

        if ($run_ee) {

            echo "<script>alert('Updated')</script>";

            echo "<script>window.open('index.php?view_ee','_self')</script>";

        }

    }


    ?>

<?php } ?>