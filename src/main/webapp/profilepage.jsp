<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.bookstore.model.User"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="assets/css/header.css">
<link rel="shortcut icon" href="assets/images/favicon img.png"
	type="image/x-icon">
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
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&family=Nunito:wght@300&display=swap')
	;

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	scroll-behavior: smooth;
}

body {
	font-family: 'Poppins', sans-serif;
	font-family: 'Nunito', sans-serif;
}

.navigation>ul li a {
	color: black;
	text-decoration: none;
}

/* -------- user profile edit ------------- */
.fa-user {
	margin-left: 10px;
	font-size: 24px;
	color: darkblue;
}

/*----- PROFILE EDIT --------*/
.profile-img img {
	width: 150px;
	height: 150px;
	margin-top: 15px;
	border: 1px solid black;
	border-radius: 50%;
	margin-left: 65px;
}

.profile-box {
	margin-left: 170px;
	background-color: aliceblue;
	border-radius: 5px;
	width: 280px;
	height: 530px;
	margin-top: 30px;
}

.profile-box hr {
	height: 0;
	width: 80%;
	margin-left: 30px;
	margin-top: 1px solid grey;
}

.profile-img h3 {
	margin: 24px auto;
	font-size: 23px;
	text-align: center;
	font-family: 'Times New Roman', Times, serif;
}

.profile-options h2:hover {
	cursor: pointer;
	text-decoration: underline;
}

.profile-options {
	font-family: Georgia, 'Times New Roman', Times, serif;
	font-size: 14px;
	margin-left: 55px;
	margin-top: 27px;
}

.profile-options h2 {
	margin-bottom: 28px;
	font-size: 21px;
}

.container {
	display: flex;
}

.user-edit {
	margin-left: 10px;
	background-color: #a8b2cd;
	margin-top: 31px;
	border-radius: 3px;
	height: 600px;
	/* display: none; */
}

#user_form {
	display: flex;
	justify-content: space-around;
	align-content: center;
	margin-top: 20px;
	margin-left: 20px;
}

.user-inp input {
	margin: 17px auto;
	height: 35px;
	border: none;
	font-weight: 500;
	font-size: 18px;
	padding-left: 10px;
	outline: none;
	width: 90%;
	border-radius: 3px;
	margin-left: 20px;
}

.first-inpt input {
	width: 100%;
}

.user-inp input:focus {
	border: 2px solid #584848;
	border-radius: 3px;
}

.user-inp label {
	font-size: 24px;
	font-family: 'Times New Roman', Times, serif;
	font-weight: 600;
	margin-left: 20px;
	width: 164px;
	display: inline-block;
}

.user-inp a {
	margin-left: 10px;
}

.user-inp button {
	height: 35px;
	font-size: 16px;
	font-weight: 600;
	width: 180px;
	border: none;
	color: rgb(71, 51, 51);
	border-radius: 2px;
	background-color: white;
	transition: 0.2s;
	margin-top: 20px;
	margin-left: 320px;
	cursor: pointer;
}

.user-inp button:hover {
	text-decoration: underline;
	background-color: rgb(162, 168, 249);
}

.user-inp textarea {
	font-size: 17px;
	font-weight: 700;
	resize: none;
	width: 446px;
	padding-left: 20px;
	line-height: 25px;
	border-radius: 5px;
	margin-left: 20px;
	margin-top: 12px;
}

.user-inp h1 {
	text-align: center;
	font-size: 32 px;
	font-family: sans-serif, 'Times New Roman', Times, serif;
	font-weight: 600;
	margin-top: 20px;
	transition: 0.2s;
}

.user {
	width: 900px;
}

.user_edit_btn {
	margin-top: 15px;
	margin-left: 150px;
}

/* Below the code for edit the user update form */
#UserUpdate-form {
	border-radius: 4px;
	width: 980px;
	height: 550px;
	display: flex;
	justify-content: space-around;
	align-content: center;
	margin-top: 100px;
	margin-left: 400px;
	background-color: white;
	padding: 30px;
	box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 1px, rgba(0, 0, 0, 0.07) 0px 2px
		2px, rgba(0, 0, 0, 0.07) 0px 4px 4px, rgba(0, 0, 0, 0.07) 0px 8px 8px,
		rgba(0, 0, 0, 0.07) 0px 16px 16px;

	/* margin-left: 20px; */
}

#UserUpdate-form label {
	font-size: 21px;
	color: black;
	font-weight: 600;
}

