<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

?>
<!DOCTYPE html>

<html>

<head>

    <title>Hello World </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

    <link href="styles/bootstrap.min.css" rel="stylesheet">

    <link href="styles/style.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<?php

include("includes/header.php");

?>


<div id="content"><!-- content Starts -->

    <div class="container"><!-- container Starts -->

        <div class="col-md-12" id="container">




        </div>

        <div class="col-md-12"><!-- col-md-12 Starts -->

            <div class="box"><!-- box Starts -->

                <div class="box-header"><!-- box-header Starts -->

                    <center><!-- center Starts -->

                        <?php

                        $get_contact_us = "select * from contact_us";

                        $run_conatct_us = mysqli_query($con, $get_contact_us);

                        $row_conatct_us = mysqli_fetch_array($run_conatct_us);

                        $contact_heading = $row_conatct_us['contact_heading'];

                        $contact_desc = $row_conatct_us['contact_desc'];

                        $contact_email = $row_conatct_us['contact_email'];

                        ?>

                        <h2> <?php echo $contact_heading; ?> </h2>

                        <p class="text-muted">
                            <?php echo $contact_desc; ?>
                        </p>

                    </center><!-- center Ends -->

                </div><!-- box-header Ends -->

                <div id="container" class="hidden-xs hidden-md hidden-sm">
                    <div class="col-md-4 box">

                        <a href="#"><img src="images\wechat.png" class="img-responsive"></a>

                    </div>

                    <div class="col-md-4 box">

                        <a href="#"><img src="images\phone.png" class="img-responsive"></a>

                    </div>

                    <div class="col-md-4 box">

                        <a href="#"><img src="images\email.png" class="img-responsive"></a>

                    </div>

                </div>


                <form action="contact.php" method="post"><!-- form Starts -->

                    <div class="form-group"><!-- form-group Starts -->

                        <label>姓名</label>

                        <input type="text" class="form-control" name="name" required>

                    </div><!-- form-group Ends -->

                    <div class="form-group"><!-- form-group Starts -->

                        <label>邮箱</label>

                        <input type="text" class="form-control" name="email" required>

                    </div><!-- form-group Ends -->

                    <div class="form-group"><!-- form-group Starts -->

                        <label>电话</label>

                        <input type="text" class="form-control" name="phone" required>

                    </div><!-- form-group Ends -->


                    <div class="form-group"><!-- form-group Starts -->

                        <label>主题</label>


                        <select name="subject" class="form-control" required><!-- select Starts -->

                            <option> - 请选择要咨询的主题 -</option>

                            <?php

                            $get_enquiry_types = "select * from enquiry_types";

                            $run_enquiry_types = mysqli_query($con, $get_enquiry_types);

                            while ($row_enquiry_types = mysqli_fetch_array($run_enquiry_types)) {

                                $enquiry_title = $row_enquiry_types['enquiry_title'];

                                echo "<option> $enquiry_title </option>";

                            }

                            ?>

                        </select><!-- select Ends -->

                    </div><!-- form-group Ends -->


                    <div class="form-group"><!-- form-group Starts -->

                        <label> 内容 </label>

                        <textarea class="form-control" name="message" required> </textarea>

                    </div><!-- form-group Ends -->


                    <div class="text-center"><!-- text-center Starts -->

                        <button type="submit" name="submit" class="btn btn-danger">

                            <i class="fa fa-paper-plane-o" aria-hidden="true"></i> 发送

                        </button>

                    </div><!-- text-center Ends -->

                </form><!-- form Ends -->

                <?php

                if (isset($_POST['submit'])) {

                    // Admin receives email through this code

                    $sender_name = $_POST['name'];

                    $sender_email = $_POST['email'];

                    $sender_subject = $_POST['subject'];

                    $sender_message = $_POST['message'];

                    $sender_phone = $_POST['phone'];

                    $new_message = "

<h1> This Message Has Been Sent By $sender_name </h1>

<p> <b> Sender Email :  </b> <br> $sender_email </p>

<p> <b> Sender Phone :  </b> <br> $sender_phone </p>

<p> <b> Sender Subject :  </b> <br> $sender_subject </p>

<p> <b> Sender Message :  </b> <br> $sender_message </p>

";

                    $headers = "From: $sender_email \r\n";

                    $headers .= "Content-type: text/html\r\n";

                    mail($contact_email, $sender_subject, $new_message, $headers);

                    // Send email to sender through this code

                    $email = $_POST['email'];

                    $subject = "Welcome to my website";

                    $msg = "I shall get you soon, thanks for sending us email";

                    $from = "ibestwill@gmail.com";

                    mail($email, $subject, $msg, $from);

                    echo "<h2 align='center'>Your message has been sent successfully</h2>";

                }


                ?>

            </div><!-- box Ends -->

        </div><!-- col-md-12 Ends -->

        <div class="col-md-6"><!-- col-md-3 col-sm-6 Starts -->

            <div class="box"><!-- box Starts -->

                <div class="box-header"><!-- box-header Starts -->

                    <h2>加拿大</h2>

                    <p><!-- p Starts -->
                        <strong>Fredericton,NB</strong>
                        <br>电话：+1 (506) 897-4321
                        <br>地址：311-780 Montgomery Street，Fredericton, NB, Canada, E3B2Y1
                        <br>
                        <br>营业时间： 大西洋时区
                        <br>周一至周五 9:00-18:00
                        <br>周六和周日 10:30-17:00
                    </p><!-- p Ends -->

                </div><!-- box-header Ends -->
            </div>

        </div><!-- col-md-3 col-sm-6 Ends -->

        <div class="col-md-6"><!-- col-md-3 col-sm-6 Starts -->

            <div class="box"><!-- box Starts -->

                <div class="box-header"><!-- box-header Starts -->

                    <h2>中国</h2>

                    <p><!-- p Starts -->
                        <strong>上海</strong>
                        <br>电话：+86 18616521681
                        <br>地址：共和新路1968号
                        <br>
                        <br>营业时间：
                        <br>周一至周五 9:00-18:00
                        <br>周六和周日 9:30-17:00
                    </p><!-- p Ends -->

                </div><!-- box-header Ends -->
            </div>

        </div><!-- col-md-3 col-sm-6 Ends -->


    </div><!-- container Ends -->
</div><!-- content Ends -->


<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

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

