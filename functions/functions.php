<?php

$db = mysqli_connect("localhost", "ibestwill", "aSUS!!54321", "ecom_store");

function formatDate($date)
{
    return date('F j, Y, g:i a', strtotime($date));
}


function shortenText($text, $chars = 300)
{
    $text = $text . " ";
    $text = substr($text, 0, $chars);
    if (strrpos($text, '。')) {
        $text = substr($text, 0, strrpos($text, '。'));
    } else {
        $text = substr($text, 0, strrpos($text, '，'));
    }

    $text = $text . "...";
    $text = strip_tags($text);  //remove text format
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


// getNews Function Starts //

function getNews()
{

    global $db;
    $i = 0;

    $query = "SELECT * FROM products WHERE p_cat_id=5 ORDER BY date DESC";
    $data = mysqli_query($db, $query);

    if (!$data) {
        printf("Error: %s\n", mysqli_error($db));
        exit();
    }

    while ($row = mysqli_fetch_array($data)) {

        $pro_title = $row['product_title'];


        $pro_url = $row['product_url'];

        $pro_feature = shortenText($row['product_desc']);

        $pro_date = friend_date(strtotime($row['date']));

        $i++;


        echo "

                        
               <p>
                    <a href='$pro_url' style='color: #0b0b0b'><h4><i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i>&nbsp $pro_title </h4></a>
               </p>
               
               ";

        if ($i % 3 == 1) {
            echo "
                            
               <div class='container-fluid' style='color: grey;border-bottom: solid orange 1px;'>
               
               ";
        }

        if ($i % 3 == 2) {
            echo "
                            
               <div class='container-fluid' style='color: grey;border-bottom: solid cornflowerblue 1px;'>
               
               ";
        }

        if ($i % 3 == 0) {
            echo "
                            
               <div class='container-fluid' style='color: grey;border-bottom: solid red 1px;'>
               
               ";
        }


        echo "
                    <div class='col-sm-10'>
                    
                        <p>
                           $pro_feature
                        </p>   
                    
                    </div>
                    
                    <div class='col-sm-2'>
             
                 
                        <p style='text-align: right'>
                            $pro_date
                        </p>                   
           
                    </div>
                    
                
                
                </div>                      
                          
           
                                              
                       
               
               


        ";


    }

}

// getImmigration Function Starts ///

function getImmigration($product_category)
{

    global $db;

    $flag1 = 1;
    $flag2 = 1;
    $flag3 = 1;


    $aWhere = array();

    $aWhere[] = $product_category;


    $get_products = "select * from products WHERE " . $product_category . " ORDER BY cat_id ASC";

    $run_products = mysqli_query($db, $get_products);

    echo "
            <ul>
        ";

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
            
            <li style=\"list-style-type:none;\">
            
            $pro_sub_title

            </li>
                        
          
            ";

            if ($flag1) {
                echo "

            $product_label

            <li id='fenge'>
                
            </li>";

                $flag1 = 0;
            }


            echo "
            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>


        ";


        } else if ($pro_sub_title == "经济类") {

            $product_label = "
            <br>
            <li style=\"list-style-type:none;\">
            
            $pro_sub_title

            </li>

            ";

            if ($flag2) {
                echo "

            $product_label

            <li id='fenge'>
                
            </li>";

                $flag2 = 0;
            }

            echo "

            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>

        ";
        } else if ($pro_sub_title == "团聚类") {

            $product_label = "

            <br>

            <li style=\"list-style-type:none;\">
            
            $pro_sub_title

            </li>

            ";

            if ($flag3) {
                echo "
            $product_label

            <li id='fenge'>
                
            </li>";

                $flag3 = 0;
            }

            echo "
            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>

        ";

        }


    }

    echo "
            </ul>
            <p>&NonBreakingSpace;</p>
            <p>&NonBreakingSpace;</p>
 
        ";
}


// getImmigration  Function Ends ///


/// getVisa Function Starts ///

