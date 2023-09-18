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
<title>BOOKS-STORE | LOGIN</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>
</head>

<body>
	<!--  Below the code for show the error -->
	<%
	String error = (String) request.getAttribute("errorMessage");
	if (error != null && !("".equals(error))) {
	%>
	<script>
		Notify.error(
		`<%=error%>
		`);
	</script>
	<%
	} else {
	%>
	<script>
        Notify.error("please fill the details");
    </script>
	<%
	}
	%>
	<!------------ START THE LOGIN PAGE --------------------->

	<div class="container">
		<div id="imageContainer"></div>

		<!-- sign in form starts  -->
		<div class="form-box">


			<h1 id="signup">
				Look like you're <br> <span class="title">new here!</span>
			</h1>
			<div class="div">
				<h1 id="back">Welcome back!</h1>
			</div>
			<div class="button-box">
				<div id="btn"></div>
				<button type="button" class="toggle-btn" onclick="login()">Login</button>
				<button type="button" class="toggle-btn" onclick="register()">Register</button>
			</div>

			<form id="register" class="input-group"
				action="<%=request.getContextPath()%>/SignUpServlet" method="post">
				<input type="text" id="name" class="input-field" placeholder="Name"
					pattern="[A-Za-z]+"
					title="Username doesn't contain spaces or number" name="name"
					required /> <input type="number" id="phonenumber"
					class="input-field" placeholder="phonenumber"
					title="number cannot be out of 10 digits" maxlength="10"
					name="number" required /> <input type="email" id="email"
					class="input-field" placeholder="Email" name="email" required /> <input
					type="password" id="password" class="input-field"
					placeholder="Password" name="password"
					pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,32}$"
					title="Password Should be Atleast 8 Characters and Should Contain Atleast One Uppercase, One LowerCase, One Number and One Special Charecter"
					required /> <input type="password" id="password"
					class="input-field" placeholder="confrim password"
					pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,32}$"
					name="confirmpassword"
					title="Password Should be Atleast 8 Characters and Should Contain Atleast One Uppercase, One LowerCase, One Number and One Special Charecter"
					required />

				<button type="submit" class="submit-btn">Continue</button>
			</form>

			<form id="login" class="input-group" method="post"
				action="<%=request.getContextPath()%>/LoginServlet">


				<input type="email" id="emaillogin" class="input-field"
					placeholder="Email" name="email" /> 
				<input type="password" id="passwordlogin" class="input-field" placeholder="Password" name="password" /> 
				<input type="checkbox" class="check-box" />
				<span>Remember Password</span>
				<button type="submit" class="submit-btn" id="submit">Log In</button>

				<p id="create-acc">
					Create a account : <a href="" id="signAcc">SignUp?</a>
				</p>

			</form>



			<p class="or" id="or">------------- or ----------------</p>

			<h2 id="link-text">Sign Up With Our Social links</h2>

			<div class="social-link" id="links">
				<i class="fa-brands fa-google"></i> <i class="fa-brands fa-facebook"></i>
				<i class="fa-brands fa-twitter"></i>
			</div>
		</div>
	</div>

	<script>
		let x = document.getElementById("login");
		let y = document.getElementById("register");
		let z = document.getElementById("btn");
		let links = document.getElementById("links");
		let or = document.getElementById("or");
		let text = document.getElementById("link-text");
		let sub = document.getElementById("submit");
		let sign = document.getElementById("signup");
		let backLogin = document.getElementById("back");
		let img = document.createElement("img");
		let container = document.getElementById("imageContainer");

		const form = document.getElementById("login");
		form.addEventListener('submit', function() {
			const emailField = document.getElementById("emaillogin");
			const passwordField = document.getElementById("passwordlogin");

			if ("" === emailField.value || "" ===  passwordField.value) {
				event.preventDefault(); // Prevent form submission
				alert('Please fill in all fields.'); // Display an alert
			}
		});

		img.src = "assets/images/undraw_bibliophile_re_xarc.svg"
		img.style.width = "420px";
		img.style.marginTop = "120px"
		container.appendChild(img);

		links.style.display = "none";
		or.style.display = "none";
		text.style.display = "none";
		sign.style.display = "none";

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
			links.style.display = "block";
			or.style.display = "block";
			text.style.display = "block"
			sign.style.display = "block";
			backLogin.style.display = "none";
			img.src = "assets/images/reading time.svg"
			img.style.width = "520px";
			img.style.marginTop = "190px"
			container.appendChild(img);
		}

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
			links.style.display = "none";
			or.style.display = "none";
			text.style.display = "none";
			sub.style.marginTop = "20px";
			sign.style.display = "none";
			backLogin.style.display = "block";
			img.src = "assets/images/undraw_bibliophile_re_xarc.svg"
			img.style.width = "420px";
			img.style.marginTop = "120px"
			container.appendChild(img);
		}
	</script>
</body>

</html>