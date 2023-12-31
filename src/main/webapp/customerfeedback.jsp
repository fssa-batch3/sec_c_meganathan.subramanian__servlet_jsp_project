<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="assets/css/customerfeedback.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="shortcut icon" href="assets/images/favicon img.png"
	type="image/x-icon">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--------------------- Font awesome ------------------->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!------------------ google fonts ------------------------>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BOOKS-STORE</title>
</head>

<body>


	<!-- START THE feedback PAGE -->
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container container2">
		<div class="forms feedback-form">
			<div class="login-form feed-form">
				<form action="">
					<h1>
						Give Your Valuable <span> Feedback Here !!!</span>
					</h1>
					<label for="User id "></label> <input type="text"
						placeholder="Name" id="user_name"><br> <input
						type="email" placeholder="Enter Your Email" id="user_email"><br>
					<textarea name="feed-back" id="user_feedback" cols="59" rows="12"
						placeholder="Enter Your Message here..."></textarea>
					<a href="#"><input class="btn feed-btn" type="button"
						onclick="getdata()" value="submit"></a><br>
					<h3>Thanks For Visiting Our Website &#128516;</h3>
				</form>
			</div>

			<div class="svg-img feedback-img">
				<img src="assets/images/undraw_feedback_re_urmj.svg" alt="svg img">
			</div>
		</div>
	</div>


	<!------ End of the feedback page -------------->


	<!-------------------FOOTER CONTETNT ------------------>
	<footer>
		<div class="row">
			<div class="bookstore_logo">
				<img src="assets/images/logo.png" alt="bookstore logo">
				<h3>
					"Our purpose is motivate yourself <br>and improve your
					knowdledge".
				</h3>
			</div>
			<div class="useful_links">
				<h3>Stuff</h3>
				<ul>
					<li>Privacy</li>
					<li>Security</li>
					<li>FQA</li>
					<li>Coupons</li>
				</ul>
			</div>
			<div class="useful_links">
				<h3>Useful links</h3>
				<ul>
					<li>Blog Post</li>
					<li>Return Policy</li>
					<li>join Affilate</li>
					<li>Terms and Condition</li>

				</ul>
			</div>
			<div class="contact_us">
				<div class="icons">
					<h3>Contact US</h3>
					<i class="fa-brands fa-github"></i> <i
						class="fa-brands fa-linkedin"></i> <i
						class="fa-brands fa-whatsapp"></i> <i class="fa-brands fa-twitter"></i>
				</div>
			</div>
		</div>
		<p style="text-align: center;">&#169;Copyright 2022-Meganathan</p>
	</footer>

	<!------------------------END OF THE FOOTER CONTENT----------------- -->
	<script>
		function getdata() {
			let name = document.getElementById("user_name").value;
			let user_email = document.getElementById("user_email").value;
			let user_feedback = document.getElementById("user_feedback").value;

			let user_data = {};

			// Get data from users 

			user_data["name"] = name;
			user_data["user_email"] = user_email;
			user_data["user_feedback"] = user_feedback;

			// save to the all user_data to the local storage 

			localStorage.setItem()
		}
	</script>
	<script src="/assets/JS files/header.js"></script>
</body>

</html>