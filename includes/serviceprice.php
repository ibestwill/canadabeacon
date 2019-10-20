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

            $pro_url = $row_products['product_url'];


            $get_contact_us = "select * from contact_us";

            $run_conatct_us = mysqli_query($con, $get_contact_us);

            $row_conatct_us = mysqli_fetch_array($run_conatct_us);

            $contact_heading = $row_conatct_us['contact_heading'];

            $contact_desc = $row_conatct_us['contact_desc'];

            $contact_email = $row_conatct_us['contact_email'];



            $province = '';
            $query = "SELECT province FROM tax_rate ORDER BY id ASC";
            $result = mysqli_query($con, $query);
            while ($row = mysqli_fetch_array($result)) {
                $province .= '<option value="' . $row["province"] . '">' . $row["province"] . '</option>';
            }
            ?>


            <!-- form-horizontal Ends -->


            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#tab1">联系我们</a></li>
                <li><a data-toggle="tab" href="#tab2">付款方式</a></li>


            </ul>


            <div class="tab-content">

                <!--Contact Us-->
                <div id="tab1" class="tab-pane fade in active">

                    <div class="panel-body">

                        <h2 class="text-center">服务项目: <?php echo $pro_title ?></h2>


                        <form action="<?php echo $pro_url ?>" method="post"><!-- form Starts -->

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

                                <label> 内容 </label>

                                <textarea class="form-control" name="message" rows="6" required> </textarea>

                            </div><!-- form-group Ends -->


                            <div class="text-center"><!-- text-center Starts -->

                                <button type="submit" name="submit" class="btn btn-danger">

                                    联系我们

                                </button>

                            </div><!-- text-center Ends -->

                        </form><!-- form Ends -->


                    </div>
                </div>

                <!--Payment Method-->
                <div id="tab2" class="tab-pane fade">

                    <div class="panel-body">


                        <h4>服务: <label><?php echo $pro_title ?></label></h4>

                        <!-- <h4>价格: ￥ <label><?php /*echo $pro_price */ ?></label></h4>-->

                        <hr>

                        <div><!-- Starts -->

                            <label>支付宝或微信支付</label>

                            <div>
                                <p>如果您在中国，可使用支付宝或微信支付您的订单。</p>
                                <p>请联系我们给您生成二维码用于支付。</p>

                            </div>

                            <hr>

                        </div><!-- Ends -->


                        <div><!-- Starts -->

                            <label>E-mail转账（Interac e-Transfer ®）</label>


                            <div>
                                <p>如果您有加拿大境内银行账户，您可以方便地进行E-mail转账</p>
                                <p>我们的收款邮箱是：pay@canadabeacon.ca </p>
                                <p>收款人名称是：Canada Beacon Immigration Services</p>
                                <p>您支付相应的款项后，请致电1 (506) 897-4321 或发邮件到 payment@canadabeacon.ca 告知我们安全问答（Security
                                    Answer）。</p>
                            </div>

                            <hr>

                        </div><!-- Ends -->

                        <div><!-- Starts -->

                            <label>当面支付</label>

                            <div>
                                <p>欢迎当面支付。我们接受现金和支票。</p>

                            </div>

                            <hr>

                        </div><!-- Ends -->


                        <!--                     <div>

                                                 <label>信用卡支付</label>

                                                 <div>
                                                     <p>我们会在24小时内致电联系您，待电话确认后处理订单，服务开始前您可以无条件退款。</p>

                                                 </div>

                                                 <hr>

                                             </div>-->


                    </div>

                </div>


            </div>


        </div><!-- box Ends -->

    </div><!-- col-sm-6 Ends -->

</div><!-- row Ends -->


<div class="modal fade" id="thankYou" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalCenterTitle">发送成功！</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                感谢关注加国灯塔。我们将在24小时内邮件或电话回复您。
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">感谢</button>
            </div>
        </div>
    </div>
</div>


<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>


<?php

if (isset($_POST['submit'])) {

    // Admin receives email through this code

    $sender_name = $_POST['name'];

    $sender_email = $_POST['email'];

    $sender_subject = $pro_title;

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
