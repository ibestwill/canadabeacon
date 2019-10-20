<?php

//fetch.php
include("includes/db.php");
include("functions/functions.php");

/*fetch dongtai*/
if (isset($_GET['offset']) && isset($_GET['limit'])) {

    $limit = $_GET['limit'];
    $offset = $_GET['offset'];
    $i=0;

    $query = "SELECT * FROM products WHERE p_cat_id=5 ORDER BY post_id DESC LIMIT $limit OFFSET $offset";
    $data = mysqli_query($con, $query);

    if (!$data) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }

    while ($row = mysqli_fetch_array($data)) {

        $pro_title = $row['product_title'];

        $pro_label = $row['product_label'];

        $pro_url = $row['product_url'];

        $pro_feature = shortenText($row['product_desc']);

        $pro_img1 = $row['product_img1'];
        $pro_date = $row['post_id'];

        $i++;

        if($i%3==1){
            echo "
                <div class='container-fluid bg-3'>
                      <div class='row'>
                
             
            ";

        }


        echo "

                <div id='post'>

                        <div class='col-md-4  img-post'>
                            <a href='$pro_url'> 
                                <img src='admin_area\\product_images\\$pro_img1' class='img-responsive'>
                             </a>
                             
                            <a href='$pro_url'> <h4>$pro_title </h4></a>
                            
                            

                            <p><span><span style='color: #9c3328'> $pro_date  : </span>$pro_feature</span></p>
                         
               
                   
                  
                           
                            
                        </div>

                      
             
                </div>    
                
              

        ";

        if($i%3==0){
            echo "
                
                      </div>
                
                </div>
            ";

        }

    }

}

/*fetch wiki*/
if (isset($_GET['offset_wiki']) && isset($_GET['limit_wiki'])) {

    $limit = $_GET['limit_wiki'];
    $offset = $_GET['offset_wiki'];
    $i = 0;


    $query = "SELECT * FROM products WHERE p_cat_id=4 ORDER BY post_id DESC LIMIT $limit OFFSET $offset";
    $data = mysqli_query($con, $query);

    if (!$data) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }




    while ($row = mysqli_fetch_array($data)) {

        $pro_title = $row['product_title'];

        $pro_label = $row['product_label'];

        $pro_url = $row['product_url'];

        $pro_feature = shortenText($row['product_desc']);

        $pro_date = $row['post_id'];

        $i++;

        echo "

                        
               <p>
                    <a href='$pro_url' style='color: #0b0b0b'><h4><i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i>&nbsp $pro_title </h4></a>
               </p>
               
               ";

        if ($i % 2 == 1) {
            echo "
                            
               <div class='container-fluid' style='color: grey;border-bottom: solid orange 2px;'>
               
               ";
        }


        if ($i % 2 == 0) {
            echo "
                            
               <div class='container-fluid' style='color: grey;border-bottom: solid red 2px;'>
               
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
