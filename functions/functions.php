<?php

$db = mysqli_connect("localhost", "root", "aSUS!!54321", "ecom_store");

function formatDate($date)
{
    return date('F j, Y, g:i a', strtotime($date));
}


function shortenText($text, $chars = 200)
{
    $text = $text . " ";
    $text = substr($text, 0, $chars);
    $text = substr($text, 0, strrpos($text, '。'));
    $text = $text . "...";
    return $text;
}

/*友好时间显示*/
function friend_date($time)
{
    if (!$time)
        return false;
    $fdate = '';
    $d = time() - intval($time);
    $ld = $time - mktime(0, 0, 0, 0, 0, date('Y')); //得出年
    $md = $time - mktime(0, 0, 0, date('m'), 0, date('Y')); //得出月
    $m2d = $time - mktime(0, 0, 0, date('m') - 2, 0, date('Y')); //得出天
    $byd = $time - mktime(0, 0, 0, date('m'), date('d') - 2, date('Y')); //前天
    $yd = $time - mktime(0, 0, 0, date('m'), date('d') - 1, date('Y')); //昨天
    $dd = $time - mktime(0, 0, 0, date('m'), date('d'), date('Y')); //今天
    $td = $time - mktime(0, 0, 0, date('m'), date('d') + 1, date('Y')); //明天
    $atd = $time - mktime(0, 0, 0, date('m'), date('d') + 2, date('Y')); //后天
    if ($d == 0) {
        $fdate = '刚刚';
    } else {
        switch ($d) {
            case $d < $atd:
                $fdate = date('Y年m月d日', $time);
                break;
            case $d < $td:
                $fdate = '后天' . date('H:i', $time);
                break;
            case $d < 0:
                $fdate = '明天' . date('H:i', $time);
                break;
            case $d < 60:
                $fdate = $d . '秒前';
                break;
            case $d < 3600:
                $fdate = floor($d / 60) . '分钟前';
                break;
            case $d < $dd:
                $fdate = floor($d / 3600) . '小时前';
                break;
            case $d < $yd:
                $fdate = '昨天' . date('H:i', $time);
                break;
            case $d < $byd:
                $fdate = '前天' . date('H:i', $time);
                break;
            case $d < $m2d:
                $fdate = floor($d / 86400) . '天前';
                break;
            case $d < $md:
                $fdate = date('m月d日 H:i', $time);
                break;
            case $d < $ld:
                $fdate = date('m月d日', $time);
                break;
            default:
                $fdate = date('Y年m月d日', $time);
                break;
        }
    }
    return $fdate;
}

/// IP address code starts /////
function getRealUserIp()
{
    switch (true) {
        case (!empty($_SERVER['HTTP_X_REAL_IP'])) :
            return $_SERVER['HTTP_X_REAL_IP'];
        case (!empty($_SERVER['HTTP_CLIENT_IP'])) :
            return $_SERVER['HTTP_CLIENT_IP'];
        case (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) :
            return $_SERVER['HTTP_X_FORWARDED_FOR'];
        default :
            return $_SERVER['REMOTE_ADDR'];
    }
}

/// IP address code Ends /////


// items function Starts ///

function items()
{

    global $db;

    $ip_add = getRealUserIp();

    $get_items = "select * from cart where ip_add='$ip_add'";

    $run_items = mysqli_query($db, $get_items);

    $count_items = mysqli_num_rows($run_items);

    echo $count_items;

}


// items function Ends ///

// total_price function Starts //

function total_price()
{

    global $db;

    $ip_add = getRealUserIp();

    $total = 0;

    $select_cart = "select * from cart where ip_add='$ip_add'";

    $run_cart = mysqli_query($db, $select_cart);

    while ($record = mysqli_fetch_array($run_cart)) {

        $pro_id = $record['p_id'];

        $pro_qty = $record['qty'];


        $sub_total = $record['p_price'] * $pro_qty;

        $total += $sub_total;


    }

    echo "$" . $total;


}

// total_price function Ends //


// getImmigration Function Starts ///

function getImmigration($product_category)
{

    global $db;

    $flag = 1;
    $flag2 = 1;
    $flag3 = 1;


    $aWhere = array();

    $aWhere[] = $product_category;



    $get_products = "select * from products WHERE ".$product_category." ORDER BY cat_id ASC";

    $run_products = mysqli_query($db, $get_products);


    while ($row_products = mysqli_fetch_array($run_products)) {


        $pro_title = $row_products['product_title'];

        $pro_url = $row_products['product_url'];

        $p_cat = $row_products['p_cat_id'];

        $sub_cat = $row_products['cat_id'];

        $get_p_cat = "select * from product_categories where p_cat_id='$p_cat'";

        $run_p_cat = mysqli_query($db, $get_p_cat);

        $row_p_cat = mysqli_fetch_array($run_p_cat);

        $p_cat_title = $row_p_cat['p_cat_title'];

        $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
        $run_sub_cat = mysqli_query($db, $get_sub_cat);
        $row_sub_cat = mysqli_fetch_array($run_sub_cat);
        $pro_sub_title = $row_sub_cat['cat_title'];

        if ($pro_sub_title == "省提名") {

            $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";


            echo "

        <div class='col-md-3 center-responsive' >
        
        <a class='label' href='$pro_url' style='color:black;'>
          <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>
                

                $product_label


            </div>
        
        </a>


          

        </div>


        ";


        } else if ($pro_sub_title == "经济类") {
            $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";

            if ($flag2) {
                echo "<div class='col-md-12'>
                <hr id='fenge'>
            </div>";

                $flag2 = 0;
            }

            echo "

        <div class='col-md-3 center-responsive' >



            <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>
                

                $product_label


            </div>

        </div>


        ";
        } else if ($pro_sub_title == "团聚类") {

            $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";

            if ($flag3) {
                echo "<div class='col-md-12'>
                <hr id='fenge'>
            </div>";

                $flag3 = 0;
            }

            echo "

        <div class='col-md-3 center-responsive' >

            <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>
                

                $product_label


            </div>

        </div>


        ";

        }


    }


}