button {
	margin-top: 465px;
	margin-left: -900px;
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* Popup Styles */
.fa-xmark {
	color: #007bff;
	position: absolute;
	left: 89%;
	top: 14%;
	cursor: pointer;
	width: 5%;
	height: 5px;
}

.popup-overlay {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	backdrop-filter: blur(3px);
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 1;
}

.popup-container {
	position: fixed;
	top: 50%;
	left: 24%;
	padding: 20px;
}

/* Form Layout */
.userUpdateDiv {
	display: flex;
}

.input-column {
	flex: 1;
	padding: 10px;
}

.input-column input {
	width: 100%;
	padding: 8px;
	margin-bottom: 24px;
	margin-top: 19px;
	border: 1px solid black;
	outline: none;
	border-radius: 5px;
	font-size: 17px;
	font-weight: 500;
	padding-left: 20px;
}

.input-column textarea {
	font-size: 17px;
	font-weight: 500;
	resize: none;
	width: 446px;
	padding-left: 20px;
	line-height: 25px;
	border-radius: 5px;
	margin-top: 12px;
}

/* Save Button */
.save_btn {
	text-align: center;
	margin-top: 10px;
}

/* Responsive Styles */
@media ( max-width : 768px) {
	.userUpdateDiv {
		flex-direction: column;
	}
	.input-column {
		width: 100%;
	}
}

/*---------------start the footer content------ */
footer {
	width: 100%;
	background-color: #000;
	color: whitesmoke;
	font-size: 15px;
	font-weight: 600;
	padding: 60px 0 20px;
	margin-top: 100px;
	height: 310px;
}

.bookstore_logo img {
	width: 200px;
	max-width: 1000px;
}

.row {
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

.row ul li {
	list-style-type: none;
	margin: 4px;
	margin-top: 10px;
	transition: 0.2s;
	cursor: pointer;
}

footer h3 {
	color: white;
	margin-bottom: 20px;
}

.icons {
	color: white;
}

.contact_us .useful_links {
	align-items: center;
}

.icons i {
	font-size: 33px;
	padding-left: 30px;
}

.icons h3 {
	margin-left: 70px;
	color: red;
	font-size: 20px;
}

.useful_links h3 {
	margin-left: 5px;
}

.row ul li:hover {
	text-decoration: underline;
	color: crimson;
}

/* -----END OF THE FOOTER CONTENT-----*/
.user_orders {
	display: none;
}

.single_book {
	display: flex;
	flex-direction: column;
	margin-top: 20px;
}

.book_info {
	/* border-style: groove; */
	padding: 30px 50px;
}

.book_info h2 {
	margin: -3px 0px 20px;
	/* font-family:'Montserrat', sans-serif;  */
}

.book_img {
	display: flex;
	/* justify-content: center; */
	align-items: center;
	margin: 10px;
}

.status {
	margin: 5px 50px 0px 50px;
}

.status p {
	margin: 10px;
	font-size: large;
	font-weight: 500;
}

.horz_line {
	color: gray;
	background-color: gray;
	width: 100%;
	height: 3px;
	border-radius: 2px;
	border-width: 0px;
}

.head {
	text-align: center;
	margin-top: 20px;
}

.horizantal_line {
	margin-left: -195px;
	margin-top: 40px;
	color: gray;
	background-color: gray;
	width: 164%;
	height: 3px;
	border-radius: 2px;
	border-width: 0px;
}

.user-options > button {
	height: 35px;
	font-size: 16px;
	font-weight: 600;
	width: 180px;
	border: none;
	color: rgb(71, 51, 51);
	border-radius: 2px;
	background-color: white;
	transition: 0.2s;
	margin-top: 20px;
	margin-left: 83px;
	cursor: pointer;
}
.user-options{
display: flex;
}
.user-options > a{
margin-left:-272px;
}
</style>
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
        User userDetails = (User)request.getAttribute("userDetails");
        if(userDetails != null){
        
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
									value="<%= userDetails.getName() != null ? userDetails.getName() : ""%>"
									pattern="^[a-zA-Z]{4,15}$" required disabled> <input
									type="text" hidden="" value="<%= userDetails.getId()%>">
							</div>

							<div class="user-password">
								<label for="last">Password :</label><br> <input
									type="password" pattern="/^[a-zA-Z0-9!@#\$%\^\&*_=+-]{8,12}$/g"
									id="password" placeholder="*********" disabled required
									name="password"
									value="<%=userDetails.getPassword() != null ? userDetails.getPassword() : "" %>">
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
								<textarea required cols="30" rows="4" id="user_address" disabled><%=userDetails.getAddress() != null ? userDetails.getAddress() : "" %>
                         </textarea>
							</div>
							<div class="user_state">
								<label for="user_state">State :</label><br> <input
									type="text" name="state" id="user_state"
									placeholder="Enter your State" pattern="[A-Za-z]{1,10}"
									value="<%=userDetails.getState() != null ? userDetails.getState() : ""%>"
									disabled required>
							</div>
							<div class="user_city">
								<label for="User_city">City : </label><br> <input
									type="text" name="city" id="user_city"
									placeholder="Enter your city" pattern="[A-Za-z]{1,10}"
									value="<%=userDetails.getCity() != null ? userDetails.getCity() : ""%>"
									disabled required>
							</div>
							<div class="user_pincode">
								<label for="user_pincode">Pincode : </label><br> <input
									type="text" name="pincode" id="user_pincode"
									placeholder="600081"
									value="<%=userDetails.getPincode() != null ? userDetails.getPincode() : ""%>"
									pattern="[0-9]{7}" max="6" required disabled>
							</div>
						</div>
					</form>
					<a href="#"><button id="open-popup" type="button">Update profile</button></a> 
					<div class="user-options">
						<a href="deleteServlet?email=<%=userDetails.getEmail() != null ? userDetails.getEmail() : ""%>">
							<button type="button" id="deletebtn" >Delete</button>
						</a>
					</div>
				</div>

				<div class="popup-overlay" id="popup">
					<div class="popup-container"></div>
					<div class="userUpdateDiv">
						<form action="<%=request.getContextPath() + "/UpdateProfileServlet"%>"
							id="UserUpdate-form" method="post">
							<i class="fa-solid fa-xmark" id="close-popup"></i>
							<!-- Left Side Inputs -->
							<div class="input-column">
								<div class="user-name">
									<label for="name">Name :</label><br> <input type="text"
										name="name" id="name" placeholder="Username"
										value="<%=userDetails.getName() != null ? userDetails.getName() : ""%>"
										pattern="^[a-zA-Z]{4,15}$" required>
								</div>

								<div class="user-email">
									<br> <input type="email" hidden="" name="email"
										placeholder="example@gmail.com" id="email"
										value="<%=userDetails.getEmail() != null ? userDetails.getEmail() : ""%>"
										required>
								</div>

								<div class="user-phone-number">
									<label for="number">Phone Number:</label><br> <input
										type="tel" placeholder="1234567892" name="phonenumber"
										id="phone_number"
										value="<%=userDetails.getPhoneNumber() != null ? userDetails.getPhoneNumber() : ""%>"
										maxlength="10" required>
								</div>
							</div>

							<!-- Right Side Inputs -->
							<div class="input-column">
								<div class="user-address">
									<label for="adreess">Address :</label><br>
									<textarea required cols="30" rows="4" name="address"
										id="user_address"><%=userDetails.getAddress() != null ? userDetails.getAddress() : ""%></textarea>
								</div>

								<div class="user_state">
									<label for="user_state">State :</label><br> <input
										type="text" name="state" id="user_state"
										placeholder="Enter your State" pattern="[A-Za-z]{1,10}"
										value="<%=userDetails.getState() != null ? userDetails.getState() : ""%>"
										required>
								</div>

								<div class="user_city">
									<label for="User_city">City : </label><br> <input
										type="text" name="city" id="user_city"
										placeholder="Enter your city" pattern="[A-Za-z]{1,10}"
										value="<%=userDetails.getCity() != null ? userDetails.getCity() : ""%>"
										required>
								</div>

								<div class="user_pincode">
									<label for="user_pincode">Pincode : </label><br> <input
										type="number" name="pincode" id="user_pincode"
										placeholder="600081"
										value="<%=userDetails.getPincode() != null ? userDetails.getPincode() : ""%>"
										pattern="[0-9]{6}" required>
								</div>
							</div>

							<!-- Save Button -->
							<div class="save_btn">
								<button id="Save_user" type="submit">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<%
			}
			%>
			<!-- 	<div class="user_orders">
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
			</div> -->
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

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const popup = document.getElementById('popup');
			const openPopupButton = document.getElementById('open-popup');
			const closePopupButton = document.getElementById('close-popup');

			openPopupButton.addEventListener('click', function() {
				popup.style.display = 'block';
			});

			closePopupButton.addEventListener('click', function() {
				popup.style.display = 'none';
			});
		});

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
		document.getElementById("open-popup").addEventListener("click",
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