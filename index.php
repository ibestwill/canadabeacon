<?php

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
    <title> 加国灯塔 </title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

    <link href="styles/bootstrap.min.css" rel="stylesheet">

    <link href="styles/style.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/cb-logo.png" />


</head>

<body>


<div class="navbar navbar-default navbar-fixed-top"><!-- navbar navbar-default Starts -->

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

                    <li id="nav">
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


                </ul><!-- nav navbar-nav navbar-left Ends -->

            </div><!-- padding-nav Ends -->

        </div><!-- navbar-collapse collapse Ends -->

    </div><!-- container Ends -->
</div><!-- navbar navbar-default Ends -->


<div id="content"><!-- content Starts -->
    <div class="container"><!-- container Starts -->


        <div class="col-md-9"><!-- col-md-12 Starts --->


            <canvas id="line-chart" width="auto" height="80" class="hidden-xs"></canvas>


            <?php

            $ee_labels = '[';
            $ee_data = '[';
            $ee_data_y = '[';


            $get_entries = "select * from (select * from express_entry ORDER BY id DESC limit 12) sub ORDER BY id ASC";

            $run_entries = mysqli_query($con, $get_entries);


            while ($row_entries = mysqli_fetch_array($run_entries)) {


                $ee_id = $row_entries['id'];

                $ee_date = date('ymd',strtotime($row_entries['date']));


                $ee_score = $row_entries['score'];

                $ee_number = $row_entries['number'];



                $ee_labels .= $ee_date . ', ';
                $ee_data .= $ee_score . ', ';
                $ee_data_y .= $ee_number . ', ';


            }

            $ee_labels .= ']';
            $ee_data .= ']';
            $ee_data_y .= ']';


            ?>

            <!--Load Product via Ajax infinite scroll-->
            <div class="row" id="infinite"><!-- row Starts -->

            </div><!-- row Ends -->


            <div class="row"><!-- row Starts -->

                <div class="ajax-load text-center">
                    <button type="button" class="btn btn-danger">加载更多</button>
                </div>

            </div><!-- row Ends -->


        </div><!-- col-md-9 Ends --->


        <div class="col-md-3">
            <?php

            include("includes/sidebar.php");

            ?>

        </div>

        <div id="wait" style="position:absolute;top:40%;left:45%;padding:100px;padding-top:200px;"><!--- wait Starts -->

        </div><!--- wait Ends -->

    </div><!-- container Ends -->
</div><!-- content Ends -->


<?php

include("includes/footer.php");

?>

<div id="myModal" class="modal fade">

    <div class="vertical-alignment-helper">

        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">&nbsp;&nbsp;&nbsp;中文&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;English</h4>
                </div>
                <div class="modal-body">


                    <form action="language_switcher.php" method="post">

                        <input type="hidden" name="lang" value="cn">
                        <input type="image" src="images/CHINA.png" height="70">

                    </form>


                    <form action="language_switcher.php" method="post">

                        <input type="hidden" name="lang" value="en">
                        <input type="image" src="images/CANADA.png" height="70">

                    </form>


                </div>
            </div>
        </div>

    </div>

</div>


<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/Chart.min.js"></script>

<script>

    $(document).ready(function () {

        var flag = 0;

        $.ajax({


            type: "GET",
            url: "fetch.php",
            data: {
                'offset': 0,
                'limit': 15

            },

            success: function (data) {
                $('#infinite').append(data);
                flag += 15;

            }
        });

        $('.ajax-load').click(function () {



                $.ajax({

                    type: "GET",
                    url: "fetch.php",
                    data: {
                        'offset': flag,
                        'limit': 15

                    },

                    beforeSend: function () {
                        $('.ajax-load').show();

                    },

                    success: function (data) {
                        if (!$.trim(data)) {

                            $('.ajax-load').html("—————— 我们是有底线的 ——————");
                            return;
                        }


                        $('#infinite').append(data);
                        flag += 15;

                    }
                });


        });


    });

</script>


<script>
    new Chart(document.getElementById("line-chart"), {
        type: 'bar',
        data: {
            labels:<?php echo $ee_labels; ?>,
            datasets: [{
                data: <?php echo $ee_data_y; ?>,
                label: 'EE邀请人数',
                yAxisID:'right-y-axis',
                fill: false
            },{
                type:'line',
                data: <?php echo $ee_data; ?>,
                label:'EE邀请分数',
                yAxisID:'left-y-axis',
                borderColor: "#c45850"
            }
            ]
        },
        options: {
            title: {
                display: true,
                text: '联邦EE快速通道邀请分数',
                position: 'bottom',
                fontSize: 14
            },
            legend: {
                display: false
            },
            tooltips: {

            },
            scales:{
                yAxes: [{
                    id: 'left-y-axis',
                    type: 'linear',
                    position: 'left'
                }, {
                    id: 'right-y-axis',
                    type: 'linear',
                    position: 'right'
                }]
            }

        }
    });

</script>


<script>

    function getCookie(name) {
        var dc = document.cookie;
        var prefix = name + "=";
        var begin = dc.indexOf("; " + prefix);
        if (begin == -1) {
            begin = dc.indexOf(prefix);
            if (begin != 0) return null;
        } else {
            begin += 2;
            var end = document.cookie.indexOf(";", begin);
            if (end == -1) {
                end = dc.length;
            }
        }
        // because unescape has been deprecated, replaced with decodeURI
        //return unescape(dc.substring(begin + prefix.length, end));
        return decodeURI(dc.substring(begin + prefix.length, end));
    }

</script>

<script>
    var myCookie = getCookie("language");

    if (myCookie == null) {
        // do cookie doesn't exist stuff;
        $("#myModal").modal('show');
    } else if (myCookie == "en") {
        // window.open("en");
        window.location.replace("en");
    }
</script>


</body>

</html>