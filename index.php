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
    <title> 加国灯塔 </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

    <link href="styles/bootstrap.min.css" rel="stylesheet">

    <link href="styles/style.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/cb-logo.png" />


</head>

<body>

<?php

include("includes/header.php");

?>


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

<script src="js/Chart.min.js"></script>




<script>

    $(document).ready(function () {

        var flag = 0;

        $.ajax({


            type: "GET",
            url: "fetch.php",
            data: {
                'offset': 0,
                'limit': 9

            },

            success: function (data) {
                $('#infinite').append(data);
                flag += 9;

            }
        });

        $(window).scroll(function () {

            if ($(window).scrollTop() >= $(document).height() - $(window).height()) {

                $.ajax({

                    type: "GET",
                    url: "fetch.php",
                    data: {
                        'offset': flag,
                        'limit': 9

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
                        flag += 9;

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