// getImmigration  Function Ends ///




/// getVisa Function Starts ///

function getVisa($product_category)
{


    global $db;


    $flag2 = 1;
    $flag3 = 1;


    $aWhere = array();

    $aWhere[] = $product_category;


    $get_products = "select * from products WHERE ".$product_category." ORDER BY cat_id ASC";

    $run_products = mysqli_query($db, $get_products);


    while ($row_products = mysqli_fetch_array($run_products)) {


        $pro_title = $row_products['product_title'];

        $pro_url = $row_products['product_url'];

        $p_cat = $row_products['p_cat_id'];

        $sub_cat = $row_products['cat_id'];

        $get_p_cat = "select * from product_categories where p_cat_id='$p_cat'";

        $run_p_cat = mysqli_query($db, $get_p_cat);

        $row_p_cat = mysqli_fetch_array($run_p_cat);

        $p_cat_title = $row_p_cat['p_cat_title'];

        $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
        $run_sub_cat = mysqli_query($db, $get_sub_cat);
        $row_sub_cat = mysqli_fetch_array($run_sub_cat);
        $pro_sub_title = $row_sub_cat['cat_title'];

        if ($pro_sub_title == "工签类") {

            $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";


            echo "

        <div class='col-md-3 col-sm-6 center-responsive' >

            <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>


                $product_label


            </div>

        </div>


        ";


        } else if ($pro_sub_title == "访问签") {
            $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";

            if ($flag2) {
                echo "

            <div class='row col-md-12'>
                <hr id='fenge'>
            </div>";

                $flag2 = 0;
            }

            echo "

        <div class='col-md-3 col-sm-6 center-responsive' >

            <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>


                $product_label


            </div>

        </div>


        ";
        } else if ($pro_sub_title == "学签类") {

            $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";

            if ($flag3) {
                echo "

            <div class='row col-md-12'>
                <hr id='fenge'>
            </div>";

                $flag3 = 0;
            }

            echo "

        <div class='col-md-3 col-sm-6 center-responsive' >

            <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>


                $product_label


            </div>

        </div>


        ";

        }


    }


}




/// getVisa Function Ends ///


// getStudy Function Starts ///

function getStudy($product_category)
{
    global $db;

    $aWhere = array();

    $aWhere[] = $product_category;

    $aWhere[] = " ORDER BY cat_id ASC";



    $get_products = "select * from products WHERE ".$product_category." ORDER BY cat_id ASC";

    $run_products = mysqli_query($db, $get_products);


    while ($row_products = mysqli_fetch_array($run_products)) {


        $pro_title = $row_products['product_title'];

        $pro_url = $row_products['product_url'];

        $p_cat = $row_products['p_cat_id'];

        $sub_cat = $row_products['cat_id'];

        $get_p_cat = "select * from product_categories where p_cat_id='$p_cat'";

        $run_p_cat = mysqli_query($db, $get_p_cat);

        $row_p_cat = mysqli_fetch_array($run_p_cat);

        $p_cat_title = $row_p_cat['p_cat_title'];

        $get_sub_cat = "select * from categories where cat_id = '$sub_cat'";
        $run_sub_cat = mysqli_query($db, $get_sub_cat);
        $row_sub_cat = mysqli_fetch_array($run_sub_cat);
        $pro_sub_title = $row_sub_cat['cat_title'];


        $product_label = "

            <a class='label' href='$pro_url' style='color:black;'>

                <div class='product-label'>$pro_sub_title</div>


            </a>

            ";


        echo "

        <div class='col-md-3 center-responsive' >

            <div class='product' >


                <div class='text'>

                    <h3><a href='$pro_url'> $pro_title </a></h3>

                    <br>


                </div>
                

                $product_label


            </div>

        </div>


        ";


    }


}


// getStudy Function Ends ///


/// getPaginator Function Starts ///

function getPaginator($product_category)
{

/// getPaginator Function Code Starts ///

    $per_page = 1;

    global $db;

    $aWhere = array();

    $aWhere[0] = $product_category;
    $aWhere[1] = 'order by date desc';


    $aPath = '';


    $sWhere = (count($aWhere) > 0 ? ' WHERE ' . implode(' ', $aWhere) : '');

    $query = "select * from products " . $sWhere;

    $result = mysqli_query($db, $query);

    $total_records = mysqli_num_rows($result);

    $total_pages = ceil($total_records / $per_page);

    echo "<li><a href='shop_dongtai.php?page=1";

    if (!empty($aPath)) {
        echo "&" . $aPath;
    }

    echo "' >" . '<<' . "</a></li>";


    for ($i = 1; $i <= $total_pages; $i++) {

        echo "<li><a href='shop_dongtai.php?page=" . $i . (!empty($aPath) ? '&' . $aPath : '') . "' >" . $i . "</a></li>";

    };

    echo "<li><a href='shop_dongtai.php?page=$total_pages";

    if (!empty($aPath)) {
        echo "&" . $aPath;
    }

    echo "' >" . '>>' . "</a></li>";


/// getPaginator Function Code Ends ///

}

/// getPaginator Function Ends ///


?>