<?php

include('./header.php');
include('./db.php');

?>

                    <!-- Products tab & slick -->
                    <h1 align="center">Our Team</h1>
                    <div class="col-md-12 mainn mainn-raised">
                        <div class="row">
                            <div class="products-tabs">
                                <!-- tab -->
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1" >
                                    
                                    <?php
                    include 'db.php';
                                
                    
                $product_query = "SELECT * FROM developers";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $dev_id    = $row['ID'];
                        $dev_name   = $row['developer_name'];
                        $dev_roll = $row['developer_Roll'];
                        $dev_image = $row['developer_image'];
                        $dev_facebook = $row['facebook'];
                        $dev_github= $row['github'];
                        $dev_linkedin = $row['linkedin'];
 

                        echo "
                
                        
                               
                                <div class='product'>
                                    <div class='img_center'>
                                        <img src='dev_images/$dev_image' style='max-height: 200px;' alt='center'> 
                                    </div>
                                    <div class='product-body'>
                                        
                                        <h3 class='product-name header-cart-item-name'>$dev_name</h3>
                                        <p class='product-category'>$dev_roll</p> 
                                      <div class='product-btns'>
                                            <button class='add-to-wishlist'><i class='fa fa-facebook'></i><span class='tooltipp'>facebook</span></button>
                                            <button class='add-to-compare'><i class='fa fa-github'></i><span class='tooltipp'>github</span></button>
                                            <button class='quick-view'><i class='fa fa-instagram'></i><span class='tooltipp'>instagram</span></button>
                                        </div>
                                        
                                </div>
                              
                               
                            
                        
            ";
        }
        ;
      
}
?>
                                        <!-- product -->
                                        
    
                                        <!-- /product -->
                                        
                                        
                                        <!-- /product -->
                                    </div>
                                    <div id="slick-nav-1" class="products-slick-nav"></div>
                                </div>
                                <!-- /tab -->
                            </div>
                        </div>
                    </div>
                </div>  

<?php include 'footer.php' ; ?>