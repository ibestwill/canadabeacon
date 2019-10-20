<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">



        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>加国灯塔</title>

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/cb-logo.png" />

    </head>

    <body>

        <?php

        include("includes/header.php");

        ?>


            <div class="container"><!-- container Starts -->

                <div class="col-md-3"><!-- col-md-3 Starts -->

                    <div class="box"><!-- box Starts -->

                        <ul class="nav nav-pills nav-stacked"><!-- nav nav-pills nav-stacked Starts -->

                            <?php

                            $get_terms = "select * from terms LIMIT 0,1";

                            $run_terms = mysqli_query($con,$get_terms);

                            while($row_terms = mysqli_fetch_array($run_terms)){ 

                                $term_title = $row_terms['term_title'];

                                $term_link = $row_terms['term_link'];

                            ?>

                            <li class="active">

                                <a data-toggle="pill" href="#<?php echo $term_link; ?>">

                                    <?php echo $term_title; ?>

                                </a>

                            </li>

                            <?php } ?>

                            <?php

                            $count_terms = "select * from terms";

                            $run_count = mysqli_query($con,$count_terms);

                            $count = mysqli_num_rows($run_count);

                            $get_terms = "select * from terms LIMIT 1,$count";

                            $run_terms = mysqli_query($con,$get_terms);

                            while($row_terms = mysqli_fetch_array($run_terms)){

                                $term_title = $row_terms['term_title'];

                                $term_link = $row_terms['term_link'];

                            ?>

                            <li>

                                <a data-toggle="pill" href="#<?php echo $term_link; ?>">

                                    <?php echo $term_title; ?>

                                </a>

                            </li>

                            <?php } ?>

                        </ul><!-- nav nav-pills nav-stacked Ends -->

                    </div><!-- box Ends -->

                </div><!-- col-md-3 Ends -->

                <div class="col-md-9"><!-- col-md-9 Starts -->

                    <div class="box"><!-- box Starts -->

                        <div class="tab-content" ><!-- tab-content Starts -->

                            <?php

                            $get_terms = "select * from terms LIMIT 0,1";

                            $run_terms = mysqli_query($con,$get_terms);

                            while($row_terms = mysqli_fetch_array($run_terms)){

                                $term_title = $row_terms['term_title'];

                                $term_desc = $row_terms['term_desc'];

                                $term_link = $row_terms['term_link'];

                            ?>

                            <div id="<?php echo $term_link; ?>" class="tab-pane fade in active" ><!-- tab-pane fade in active Starts -->

                                <h1> <?php echo $term_title; ?>  </h1>

                                <p> <?php echo $term_desc; ?> </p>

                            </div><!-- tab-pane fade in active Ends -->

                            <?php } ?>


                            <?php

                            $count_terms = "select * from terms";

                            $run_count = mysqli_query($con,$count_terms);

                            $count = mysqli_num_rows($run_count);

                            $get_terms = "select * from terms LIMIT 1,$count";

                            $run_terms = mysqli_query($con,$get_terms);

                            while($row_terms = mysqli_fetch_array($run_terms)){

                                $term_title = $row_terms['term_title'];

                                $term_desc = $row_terms['term_desc'];

                                $term_link = $row_terms['term_link'];

                            ?>

                            <div id="<?php echo $term_link; ?>" class="tab-pane fade in"><!-- tab-pane fade in Starts -->


                                <h1><?php echo $term_title; ?></h1>

                                <p><?php echo $term_desc; ?></p>


                            </div><!-- tab-pane fade in Ends -->

                            <?php } ?>

                        </div><!-- tab-content Ends -->

                    </div><!-- box Ends -->


                </div><!-- col-md-9 Ends -->

            </div><!-- container Ends -->



        <?php

        include("includes/footer.php");

        ?>

        <script src="js/jquery.min.js"> </script>

        <script src="js/bootstrap.min.js"></script>

    </body>
</html>