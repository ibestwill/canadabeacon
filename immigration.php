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

                        <li id="nav">
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


        <div id="content" ><!-- content Starts -->
            <div class="container" ><!-- container Starts -->


                <div class="col-md-9"><!-- col-md-12 Starts --->

                    <div>
                        <h1>移民申请</h1>
                        <br>
                        <p>
                            “加国灯塔”将为每位客户量身选择最适合您的移民申请方案，提供包含移民信息咨询，资料准备，移民申请的一站式服务。专业的移民顾问常年居住在加拿大，对于客户的问题我们会给予最地道的解答和专业的指导。</p>
                        <br>
                    </div>


                    <div class="row" id="Products" ><!-- row Starts -->

                        <?php getImmigration('p_cat_id=1'); ?>

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

        <script src="js/jquery.min.js"> </script>

        <script src="js/bootstrap.min.js"></script>

        <script>

            $(document).ready(function(){

                /// Hide And Show Code Starts ///

                $('.nav-toggle').click(function(){

                    $(".panel-collapse,.collapse-data").slideToggle(700,function(){

                        if($(this).css('display')=='none'){

                            $(".hide-show").html('Show');

                        }
                        else{

                            $(".hide-show").html('Hide');

                        }

                    });

                });

                /// Hide And Show Code Ends ///

                /// Search Filters code Starts /// 

                $(function(){

                    $.fn.extend({

                        filterTable: function(){

                            return this.each(function(){

                                $(this).on('keyup', function(){

                                    var $this = $(this), 

                                        search = $this.val().toLowerCase(), 

                                        target = $this.attr('data-filters'), 

                                        handle = $(target), 

                                        rows = handle.find('li a');

                                    if(search == '') {

                                        rows.show(); 

                                    } else {

                                        rows.each(function(){

                                            var $this = $(this);

                                            $this.text().toLowerCase().indexOf(search) === -1 ? $this.hide() : $this.show();

                                        });

                                    }

                                });

                            });

                        }

                    });

                    $('[data-action="filter"][id="dev-table-filter"]').filterTable();

                });

                /// Search Filters code Ends /// 

            });



        </script>


        <script>


            $(document).ready(function(){

                // getProducts Function Code Starts 

                function getProducts(){

                    // Manufacturers Code Starts 

                    var sPath = ''; 

                    var aInputs = $('li').find('.get_manufacturer');

                    var aKeys = Array();

                    var aValues = Array();

                    iKey = 0;

                    $.each(aInputs,function(key,oInput){

                        if(oInput.checked){

                            aKeys[iKey] =  oInput.value

                        };

                        iKey++;

                    });

                    if(aKeys.length>0){

                        var sPath = '';

                        for(var i = 0; i < aKeys.length; i++){

                            sPath = sPath + 'man[]=' + aKeys[i]+'&'; 

                        }

                    }

                    // Manufacturers Code ENDS 

                    // Products Categories Code Starts 

                    var aInputs = Array();

                    var aInputs = $('li').find('.get_p_cat');

                    var aKeys = Array();

                    var aValues = Array();

                    iKey = 0;

                    $.each(aInputs,function(key,oInput){

                        if(oInput.checked){

                            aKeys[iKey] =  oInput.value

                        };

                        iKey++;

                    });

                    if(aKeys.length>0){

                        for(var i = 0; i < aKeys.length; i++){

                            sPath = sPath + 'p_cat[]=' + aKeys[i]+'&';

                        }

                    }

                    // Products Categories Code ENDS 

                    // Categories Code Starts 

                    var aInputs = Array();

                    var aInputs = $('li').find('.get_cat');

                    var aKeys  = Array();

                    var aValues = Array();

                    iKey = 0;

                    $.each(aInputs,function(key,oInput){

                        if(oInput.checked){

                            aKeys[iKey] =  oInput.value

                        };

                        iKey++;

                    });

                    if(aKeys.length>0){

                        for(var i = 0; i < aKeys.length; i++){

                            sPath = sPath + 'cat[]=' + aKeys[i]+'&';

                        }

                    }

                    // Categories Code ENDS 

                    // Loader Code Starts 

                    $('#wait').html('<img src="images/load.gif">'); 

                    // Loader Code ENDS

                    // ajax Code Starts 

                    $.ajax({

                        url:"load.php", 

                        method:"POST",

                        data: sPath+'sAction=getProducts', 

                        success:function(data){

                            $('#Products').html('');  

                            $('#Products').html(data);

                            $("#wait").empty(); 

                        }  

                    });  

                    $.ajax({
                        url:"load.php",  
                        method:"POST",  
                        data: sPath+'sAction=getPaginator',  
                        success:function(data){
                            $('.pagination').html('');  
                            $('.pagination').html(data);
                        }  

                    });

                    // ajax Code Ends 

                }

                // getProducts Function Code Ends    

                $('.get_manufacturer').click(function(){ 

                    getProducts(); 

                });


                $('.get_p_cat').click(function(){ 

                    getProducts();

                }); 

                $('.get_cat').click(function(){ 

                    getProducts(); 

                });


            }); 

        </script>

    </body>

</html>