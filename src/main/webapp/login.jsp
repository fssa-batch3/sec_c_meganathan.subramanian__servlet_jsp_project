<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="assets/css/login.css">
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
<title>BOOKS-STORE | LOGIN </title>

</head>

<body>


	<!------------ START THE LOGIN PAGE --------------------->

	<div class="container">
		<div class="forms">
			<div class="login-form">
				<form id="loginform" method="post" action="<%=request.getContextPath()%>/LoginServlet">
					<h1>
						Welcome to <span>Book Store.</span>
					</h1>
					<br>
					<p>Enhance Your knowledge Here.</p>
					<label for="User id "></label> <input type="email" name="email"
						placeholder="youremail@gmail.com" id="email" required><br>
					<input type="password" placeholder="*************" name="password"
						id="password" required><br>
					<input class="btn" id="user_login" type="submit" value="Login"></input>
					<div class="rem-me">
						<input type="checkbox" id="check">
						<h4>Remember me</h4>
						<a href="">
							<h3>Forget Password?</h3>
						</a>
					</div>
					<div class="new-user"> 
						<h3>
							New User:<a href="<%=request.getContextPath()%>/signup.jsp">SignUp</a>
						</h3>
					</div>
					<h2>Login With Our Social links</h2>
					<div class="social-link">
						<i class="fa-brands fa-google"></i> <i
							class="fa-brands fa-facebook"></i> <i
							class="fa-brands fa-twitter"></i> <i class="fa-brands fa-apple"></i>
					</div>
				</form>

			</div>

			<div class="svg-img">
				<img src="assets/images/reading time.svg" alt="svg img">
			</div>
		</div>

	</div>
</body>

</html>