<?php

if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>
    <!DOCTYPE html>

    <html>

    <head>

        <title> Insert Products </title>


        <script src="ckeditor/ckeditor.js"></script>

    </head>

    <body>

    <div class="row"><!-- row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"> </i> Dashboard / Insert Products

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- row Ends -->


    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title">

                        <i class="fa fa-money fa-fw"></i> Insert Products

                    </h3>

                </div><!-- panel-heading Ends -->

                <div class="panel-body"><!-- panel-body Starts -->

                    <form class="form-horizontal" method="post" enctype="multipart/form-data">
                        <!-- form-horizontal Starts -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Post ID </label>

                            <div class="col-md-6">

                                <input type="number" name="post_id" class="form-control" required>

                                <br>

                                <p style="font-size:15px; font-weight:bold;">

                                    Post ID Example : 20191025

                                </p>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Product Title </label>

                            <div class="col-md-6">

                                <input type="text" name="product_title" class="form-control" required>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Product Url </label>

                            <div class="col-md-6">

                                <input type="text" name="product_url" class="form-control" required>

                                <br>

                                <p style="font-size:15px; font-weight:bold;">

                                    Product Url Example : study-permit-extension

                                </p>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Country </label>

                            <div class="col-md-6">

                                <!-- select manufacturer Starts -->

                                <select class="form-control" name="manufacturer">


                                        <?php

                                        $get_manufacturer = "select * from manufacturers";
                                        $run_manufacturer = mysqli_query($con, $get_manufacturer);
                                        while ($row_manufacturer = mysqli_fetch_array($run_manufacturer)) {
                                            $manufacturer_id = $row_manufacturer['manufacturer_id'];
                                            $manufacturer_title = $row_manufacturer['manufacturer_title'];

                                            echo "<option value='$manufacturer_id'>
$manufacturer_title
</option>";

                                        }

                                        ?>

                                </select><!-- select manufacturer Ends -->

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Product Category </label>

                            <div class="col-md-6">

                                <select name="product_cat" class="form-control" required>

                                    <option> Select a Product Category</option>


                                    <?php

                                    $get_p_cats = "select * from product_categories";

                                    $run_p_cats = mysqli_query($con, $get_p_cats);

                                    while ($row_p_cats = mysqli_fetch_array($run_p_cats)) {

                                        $p_cat_id = $row_p_cats['p_cat_id'];

                                        $p_cat_title = $row_p_cats['p_cat_title'];

                                        echo "<option value='$p_cat_id' >$p_cat_title</option>";

                                    }


                                    ?>


                                </select>

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Category </label>

                            <div class="col-md-6">


                                <select name="cat" class="form-control">

                                    <option> Select a Category</option>

                                    <?php

                                    $get_cat = "select * from categories ";

                                    $run_cat = mysqli_query($con, $get_cat);

                                    while ($row_cat = mysqli_fetch_array($run_cat)) {

                                        $cat_id = $row_cat['cat_id'];

                                        $cat_title = $row_cat['cat_title'];

                                        echo "<option value='$cat_id'>$cat_title</option>";

                                    }

                                    ?>


                                </select>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Product Price </label>

                            <div class="col-md-6">

                                <input type="text" name="product_price" class="form-control" required>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Product Description </label>

                            <div class="col-md-6">


                                <div class="tab-content"><!-- tab-content Starts -->

                                    <div id="description" class="tab-pane fade in active">
                                        <!-- description tab-pane fade in active Starts -->

                                        <br>

                                        <textarea name="product_desc" class="form-control" rows="15"
                                                  id="product_desc"></textarea>
                                        <script>
                                            CKEDITOR.inline('product_desc');
                                        </script>


                                    </div><!-- description tab-pane fade in active Ends -->


                                </div><!-- tab-content Ends -->

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"></label>

                            <div class="col-md-6">

                                <input type="submit" name="submit" value="Insert Product"
                                       class="btn btn-primary form-control">

                            </div>


                        </div><!-- form-group Ends -->

                    </form><!-- form-horizontal Ends -->

                </div><!-- panel-body Ends -->

            </div><!-- panel panel-default Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- 2 row Ends -->


    </body>

    </html>

    <?php

    if (isset($_POST['submit'])) {

        $product_title = $_POST['product_title'];
        $product_cat = $_POST['product_cat'];
        $cat = $_POST['cat'];
        $manufacturer_id = $_POST['manufacturer'];
        $product_price = $_POST['product_price'];
        $product_desc = $_POST['product_desc'];
        $product_keywords = $_POST['product_keywords'];

        $product_url = $_POST['product_url'];

        $post_id = $_POST['post_id'];


        $status = "product";


        $insert_product = "insert into products (p_cat_id,cat_id,manufacturer_id,post_id,date,product_title,product_url,product_price,product_desc,status) values ('$product_cat','$cat','$manufacturer_id','$post_id',NOW(),'$product_title','$product_url','$product_price','$product_desc','$status')";

        $run_product = mysqli_query($con, $insert_product);

        if ($run_product) {

            echo "<script>alert('Product has been inserted successfully')</script>";

            echo "<script>window.open('index.php?view_products','_self')</script>";

        }

    }

    ?>

<?php } ?>
