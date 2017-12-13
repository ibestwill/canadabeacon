<?php

session_start();

include("includes/db.php");

include("functions/functions.php");


?>
<!DOCTYPE html>
<html>

<head>
    <title>传送门 CSM.WORLD</title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

    <link href="styles/bootstrap.min.css" rel="stylesheet">

    <link href="styles/style.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.ico"/>

</head>

<body>

<!--nav-->
<div class="navbar navbar-default navbar-fixed-top" id="navbar"><!-- navbar navbar-default Starts -->

    <!--red line-->
    <div id="header"></div>

    <!--logo + contact-->
    <div id="top"><!-- top Starts -->

        <div class="container"><!-- container Starts -->

            <div class="col-md-6 top-brand">
                <a href="index" style="text-align:center"><!--- navbar navbar-brand home Starts -->

                    <img src="images/logo-small.png" alt="csm logo" height="35">

                </a><!--- navbar navbar-brand home Ends -->

            </div>

            <div class="col-md-6 offer hidden-xs hidden-sm"><!-- col-md-6 Starts -->

                <ul class="menu"><!-- menu Starts -->

                    <li>
                        <a class="right" href="contact.php"><!-- btn btn-primary navbar-btn right Starts -->


                            <i class="fa fa-phone-square fa-2x"></i>


                        </a><!-- btn btn-primary navbar-btn right Ends -->

                    </li>

                </ul><!-- menu Ends -->

            </div><!-- col-md-6 Ends -->


        </div><!-- container Ends -->
    </div><!-- top Ends -->


    <div class="container"><!-- container Starts -->

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
                        <a href="shop_dongtai.php"> 动态 </a>
                    </li>

                    <li>
                        <a href="shop_yimin.php"> 移民 </a>
                    </li>

                    <li>
                        <a href="shop_qianzheng.php"> 签证 </a>
                    </li>

                    <li>
                        <a href="shop_liuxue.php"> 留学 </a>
                    </li>


                    <li>
                        <a href="shop_bibei.php"> 百科 </a>
                    </li>


                </ul><!-- nav navbar-nav navbar-left Ends -->

            </div><!-- padding-nav Ends -->

        </div><!-- navbar-collapse collapse Ends -->

    </div><!-- container Ends -->
</div><!-- navbar navbar-default Ends -->


<div id="content"><!-- content Starts -->
    <div class="container"><!-- container Starts -->


        <div class="col-md-8"><!-- col-md-12 Starts --->


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


            <br>

            <!--Load Product via Ajax infinite scroll-->
            <div class="row" id="infinite"><!-- row Starts -->

            </div><!-- row Ends -->




            <div class="row"><!-- row Starts -->

                <div class="ajax-load text-center" style="display:none">
                    <p><img src="http://demo.itsolutionstuff.com/plugin/loader.gif">正在加载...</p>
                </div>

            </div><!-- row Ends -->



        </div><!-- col-md-12 Ends --->


        <div class="col-md-1"></div>

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

<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>




<script>

    $(document).ready(function () {

        var flag = 0;

        $.ajax({


            type: "GET",
            url: "fetch.php",
            data: {
                'offset': 0,
                'limit': 3

            },

            success: function (data) {
                $('#infinite').append(data);
                flag += 3;

            }
        });

        $(window).scroll(function () {

            if ($(window).scrollTop() >= $(document).height() - $(window).height()) {

                $.ajax({

                    type: "GET",
                    url: "fetch.php",
                    data: {
                        'offset': flag,
                        'limit': 3

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
                        flag += 3;

                    }
                });
            }


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
                display: false,
                text: 'Express Entry',
                position:'left',
                fontSize:12
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

</body>

</html>