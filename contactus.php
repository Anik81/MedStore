<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink to fit= no">
  	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="bootstrap/css/main.css" />
</head>
<body background="img/back.jpg">

	<!--navigation bar-->
	<?php include 'header.php'; ?>

	<div class="container text-light">
		<div class="row mt-2">
			<div class="col-md-8">
				<div>
					<h1>Contact Us</h1>
					<p>We are happy to answere any questions you have or provide you with an estimate. Just send us a message in the form below with any questions you may have.</p>
				</div>
				<div>
					<form method="POST" action="contactUsDone.php">
						<div class="form-group pt-3">
							<label for="name">Name:</label>
							<input type="text" name="name" id="name" class="form-control" placeholder="Name" required>
						</div>
						<div class="form-group">
							<label for="email">Email:</label>
							<input type="email" name="email" id="email" class="form-control" placeholder="Enter your email" required>
						</div>
						<div class="form-group">
							<label for="phone">Phone:</label>
							<input type="tel" name="phone" id="phone" class="form-control" placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<label for="subject">Subject:</label>
							<input type="text" name="subject" id="subject" class="form-control" placeholder="Write the subject here" required>
						</div>
						<div class="form-group">
							<label for="message">Message:</label>
							<textarea name="message" id="message" class="form-control" placeholder="Write your message here" required></textarea>
						</div>
						<div class="form-group pt-2">
							<input type="submit" class="form-control btn btn-success" name="sendComplain" value="Send Message">
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4 my-auto pl-5">
				<div>
					<h5 class="text-danger"><u><strong>Email</strong></u></h5>
					<p><mark><em>medstore@gmail.com</em></mark></p>
				</div>
				<div>
					<h5 class="text-danger"><u><strong>Phone</strong></u></h5>
					<p><mark><em><a href="#">01234567891</a></em></mark></p>
				</div>
				<div>
					<h5 class="text-danger"><u><strong>Location</strong></u></h5>
					<p><mark><em>This is our Address</em></mark></p>
				</div>
				<img src="img/contactus.jpeg" class="img-fluid pt-5">
			</div>

			

		</div>
	</div>


	<?php include 'footer.php' ; ?>

	<!--scripts-->
    <script src="bootstrap/js/jquery.min.js"></script>
	<script src="bootstrap/js/popper.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
