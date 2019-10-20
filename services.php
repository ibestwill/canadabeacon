<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>

<html>

    <head>

        <title>Hello World </title>

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/favicon.ico" />

    </head>

    <body>

        <?php

        include("includes/header.php");

        ?>


        <div id="content" ><!-- content Starts -->
            <div class="container" ><!-- container Starts -->


                <div class="col-md-12" ><!-- col-md-12 Starts -->

                    <div class="box" ><!-- box Starts -->

                        <?php

                        $get_about_us = "select * from about_us";

                        $run_about_us = mysqli_query($con,$get_about_us);

                        $row_about_us = mysqli_fetch_array($run_about_us);

                        $about_heading = $row_about_us['about_heading'];

                        $about_short_desc = $row_about_us['about_short_desc'];

                        $about_desc = $row_about_us['about_desc'];

                        ?>

                        <h1> <?php echo $about_heading; ?> </h1>

                        <p class="lead"> <?php echo $about_short_desc; ?> </p>

                        <p> <?php echo $about_desc; ?> </p>

                    </div><!-- box Ends -->

                </div><!-- col-md-12 Ends -->

                <br>

                <div class="col-md-12" ><!-- col-md-12 Starts -->


                        <?php

                        $get_services = "select * from services";

                        $run_services = mysqli_query($con,$get_services);

                        while($row_services = mysqli_fetch_array($run_services)){

                            $service_id = $row_services['service_id'];

                            $service_title = $row_services['service_title'];

                            $service_image = $row_services['service_image'];

                            $service_desc = $row_services['service_desc'];

                            $service_button = $row_services['service_button'];

                            $service_url = $row_services['service_url'];

                            ?>

                            <div class="col-md-12 box"><!-- col-md-4 col-sm-6 box Starts -->

                                <div class="row">
                                    <div class="col-md-3">
                                        <img src="admin_area/services_images/<?php echo $service_image; ?>" class="img-responsive" align="bottom">
                                    </div>
                                    <div class="col-md-9">
                                        <h2 align="center"> <?php echo $service_title; ?> </h2>

                                        <p>
                                            <?php echo $service_desc; ?>
                                        </p>
                                    </div>

                                </div>






                            </div><!-- col-md-4 col-sm-6 box Ends -->

                        <?php } ?>


                </div><!-- col-md-12 Ends -->

            </div>
        </div>






        <?php

        include("includes/footer.php");

        ?>

        <script src="js/jquery.min.js"> </script>

        <script src="js/bootstrap.min.js"></script>

    </body>
</html>