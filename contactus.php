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
    <title>Canada Beacon Immigration Services</title>

    <!-- Bootstrap -->
    <link href="store/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="store/css/style.css">
    <link rel="stylesheet" href="store/css/font-awesome.min.css">
    <link rel="stylesheet" href="store/css/superslides/superslides.css">
    <link rel="stylesheet" href="store/css/fancybox/jquery.fancybox.css">
    <link rel="stylesheet" href="store/css/plugin/animate.css">
    <link rel="stylesheet" href="store/css/plugin/owl.carousel.css">
    <link rel="stylesheet" href="store/css/plugin/owl.theme.css">
    <link rel="stylesheet" href="store/css/plugin/owl.transitions.css">
    <link rel="stylesheet" href="store/css/plugin/magnific-popup.css">
    <link rel="stylesheet" href="store/css/plugin/nivo-lightbox.css">
    <link rel="stylesheet" href="store/css/themes/default/default.css">
    <link rel="shortcut icon" href="images/cb-logo.png"/>


    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Raleway:100,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>


    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>


</head>

<body id="home">


<!--Navigation Starts-->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container"><!--Container Starts-->
        <div class="navbar-header"><!--navbar-header Starts-->
            <a class="navbar-brand page-scroll" href="en">
  					<span class="logo">
  						<img src="images/cb-dark-long.png" height="45">
  					</span>
            </a>
        </div><!--navbar-header Ends-->
    </div><!--Container Ends-->
</nav>
<!--Navigation ends-->


<!--  签证 Section Starts -->
<section class="liuxue content-section" id="liuxue">
    <div class="container"><!-- container Starts -->
        <div class="row text-center"><!-- row Starts -->
            <?php

            $get_contact_us = "select * from contact_us";

            $run_conatct_us = mysqli_query($con, $get_contact_us);

            $row_conatct_us = mysqli_fetch_array($run_conatct_us);

            $contact_heading = $row_conatct_us['contact_heading'];

            $contact_desc = $row_conatct_us['contact_desc'];

            $contact_email = $row_conatct_us['contact_email'];

            ?>

            <div class="col-md-12"><!-- col-md-12 Starts -->
                <h2>CONTACT US</h2>
                <h3 class="caption white">We will respond to your inquiry within 24 hours.</h3>
            </div><!-- col-md-12 Ends -->
        </div><!-- row Ends -->
    </div><!-- container Ends -->

    <div class="container"><!-- container Starts -->
        <div class="row"><!-- row Starts -->

            <div class="col-md-12"><!-- col-md-4 Starts -->

                <form action="contactus.php" method="post"><!-- form Starts -->

                    <div class="form-group"><!-- form-group Starts -->

                        <label>NAME</label>

                        <input type="text" class="form-control" name="name" required>

                    </div><!-- form-group Ends -->

                    <div class="form-group"><!-- form-group Starts -->

                        <label>EMAIL</label>

                        <input type="text" class="form-control" name="email" required>

                    </div><!-- form-group Ends -->

                    <div class="form-group"><!-- form-group Starts -->

                        <label>PHONE NUMBER</label>

                        <input type="text" class="form-control" name="phone" required>

                    </div><!-- form-group Ends -->


                    <div class="form-group"><!-- form-group Starts -->

                        <label>SUBJECT</label>


                        <select name="subject" class="form-control" required><!-- select Starts -->

                            <option> - PLEASE CHOOSE THE INQUIRY TYPE -</option>
                            <option>IMMIGRATION</option>
                            <option>TEMPORARY RESIDENT VISA</option>
                            <option>EDUCATION</option>
                            <option>OTHER</option>

                        </select><!-- select Ends -->

                    </div><!-- form-group Ends -->


                    <div class="form-group"><!-- form-group Starts -->

                        <label> COMMENTS </label>

                        <textarea class="form-control" name="message" rows="6" required> </textarea>

                    </div><!-- form-group Ends -->

                    <p>&nbsp;</p>


                    <div class="text-center"><!-- text-center Starts -->

                        <button type="submit" name="submit" class="btn btn-danger">

                            <i class="fa fa-paper-plane-o" aria-hidden="true"></i> SUBMIT

                        </button>

                    </div><!-- text-center Ends -->

                </form><!-- form Ends -->

            </div><!-- col-md-4 Ends -->


        </div><!-- row Ends -->
    </div><!-- container Ends -->

