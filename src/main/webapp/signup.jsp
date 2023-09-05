<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="assets/css/signup.css">
<link rel="shortcut icon"
	href="https://bookztore.netlify.app/assets/images/favicon%20img.png"
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
<title>BOOKS-STORE | SIGNUP </title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<meta name="google-signin-client_id"
	content="2090015405-5sk0mum079j5rhpqacttb1qnt9s2qmmn.apps.googleusercontent.com">

</head>

<body>

	<!------------------ START THE LOGIN PAGE ---------------->

	<div class="container">
		<div class="forms">
			<div class="svg-img">
				<img src="assets/images/undraw_bibliophile_re_xarc.svg"
					alt="svg img">
			</div>
			<div class="login-form">
				<form id="register" method="post" action="<%=request.getContextPath()%>/SignUpServlet">
					<h1>
						Welcome to <span>Book Store.</span>
					</h1>
					<br>
					<p>Enhance Your knowledge Here.</p>
					<label for="User name"></label>
					 <input type="text" name="name"
						placeholder="Enter your name" id="name" required="true"
						pattern="^[a-zA-Z]{3,20}$"><br> 
						
						<input type="text" placeholder="Enter your number" id="phone_number" required="true" name="number"
						maxlength="10"><br> 
						
						<input type="email" placeholder="Enter Your Email" id="email" name="email" required="true"><br>

					<input type="password" placeholder="Enter your password" name="password"
						id="password" required="true"> <br>

					<input type="password" placeholder="Confirm Password" name="confirmpassword"
						id="confirm_pwd" required="true"> <a
						href="">
						
						<input class="btn" type="submit" value="Sign Up"></a><br>

					<div class="rem-me">
						<input type="checkbox" id="check" re>
						<h4>Remember me</h4>
						<a href="">
							<div class="already-user">
								<span>Already a user? <a href=>Login</a></span>
							</div>
						</a>
					</div>
					<h2>Sign Up With Our Social links</h2>

					<div class="social-link">
						<i class="fa-brands fa-google"></i> <i
							class="fa-brands fa-facebook"></i> <i
							class="fa-brands fa-twitter"></i> <i class="fa-brands fa-apple"></i>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>