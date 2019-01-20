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

        <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

        <link href="styles/bootstrap.min.css" rel="stylesheet">

        <link href="styles/style.css" rel="stylesheet">

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/cb-logo.png" />


    </head>

    <body>

    <?php

    include("includes/header.php");

    ?>


        <div id="content" ><!-- content Starts -->
            <div class="container" ><!-- container Starts -->


                <div class="col-md-12" ><!-- col-md-9 Starts --->

                    <div class='box effect1'>

                        <h1>留学申请</h1>
                        <br>
                        <br>

                        <p>加拿大有丰富的教育资源，留学加拿大既可以学到专业的知识同时也能提高英语甚至法语水平，一举多得。我们会针对您的个性化需求，为您筛选出优秀的教育机构，并提供完备的申请方案。</p>

                    </div>



                    <div class="row" id="Products" ><!-- row Starts -->

                        <?php getStudy('p_cat_id=3'); ?>

                    </div><!-- row Ends -->


                </div><!-- col-md-9 Ends --->


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