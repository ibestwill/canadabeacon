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


        <div class="col-md-12"><!-- col-md-12 Starts --->

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
                    <p><img src="http://demo.itsolutionstuff.com/plugin/loader.gif">正在加载...</p>
                </div>

            </div><!-- row Ends -->


        </div><!-- col-md-12 Ends --->



        <div id="wait" style="position:absolute;top:40%;left:45%;padding:100px;padding-top:200px;"><!--- wait Starts -->

        </div><!--- wait Ends -->

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
                'limit_wiki': 9

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
                        'offset_wiki': flag,
                        'limit_wiki': 9

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

</body>

</html>