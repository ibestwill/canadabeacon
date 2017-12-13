<div class="row" id="productMain"><!-- row Starts -->

    <div class="col-md-12"><!-- col-sm-6 Starts -->

        <div class="box"><!-- box Starts -->


            <?php

            $get_price = "select * from products where product_id='$pro_id'";

            $run_price = mysqli_query($con, $get_price);

            $row_price = mysqli_fetch_array($run_price);

            $pro_price = $row_price['product_price'];

            $pro_psp_price = $row_price['product_psp_price'];

            $pro_label = $row_price['product_label'];



            $province = '';
            $query = "SELECT province FROM tax_rate ORDER BY id ASC";
            $result = mysqli_query($con, $query);
            while ($row = mysqli_fetch_array($result)) {
                $province .= '<option value="' . $row["province"] . '">' . $row["province"] . '</option>';
            }
            ?>


            <h3 class="text-center">服务项目: <?php echo $pro_title ?></h3>

            <div class="form-group">
                <table class="table">
                    <tbody>

                    <tr>
                        <td>申请人所在地</td>
                        <td>
                            <div><!-- col-md-9 Starts -->

                                <select id="country" name="country" class="form-control action">
                                    <?php echo $province; ?>

                                </select>

                            </div><!-- col-md-7 Ends -->

                        </td>
                    </tr>

                    <tr>
                        <td>价格 Price</td>
                        <td>
                            <label class="form-control"><?php echo $pro_price ?></label>

                        </td>
                    </tr>

                    <tr>
                        <td>税费 Tax</td>
                        <td>
                            <label name="state" id="state" class="form-control action">0</label>
                        </td>
                    </tr>

                    <tr>
                        <td>小计 Subtotal</td>
                        <td>
                            <label id="subtotal" class="form-control action"><?php echo $pro_price ?></label>
                        </td>
                    </tr>


                    </tbody>
                </table>
            </div>

<div>
    <label id="pro_subtotal"></label>

</div>

            <!-- form-horizontal Ends -->


            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#tab1">信用卡支付</a></li>
                <li><a data-toggle="tab" href="#tab2">E-mail转账</a></li>
                <li><a data-toggle="tab" href="#tab3">支付宝或微信支付</a></li>
                <li><a data-toggle="tab" href="#tab4">当面支付</a></li>

            </ul>



            <div class="tab-content">

                <!--Credit Card-->
                <div id="tab1" class="tab-pane fade in active">

                    <div class="panel-body">



                        <form action="process.php" method="POST">
                            <script
                                    src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                                    data-key="pk_test_JSL8VqwhvT7A4B9Fz1mFlBZC"
                                    data-amount="<?php echo $pro_price?>00"
                                    data-name="CSM.WORLD"
                                    data-description="服务项目：<?php echo $pro_title ?>"
                                    data-image="images/logo_red.png"
                                    data-locale="auto"
                                    data-currency="cad">
                            </script>
                        </form>




                    </div>
                </div>

                <!--Email Transfer-->
                <div id="tab2" class="tab-pane fade">

                    <div class="panel-body">

                        <p>如果您有加拿大境内银行账户，您可以方便地进行E-mail转账</p>
                        <p>我们的收款邮箱是：ibestwill@gmail.com </p>
                        <p>收款人名称是：Wei Zhao</p>
                        <p>您支付相应的款项后，请致电1 (506) 897-4321或发邮件到 ibestwill@gmail.com 告知我们安全问答（Security Answer）。</p>

                    </div>

                </div>

                <!--Alipay & Wechat-->
                <div id="tab3" class="tab-pane fade">

                    <div class="panel-body">

                        <p><!-- p Starts -->
                            如果您在中国，可使用支付宝或微信支付您的订单。
                        </p><!-- p Ends -->
                        <p>
                            请联系我们给您生成二维码用于支付。
                        </p>

                    </div>

                </div>

                <!--Face to Face-->
                <div id="tab4" class="tab-pane fade">

                    <div class="panel-body">

                        <p><!-- p Starts -->
                            欢迎前来我们在加拿大或中国的办公室支付。我们接受现金、支票和信用卡。
                        </p><!-- p Ends -->

                    </div>

                </div>


            </div>


        </div><!-- box Ends -->


    </div><!-- col-sm-6 Ends -->

</div><!-- row Ends -->

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>


<script>

    $(document).ready(function () {
        $('.action').change(function () {
            if ($(this).val() != '') {
                var action = $(this).attr("id");
                var query = $(this).val();
                var result = '';


                if (action == "country") {
                    result = 'state';
                }
                else {
                    result = 'city';
                }
                $.ajax({
                    url: "fetch.php",
                    method: "POST",
                    data: {action: action, query: query},
                    success: function (data) {

                        var tax = data * <?php echo $pro_price ?>;
                        var subtotal = tax + <?php echo $pro_price ?>;


                        $('#' + result).html(tax);

                        $('#subtotal').html(subtotal);




                    }
                })
            }
        });
    });


</script>
