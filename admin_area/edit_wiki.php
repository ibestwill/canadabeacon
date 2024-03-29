<?php

if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>

    <?php

    if (isset($_GET['edit_wiki'])) {

        $edit_id = $_GET['edit_wiki'];

        $get_p = "select * from products where product_id='$edit_id'";

        $run_edit = mysqli_query($con, $get_p);

        $row_edit = mysqli_fetch_array($run_edit);

        $p_id = $row_edit['product_id'];

        $po_id = $row_edit['post_id'];

        $p_title = $row_edit['product_title'];

        $p_cat = $row_edit['p_cat_id'];

        $cat = $row_edit['cat_id'];

        $m_id = $row_edit['manufacturer_id'];

        $p_image1 = $row_edit['product_img1'];

        $p_image2 = $row_edit['product_img2'];

        $p_image3 = $row_edit['product_img3'];

        $new_p_image1 = $row_edit['product_img1'];

        $new_p_image2 = $row_edit['product_img2'];

        $new_p_image3 = $row_edit['product_img3'];

        $p_price = $row_edit['product_price'];

        $p_desc = $row_edit['product_desc'];

        $p_keywords = $row_edit['product_keywords'];

        $psp_price = $row_edit['product_psp_price'];

        $p_label = $row_edit['product_label'];

        $p_url = $row_edit['product_url'];

        $p_features = $row_edit['product_features'];

        $p_video = $row_edit['product_video'];

    }

    $get_manufacturer = "select * from manufacturers where manufacturer_id='$m_id'";

    $run_manufacturer = mysqli_query($con, $get_manufacturer);

    $row_manfacturer = mysqli_fetch_array($run_manufacturer);

    $manufacturer_id = $row_manfacturer['manufacturer_id'];

    $manufacturer_title = $row_manfacturer['manufacturer_title'];


    $get_p_cat = "select * from product_categories where p_cat_id='$p_cat'";

    $run_p_cat = mysqli_query($con, $get_p_cat);

    $row_p_cat = mysqli_fetch_array($run_p_cat);

    $p_cat_title = $row_p_cat['p_cat_title'];

    $get_cat = "select * from categories where cat_id='$cat'";

    $run_cat = mysqli_query($con, $get_cat);

    $row_cat = mysqli_fetch_array($run_cat);

    $cat_title = $row_cat['cat_title'];

    ?>


    <!DOCTYPE html>

    <html>

    <head>

        <title> Edit Post </title>


        <script src="ckeditor/ckeditor.js"></script>

    </head>

    <body>

    <div class="row"><!-- row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"> </i> Dashboard / Edit Post

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- row Ends -->


    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title">

                        <i class="fa fa-money fa-fw"></i> Edit Post

                    </h3>

                </div><!-- panel-heading Ends -->

                <div class="panel-body"><!-- panel-body Starts -->

                    <form class="form-horizontal" method="post" enctype="multipart/form-data">
                        <!-- form-horizontal Starts -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Post ID </label>

                            <div class="col-md-6">

                                <input type="number" name="post_id" class="form-control" required
                                       value="<?php echo $po_id; ?>">

                                <br>

                                <p style="font-size:15px; font-weight:bold;">

                                    Post ID Example : 20191025

                                </p>

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Post Title </label>

                            <div class="col-md-6">

                                <input type="text" name="product_title" class="form-control" required
                                       value="<?php echo $p_title; ?>">

                            </div>

                        </div><!-- form-group Ends -->



                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Short Description </label>

                            <div class="col-md-6">

                                <textarea type="text" name="product_features" class="form-control" rows="2"><?php echo $p_features; ?></textarea>

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Post Url </label>

                            <div class="col-md-6">

                                <input type="text" name="product_url" class="form-control" required
                                       value="<?php echo $p_url; ?>">

                                <br>

                                <p style="font-size:15px; font-weight:bold;">

                                    URL Example : study-permit-extension

                                </p>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label">Sub Category </label>

                            <div class="col-md-6">


                                <select name="cat" class="form-control">

                                    <option value="<?php echo $cat; ?>"> <?php echo $cat_title; ?> </option>

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

                            <label class="col-md-3 control-label"> Wiki Image 1 </label>

                            <div class="col-md-6">

                                <input type="file" name="product_img1" class="form-control">
                                <br><img src="product_images/<?php echo $p_image1; ?>" width="100" height="70">

                            </div>

                        </div><!-- form-group Ends -->




                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Content </label>

                            <div class="col-md-6">


                                <div class="tab-content"><!-- tab-content Starts -->

                                    <div id="description" class="tab-pane fade in active">
                                        <!-- description tab-pane fade in active Starts -->

                                        <br>

                                        <textarea name="product_desc" class="form-control" rows="15" id="product_desc"><?php echo $p_desc; ?></textarea>

                                        <script>
                                            CKEDITOR.inline('product_desc');
                                        </script>

                                    </div><!-- description tab-pane fade in active Ends -->

                                </div><!-- tab-content Ends -->

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Wiki Label </label>

                            <div class="col-md-6">

                                <input type="text" name="product_label" class="form-control" required
                                       value="<?php echo $p_label; ?>">

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"></label>

                            <div class="col-md-6">

                                <input type="submit" name="update" value="Update Product"
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

    if (isset($_POST['update'])) {

        $product_title = $_POST['product_title'];
        $product_cat = 4;
        $cat = $_POST['cat'];
        $manufacturer_id = $_POST['manufacturer'];

        $post_id = $_POST['post_id'];

        $product_price = $_POST['product_price'];
        $product_desc = $_POST['product_desc'];
        $product_keywords = $_POST['product_keywords'];

        $psp_price = $_POST['psp_price'];

        $product_label = $_POST['product_label'];


        $product_url = $_POST['product_url'];

        $product_features = $_POST['product_features'];

        $product_video = $_POST['product_video'];

        $status = "wiki";

        $product_img1 = $_FILES['product_img1']['name'];
        $product_img2 = $_FILES['product_img2']['name'];
        $product_img3 = $_FILES['product_img3']['name'];

        $temp_name1 = $_FILES['product_img1']['tmp_name'];
        $temp_name2 = $_FILES['product_img2']['tmp_name'];
        $temp_name3 = $_FILES['product_img3']['tmp_name'];

        if (empty($product_img1)) {

            $product_img1 = $new_p_image1;

        }


        if (empty($product_img2)) {

            $product_img2 = $new_p_image2;

        }

        if (empty($product_img3)) {

            $product_img3 = $new_p_image3;

        }


        move_uploaded_file($temp_name1, "product_images/$product_img1");
        move_uploaded_file($temp_name2, "product_images/$product_img2");
        move_uploaded_file($temp_name3, "product_images/$product_img3");

        $update_product = "update products set p_cat_id='$product_cat',cat_id='$cat',manufacturer_id='$manufacturer_id',post_id='$post_id',date=NOW(),product_title='$product_title',product_url='$product_url',product_img1='$product_img1',product_img2='$product_img2',product_img3='$product_img3',product_price='$product_price',product_psp_price='$psp_price',product_desc='$product_desc',product_features='$product_features',product_video='$product_video',product_keywords='$product_keywords',product_label='$product_label',status='$status' where product_id='$p_id'";

        $run_product = mysqli_query($con, $update_product);

        if ($run_product) {

            echo "<script> alert('Wiki has been updated successfully') </script>";

            echo "<script>window.open('index.php?view_wiki','_self')</script>";

        }

    }

    ?>

<?php } ?>
