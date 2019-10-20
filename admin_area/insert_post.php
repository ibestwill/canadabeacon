<?php

if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>
    <!DOCTYPE html>

    <html>

    <head>

        <title> Insert Posts </title>


        <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
        <script src="ckeditor/ckeditor.js"></script>

    </head>

    <body>

    <div class="row"><!-- row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <ol class="breadcrumb"><!-- breadcrumb Starts -->

                <li class="active">

                    <i class="fa fa-dashboard"> </i> Dashboard / Insert Post

                </li>

            </ol><!-- breadcrumb Ends -->

        </div><!-- col-lg-12 Ends -->

    </div><!-- row Ends -->


    <div class="row"><!-- 2 row Starts -->

        <div class="col-lg-12"><!-- col-lg-12 Starts -->

            <div class="panel panel-default"><!-- panel panel-default Starts -->

                <div class="panel-heading"><!-- panel-heading Starts -->

                    <h3 class="panel-title">

                        <i class="fa fa-money fa-fw"></i> <a href="index.php?view_posts"> 取消添加 </a>

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

                            <label class="col-md-3 control-label"> Post Title </label>

                            <div class="col-md-6">

                                <input type="text" name="product_title" class="form-control" required>

                            </div>

                        </div><!-- form-group Ends -->



                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Short Description </label>

                            <div class="col-md-6">

                                <textarea type="text" name="product_features" class="form-control" rows="2"></textarea>

                            </div>

                        </div><!-- form-group Ends -->


                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Post Url </label>

                            <div class="col-md-6">

                                <input type="text" name="product_url" class="form-control" required>

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

                                    <option></option>

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

                            <label class="col-md-3 control-label"> Post Image </label>

                            <div class="col-md-6">

                                <input type="file" name="product_img1" class="form-control">

                            </div>

                        </div><!-- form-group Ends -->




                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"> Content </label>

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

                            <label class="col-md-3 control-label"> Post Label </label>

                            <div class="col-md-6">

                                <!--                                <input type="text" name="product_label" class="form-control" required>-->

                                <select name="product_label" class="form-control" required>

                                    <option> Select a Post Label</option>


                                    <?php

                                    $get_p_cats = "select * from product_categories";

                                    $run_p_cats = mysqli_query($con, $get_p_cats);

                                    while ($row_p_cats = mysqli_fetch_array($run_p_cats)) {

                                        $p_cat_id = $row_p_cats['p_cat_id'];

                                        $p_cat_title = $row_p_cats['p_cat_title'];

                                        echo "<option value='$p_cat_title' >$p_cat_title</option>";

                                    }


                                    ?>


                                </select>

                            </div>

                        </div><!-- form-group Ends -->

                        <div class="form-group"><!-- form-group Starts -->

                            <label class="col-md-3 control-label"></label>

                            <div class="col-md-6">

                                <input type="submit" name="submit" value="Insert Post"
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
        $product_features = $_POST['product_features'];
        $product_cat = 5;
        $post_id = $_POST['post_id'];
        $cat_id = $_POST['cat'];
        $product_desc = $_POST['product_desc'];
        $product_label = $_POST['product_label'];
        $product_url = $_POST['product_url'];
        $status = "post";
        $product_img1 = $_FILES['product_img1']['name'];
        $temp_name1 = $_FILES['product_img1']['tmp_name'];


        move_uploaded_file($temp_name1, "product_images/$product_img1");


        $insert_post = "insert into products (p_cat_id,cat_id,post_id,date,product_title,product_url,product_img1,product_desc,product_label,status,product_features) values ('$product_cat','$cat_id','$post_id',NOW(),'$product_title','$product_url','$product_img1','$product_desc','$product_label','$status','$product_features')";

        $run_post = mysqli_query($con, $insert_post);

        if ($run_post) {

            echo "<script>alert('Post has been inserted successfully')</script>";

            echo "<script>window.open('index.php?view_posts','_self')</script>";

        }else{

            echo "<script>alert('Post failed to insert')</script>";
        }

    }

    ?>

<?php } ?>
