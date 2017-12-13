<?php

//fetch.php
include("includes/db.php");
include("functions/functions.php");

/*fetch dongtai*/
if (isset($_GET['offset']) && isset($_GET['limit'])) {

    $limit = $_GET['limit'];
    $offset = $_GET['offset'];


    $query = "SELECT * FROM products WHERE p_cat_id=5 ORDER BY date DESC LIMIT $limit OFFSET $offset";
    $data = mysqli_query($con, $query);

    if (!$data) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }

    while ($row = mysqli_fetch_array($data)) {

        $pro_title = $row['product_title'];

        $pro_label = $row['product_label'];

        $pro_url = $row['product_url'];

        $pro_feature = shortenText($row['product_features']);

        $pro_img1 = $row['product_img1'];
        $pro_date =friend_date(strtotime($row['date']));

        if ($pro_label == "") {

            $product_label = "";

        } else {

            $product_label = "

            <a class='label sale' href='$pro_url' >

                <div class='product-label'>$pro_label</div>

                <div class='label-background'> </div>

            </a>

            ";

        }


        echo "

                <div class='col-md-12 col-sm-12' id='post'><!-- col-md-4 col-sm-6 box Starts -->

                        <div class='col-md-4  img-post'>
                            <a href='$pro_url'> 
                                <img src='admin_area\\product_images\\$pro_img1' class='img-responsive'>
                             </a>
                        </div>

                        <div class='col-md-8'>
                            
                            <a href='$pro_url'> <h4>$pro_title </h4></a>

                            <p><span>$pro_feature</span></p>
                            <br>
                
                            <hr>

                            <p>
                      
                            <div class='post_label'> $pro_label  </div>
                            <div class='post_date'> $pro_date </div>
                            </p>
                            


                        </div>
             
                </div>    
                
              

        ";

    }



}

/*fetch wiki*/
if (isset($_GET['offset_wiki']) && isset($_GET['limit_wiki'])) {

    $limit = $_GET['limit_wiki'];
    $offset = $_GET['offset_wiki'];


    $query = "SELECT * FROM products WHERE p_cat_id=4 ORDER BY date DESC LIMIT $limit OFFSET $offset";
    $data = mysqli_query($con, $query);

    if (!$data) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }

    echo "

        <div class='table-responsive'>
            <table class='table table-condensed'>
            <thead>
                 <tr>
                    <td></td>
                    <td></td>
                </tr>
    
            </thead>
            <tbody>";



    while ($row = mysqli_fetch_array($data)) {

        $pro_title = $row['product_title'];

        $pro_label = $row['product_label'];

        $pro_url = $row['product_url'];

        $pro_feature = shortenText($row['product_features']);

        $pro_date =friend_date(strtotime($row['date']));

        echo "

                        
                             <tr class='warning'> 
                             
                                <td><a href='$pro_url'><h4 style='color: #0b0b0b'>$pro_title </h4></a></td>                       
                           
                                <td>$pro_date</td>   
                                 
                                
                                              
                            </tr>
                            
                            <tr style='border-bottom: solid orange 2px'> 
                            
                               <td style='color: grey'>$pro_feature</td>                       
                               <td></td>
                             
                                                     
                            </tr>
                            
               


        ";

    }

    echo "
        </tbody>
    </table>
</div>
";



}


/*fetch tax*/
if (isset($_POST["action"])) {

    $output = '';
    if ($_POST["action"] == "country") {
        $query = "SELECT rate FROM tax_rate WHERE province = '" . $_POST["query"] . "' GROUP BY rate";
        $result = mysqli_query($con, $query);

        while ($row = mysqli_fetch_array($result)) {
            $output = $row["rate"];
        }
    }

    echo $output;
}
?>
