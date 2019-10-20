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


<div class="navbar navbar-default navbar-fixed-top" id="navbar"><!-- navbar navbar-default Starts -->

    <!--red line-->
    <div id="header"></div>

    <!--logo + contact-->
    <div id="top"><!-- top Starts -->

        <div class="container"><!-- container Starts -->

            <div class="col-md-10 top-brand">
                <a href="index" style="text-align:center"><!--- navbar navbar-brand home Starts -->

                    <img src="images/cb-dark-long.png" alt="cb logo" height="45">

                </a><!--- navbar navbar-brand home Ends -->
                <div class="dropdown hidden-lg hidden-md" style="float:right;">
                    <button class="dropbtn"><i class="fa fa-align-justify"></i></button>
                    <div class="dropdown-content">

                        <li>
                            <a href="index"> 动态 </a>
                        </li>

                        <li>
                            <a href="immigration"> 移民 </a>
                        </li>

                        <li>
                            <a href="visa"> 签证 </a>
                        </li>

                        <li>
                            <a href="study"> 留学 </a>
                        </li>


                        <li>
                            <a href="wiki"> 百科 </a>
                        </li>

                        <li>
                            <form action="language_switcher.php" method="post">
                                <input type="hidden" name="lang" value="en">
                                <input type="image" src="images/CANADA.png" height="35" style="margin-left: 20px">
                            </form>

                        </li>
                        <li>
                            <form action="language_switcher.php" method="post">
                                <input type="hidden" name="lang" value="cn">
                                <input type="image" src="images/CHINA.png" height="35" style="margin-left: 20px">
                            </form>

                        </li>


                    </div>
                </div>

            </div>

            <div class="col-md-2 offer hidden-xs hidden-sm"><!-- col-md-6 Starts -->

                <ul class="list-inline"><!-- menu Starts -->

                    <li>
                        <form action="language_switcher.php" method="post">
                            <input type="hidden" name="lang" value="en">
                            <input type="image" src="images/CANADA.png" height="35">
                        </form>
                    </li>
                    <li>
                        <form action="language_switcher.php" method="post">
                            <input type="hidden" name="lang" value="cn">
                            <input type="image" src="images/CHINA.png" height="35">
                        </form>

                    </li>
                </ul><!-- menu Ends -->

            </div><!-- col-md-6 Ends -->

        </div><!-- container Ends -->
    </div><!-- top Ends -->


    <div class="container hidden-xs"><!-- container Starts -->

        <div class="navbar-header"><!-- navbar-header Starts -->

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                <span class="sr-only">Toggle Navigation </span>

                <i class="fa fa-align-justify"></i>

            </button>


        </div><!-- navbar-header Ends -->


        <div class="navbar-collapse collapse" id="navigation"><!-- navbar-collapse collapse Starts -->

            <div class="padding-nav"><!-- padding-nav Starts -->

                <ul class="nav nav-pills card-header-pills nav-justified"><!-- nav navbar-nav navbar-left Starts -->

                    <li>
                        <a href="index"> 动态 </a>
                    </li>

                    <li>
                        <a href="immigration"> 移民 </a>
                    </li>

                    <li>
                        <a href="visa"> 签证 </a>
                    </li>

                    <li>
                        <a href="study"> 留学 </a>
                    </li>

                    <li id="nav">
                        <a href="wiki"> 百科 </a>
                    </li>


                </ul><!-- nav navbar-nav navbar-left Ends -->

            </div><!-- padding-nav Ends -->

        </div><!-- navbar-collapse collapse Ends -->

    </div><!-- container Ends -->
</div><!-- navbar navbar-default Ends -->


<div id="content"><!-- content Starts -->
    <div class="container"><!-- container Starts -->


        <div class="col-md-9"><!-- col-md-12 Starts --->

            <div class='box effect1'>

                <h1>百科知识</h1>
                <br>
                <br>

                <p>关于移民，留学，签证的各类政策信息，相关链接，以及客户对于加拿大工作生活学习的热点问题的解答。</p>

            </div>



            <div class="box" id="infinite"><!-- row Starts -->

            </div><!-- row Ends -->


            <div class="row"><!-- row Starts -->

                <div class="ajax-load text-center" style="display:none">
                    <p><img src="images/loader.gif">正在加载...</p>
                </div>

            </div><!-- row Ends -->

        </div><!-- col-md-12 Ends --->

        <div class="col-md-3">
            <?php

            include("includes/sidebar.php");

            ?>

        </div>


    </div><!-- container Ends -->
</div><!-- content Ends -->


<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script>

    $(document).ready(function () {

        var flag = 0;

        $.ajax({


            type: "GET",
            url: "fetch.php",
            data: {
                'offset_wiki': 0,
                'limit_wiki': 15

            },

            success: function (data) {
                $('#infinite').append(data);
                flag += 15;

            }
        });

        $(window).scroll(function () {

            if ($(window).scrollTop() >= $(document).height() - $(window).height()) {

                $.ajax({

                    type: "GET",
                    url: "fetch.php",
                    data: {
                        'offset_wiki': flag,
                        'limit_wiki': 15

                    },

                    beforeSend: function () {
                        $('.ajax-load').show();

                    },

                    success: function (data) {
                        if (!$.trim(data)) {
                            $('.ajax-load').html("—————— 我们是有底线的 ——————");
                            return;
                        }

                        $('.ajax-load').hide();
                        $('#infinite').append(data);
                        flag += 15;

                    }
                });
            }


        });


    });

</script>

</body>

</html>