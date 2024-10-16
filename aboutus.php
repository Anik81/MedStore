<?php

include('./header.php');
include('./db.php');

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>About Us</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/aboutus.css">
        <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <section>
            <div class = "image">
                <!-- image here -->
				 <img src='img/aboutus1.jpg'> 
            </div>

            <div class = "content">
                <h2>About Us</h2>
                <span><!-- line here --></span>
				<?php 
				include 'db.php';
				 $product_query = "SELECT * FROM aboutus";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $aboutus_id    = $row['ID'];
                        $about_details = $row['about'];
                      echo"  
				
                <p>$about_details</p>";
				};}
				?>
                <ul class = "links">
                    <li><a href = "#">Delivery</a></li>

                    <div class = "vertical-line"></div>

                    <li><a href = "#">Service</a></li>

                    <div class = "vertical-line"></div>
                    
                    <li><a href = "#">Contact US</a></li>
                </ul>

                <ul class = "icons">
                    <li>
                        <i class = "fa fa-twitter"></i>
                    </li>
                    <li>
                        <i class = "fa fa-facebook"></i>
                    </li>
                    <li>
                        <i class = "fa fa-github"></i>
                    </li>
                    <li>
                        <i class = "fa fa-instagram"></i>
                    </li>
                </ul>
            </div>
        </section>
        
    </body>
</html>
<?php include 'footer.php' ; ?>