function getVisa($product_category)
{


    global $db;

    $flag1 = 1;
    $flag2 = 1;
    $flag3 = 1;


    $aWhere = array();

    $aWhere[] = $product_category;


    $get_products = "select * from products WHERE " . $product_category . " ORDER BY cat_id ASC";

    $run_products = mysqli_query($db, $get_products);


    echo "
            <ul>
        ";

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
            
            <li style=\"list-style-type:none;\">
            
            $pro_sub_title

            </li>
                        
          
            ";

            if ($flag1) {
                echo "

            $product_label

            <li id='fenge'>
                
            </li>";

                $flag1 = 0;
            }

            echo "

            
            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>


        ";


        } else if ($pro_sub_title == "访问签") {
            $product_label = "
            <br>
            <li style=\"list-style-type:none;\">
            
            $pro_sub_title

            </li>

            ";

            if ($flag2) {
                echo "

            $product_label

            <li id='fenge'>
                
            </li>";

                $flag2 = 0;
            }

            echo "

                            
            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>



        ";
        } else if ($pro_sub_title == "学签类") {

            $product_label = "

            <br>

            <li style=\"list-style-type:none;\">
            
            $pro_sub_title

            </li>

            ";

            if ($flag3) {
                echo "
            $product_label

            <li id='fenge'>
                
            </li>";

                $flag3 = 0;
            }

            echo "

            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>


        ";

        }


    }

    echo "
            </ul>
            <p>&NonBreakingSpace;</p>
            <p>&NonBreakingSpace;</p>
 
        ";
}


/// getVisa Function Ends ///



// getStudy Function Starts ///

function getStudy($product_category)
{
    global $db;

    $aWhere = array();

    $aWhere[] = $product_category;

    $aWhere[] = " ORDER BY cat_id ASC";


    $get_products = "select * from products WHERE " . $product_category . " ORDER BY cat_id ASC";

    $run_products = mysqli_query($db, $get_products);

    echo "
            <ul>
        ";


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


        echo "
            <li>
            
            <a href='$pro_url'> $pro_title </a>

            </li>

        ";

    }
    echo "
            </ul>
            <p>&NonBreakingSpace;</p>
            <p>&NonBreakingSpace;</p>
 
        ";

}


// getStudy Function Ends ///


// getWiki Function Starts //

function getWiki()
{

    global $db;


    $query = "SELECT * FROM products WHERE p_cat_id=4 ORDER BY date DESC";
    $data = mysqli_query($db, $query);

    if (!$data) {
        printf("Error: %s\n", mysqli_error($db));
        exit();
    }

    while ($row = mysqli_fetch_array($data)) {

        $pro_title = $row['product_title'];


        $pro_url = $row['product_url'];

        $pro_feature = shortenText($row['product_desc']);

        $pro_date = friend_date(strtotime($row['date']));

        echo "

                        
               <p>
                    <a href='$pro_url' style='color: #0b0b0b'><h4><i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i>&nbsp $pro_title </h4></a>
               </p>
                            
               <div class='container-fluid' style='color: grey;border-bottom: solid orange 2px;'>
                    <div class='col-sm-10'>
                    
                        <p>
                           $pro_feature
                        </p>   
                    
                    </div>
                    
                    <div class='col-sm-2'>
             
                 
                        <p style='text-align: right'>
                            $pro_date
                        </p>                   
           
                    </div>
                                                
                </div>                      
 
        ";

    }

}

// getWiki Function Ends //

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

    echo "<li><a href='index.php?page=1";

    if (!empty($aPath)) {
        echo "&" . $aPath;
    }

    echo "' >" . '<<' . "</a></li>";


    for ($i = 1; $i <= $total_pages; $i++) {

        echo "<li><a href='index.php?page=" . $i . (!empty($aPath) ? '&' . $aPath : '') . "' >" . $i . "</a></li>";

    };

    echo "<li><a href='index.php?page=$total_pages";

    if (!empty($aPath)) {
        echo "&" . $aPath;
    }

    echo "' >" . '>>' . "</a></li>";


/// getPaginator Function Code Ends ///

}

/// getPaginator Function Ends ///


?>