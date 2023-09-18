<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.bookstore.model.User"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/profilepage.css">
<link rel="shortcut icon" href="../../assets/images/favicon img.png" 
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
	<!------------------------ Create the navigation bar ----------------------->

	<!--  append the header by dynamic by js -->
	<jsp:include page="header.jsp"></jsp:include>

	<div class="home-page">
		<a href="../../index.html">home></a> <a href="../Books/self_help.html">products></a>
		<a href="../Account/edit-profile.html">Account</a>
	</div>

	<!------ START THE PROFILE CONTENT ---------------->
	<div class="container">
		<div class="edit-profile">
			<div class="profile-box">
				<div class="profile-img">
					<img src="assets/images/profie img.jpg" alt="profile img"
						id="profile_img">
					<h3>
						Hello, <span id="user_name">user</span>
					</h3>
				</div>
				<hr>
				<div class="profile-options">
					<h2 id="user_profile">Manage Profile</h2>
					<h2 id="user_return">Return & Orders</h2>
					<h2>Manage address</h2>
					<h2>Terms & condition</h2>
					<h2>Log Out</h2>
				</div>
			</div>
		</div>

		<!------------ START THE EDIT CONTENT  ------------->

		<%
		User userDetails = (User) request.getAttribute("userDetails");
		if (userDetails != null) {
		%>

		<div class="user-edit">
			<div class="user">
				<div class="user-inp">
					<h1>Edit Your Profile</h1>
					<form id="user_form"
						action="<%=request.getContextPath()%>/UpdateProfileServlet"
						method="post">
						<div class="first-inpt">
							<div class="user-name">
								<label for="name">Name :</label><br> <input type="text"
									name="name" id="name" placeholder="Username"
									value="<%=userDetails.getName()%>" pattern="^[a-zA-Z]{4,15}$"
									required disabled>
							</div>

							<div class="user-password">
								<label for="last">Password :</label><br> <input
									type="password" pattern="/^[a-zA-Z0-9!@#\$%\^\&*_=+-]{8,12}$/g"
									id="password" placeholder="*********" disabled required
									name="password" value="<%=userDetails.getPassword()%>">
							</div>
							<div class="user-email">
								<label for="email">Email :</label><br> <input type="email"
									name="email" placeholder="example@gmail.com" id="email"
									value="<%=userDetails.getEmail()%>" disabled required>
							</div>

							<div class="user-phone-number">
								<label for="number">phone Number:</label><br> <input
									type="tel" placeholder="1234567892" name="phonenumber"
									id="phone_number" value="<%=userDetails.getPhoneNumber()%>"
									maxlength="10" required disabled>
							</div>
						</div>

						<div class="second-inpt">
							<div class="user-address">
								<label for="adreess">address :</label><br>
								<textarea required cols="30" rows="4" id="user_address" disabled><%=userDetails.getAddress()%>
                         </textarea>
							</div>
							<div class="user_state">
								<label for="user_state">State :</label><br> <input
									type="text" name="state" id="user_state"
									placeholder="Enter your State" pattern="[A-Za-z]{1,10}"
									value="<%=userDetails.getState()%>" disabled required>
							</div>
							<div class="user_city">
								<label for="User_city">City : </label><br> <input
									type="text" name="city" id="user_city"
									placeholder="Enter your city" pattern="[A-Za-z]{1,10}"
									value="<%=userDetails.getCity()%>" disabled required>
							</div>
							<div class="user_pincode">
								<label for="user_pincode">Pincode : </label><br> <input
									type="text" name="pincode" id="user_pincode"
									placeholder="600081" value="<%=userDetails.getPincode()%>"
									pattern="[0-9]{7}" max="6" required disabled>
							</div>
						</div>

					</form>
					<%
					}
					%>

					<div class="user_edit_btn">

						<button id="edit_user" type="button">Update profile</button>
						<a
							href="<%= request.getContextPath() + "/UpdateProfileServlet" %>">
							<button id="Save_user" type="submit">save</button>
						</a>
					</div>


				</div>
				<div class="user_orders">
					<h1 class="head">My Orders</h1>
					<div class="book_info">
						<h2>Order Status : Pending...</h2>
						<hr class="horz_line">
						<div class="single_book">
							<div class="book_img">
								<img
									src="https://missnatura.in/wp-content/uploads/2023/02/IMG-20230222-WA0003.jpg"
									width="150px" height="130px" alt="Rosemery leaves" />
							</div>
							<div class="status">
								<p id="product_name">Attitude Is Everything</p>
								<p id="product_qunatity">Quantity - 1</p>
								<p id="Order_id">Order Id - 243</p>
								<p id="order_date">Ordered Date - 27/03/2023</p>
							</div>
							<div class="book_img">
								<img
									src="https://missnatura.in/wp-content/uploads/2023/02/IMG-20230222-WA0003.jpg"
									width="150px" height="130px" alt="Rosemery leaves" />
							</div>
							<div class="status">
								<p id="product_name">Attitude Is Everything</p>
								<p id="product_qunatity">Quantity - 1</p>
								<p id="Order_id">Order Id - 243</p>
								<p id="order_date">Ordered Date - 27/03/2023</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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
	<script type="text/javascript">
		// Function to enable or disable input fields
		function toggleInputs(disabled) {
			document.getElementById("name").disabled = disabled;
			document.getElementById("password").disabled = disabled;
			document.getElementById("email").disabled = disabled;
			document.getElementById("phone_number").disabled = disabled;
			document.getElementById("user_address").disabled = disabled;
			document.getElementById("user_state").disabled = disabled;
			document.getElementById("user_city").disabled = disabled;
			document.getElementById("user_pincode").disabled = disabled;
		}

		// Initial state: input fields are disabled
		toggleInputs(true);

		// Add an event listener to the "Edit" button
		document.getElementById("edit_user").addEventListener("click",
				function() {
					// Toggle the disabled attribute when the button is clicked
					toggleInputs(false); // Enable input fields
				});

		// Add an event listener to the "Save" button
		document.getElementById("Save_user").addEventListener("click",
				function() {
					toggleInputs(true); // Enable input fields
				});
	</script>

</body>

<!------------------------END OF THE FOOTER CONTENT ---------------------->

</html>