</section>
<!--  签证 Section Ends -->


<!--  联系我们 Section Starts -->
<section class="liuxue content-section" id="liuxue">

    <div class="container"><!-- container Starts  -->

        <div class="col-md-12">
            <a href="en">
                <img src="images/cb-dark-long.png" width="300" class="img-responsive">
            </a>
        </div>

        <br>
        <br>


    </div><!-- container Ends  -->

    <!-- Footer Starts  -->
    <footer>

        <div class="row"><!-- row Starts  -->

            <div class="col-md-12 text-center">
                <p>&copy; 2019 Canada Beacon Immigration Services.</p>


            </div>


            <div class="col-md-12 text-center">

                <div class="col-md-5"></div>


                <div class="col-md-1">
                    <form action="language_switcher.php" method="post">

                        <input type="hidden" name="lang" value="cn">
                        <input type="image" src="images/CHINA.png" height="70">

                    </form>

                </div>

                <div class="col-md-1">
                    <div class="col-md-1">
                        <form action="language_switcher.php" method="post">

                            <input type="hidden" name="lang" value="en">
                            <input type="image" src="images/CANADA.png" height="70">

                        </form>
                    </div>

                </div>

                <div class="col-md-5"></div>

            </div>

        </div><!-- row Ends  -->


        <div class="nav pull-right scroll-top"><!-- nav pull-right scroll-top Starts  -->
            <a href="contactus" title="CONTACT US"><i class="fa fa-phone fa-2x"></i></a>
        </div><!-- nav pull-right scroll-top Ends  -->


    </footer>
    <!-- Footer Ends  -->


</section>
<!--  联系我们 Section Ends -->


<div class="modal fade" id="thankYou" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalCenterTitle">Sent Successfully！</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Thanks for your message. We will respond to your inquiry within 24 hours.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<script src="store/js/jquery/jquery.js"></script>

<script src="store/js/bootstrap.min.js"></script>
<script src="store/js/superslides/jquery.superslides.js"></script>
<script src="store/js/script.js"></script>
<script src="store/js/menu.js"></script>
<script src="store/js/fancybox/jquery.fancybox.pack.js"></script>
<script src="store/js/plugin/wow.min.js"></script>
<script src="store/js/plugin/owl.carousel.min.js"></script>

<script src="store/js/plugin/jquery.magnific-popup.min.js"></script>
<script src="store/js/plugin/nivo-lightbox.min.js"></script>
<script src="store/js/plugin/jquery.countTo.js"></script>
<script src="store/js/plugin/jquery.inview.min.js"></script>
<script src="store/js/plugin/jquery.easing.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>


<script>
    $(function () {
        $("#container div a").hover(function () {
            $("img", this).stop().animate({top: "-180px"}, {queue: false, duration: 200});
        }, function () {
            $("img", this).stop().animate({top: "0px"}, {queue: false, duration: 200});
        });
    });

</script>

</body>
</html>

<?php

if (isset($_POST['submit'])) {

    // Admin receives email through this code

    $sender_name = $_POST['name'];

    $sender_email = $_POST['email'];

    $sender_subject = $_POST['subject'];

    $sender_message = $_POST['message'];

    $sender_phone = $_POST['phone'];

    $new_message = "

<h3> This Message Has Been Sent By $sender_name </h3>

<p> <b> Sender Email :  </b> <br> $sender_email </p>

<p> <b> Sender Phone :  </b> <br> $sender_phone </p>

<p> <b> Sender Subject :  </b> <br> $sender_subject </p>

<p> <b> Sender Message :  </b> <br> $sender_message </p>

";

    $headers = "From: $sender_email \r\n";

    $headers .= "Content-type: text/html\r\n";

    if (mail($contact_email, $sender_subject, $new_message, $headers)) {
        echo "<script>$('#thankYou').modal('show');</script>";
    }


}


?>

