<%@page import="com.fssa.bookstore.logger.Logger"%>
<%@page import="java.util.List"%>
<%@page import="com.fssa.bookstore.model.Orders"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="assets/css/style.css">
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
	margin-left: 94px;
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

.user_orders {
	margin-left: 50px;
	padding: 1.5vh 3vw 1.5vh 1vh;
}

.order-container {
	max-height: 80vh;
	overflow-y: scroll;
	padding: 2vh 2vw 2vh 2vw;
	box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px,
		rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
}

.first_prod {
	display: flex;
	align-items: center;
	margin-top: 12px;
	border-style: groove;
	border-radius: 4px;
	width: 100%;
	margin-bottom: 40px;
	margin-top: 30px;
	padding: 18px;
	box-shadow: rgba(0, 0, 0, 0.2) 0px 12px 28px 0px, rgba(0, 0, 0, 0.1) 0px
		2px 4px 0px, rgba(255, 255, 255, 0.05) 0px 0px 0px 1px inset;
}

.status {
	margin-left: 48px;
}

.status h2 {
	text-decoration: underline;
	font-weight: 500;
	font-size: 28px;
}

.prod_img img {
	width: 166px;
	height: 228px;
	border-style: groove;
	padding: 10px;
	margin-top: 28px;
}

.address {
	margin-left: 12px;
	font-size: 19px;
	font-weight: 600;
	margin-top: -8vh;
}

.address p {
	margin-top: 12px;
	font-size: 19px;
	font-weight: 600;
}

.payment-mode {
	margin-top: -90px;
	margin-left: 12px;
	font-size: 19px;
	font-weight: 600;
}

.status p {
	margin-top: 17px;
	font-size: 19px;
	font-weight: 600;
}

.hr_line {
	color: black;
	z-index: 1;
}
.no-order-img img{
width: 590px;
margin-left:200px;
}
.no-order-img h2{
color: grey;
font-size: 34px;
text-align: center;
letter-spacing: 1px;
margin-left: 180px;
margin-top: -65px;
}

</style>
</head>

<body>
	<!------------------------ Create the navigation bar ----------------------->

	<!--  append the header by dynamic by js -->
	<jsp:include page="header.jsp"></jsp:include>


<div>
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
		List<Orders> myOrder = (List<Orders>) request.getAttribute("myOrder");
		if (myOrder != null && !myOrder.isEmpty()) {
		%>

		<div class="user_orders">
			<h1 class="head">My Orders:</h1>

			<div class="order-container">
				<%
				for (Orders orderDetail : myOrder) {
				%>
				<div class="order_info">

					<div class="single_prod">

						<div class="first_prod">

							<div class="prod_img">

								<img src="<%=orderDetail.getBookImgUrl()%>" />
							</div>

							<div class="status">

								<p id="product_name"><%=orderDetail.getBookName()%></p>
								<p>
									Price -
									<%=orderDetail.getPrice()%></p>
								<p id="product_qunatity">
									Quantity -
									<%=orderDetail.getQuantity()%></p>
								<p id="Order_id">
									Order Id -
									<%=orderDetail.getId()%></p>
								<p id="order_date">Ordered Date :</P>
								<h4><%=orderDetail.getOrderDate()%></h4>
							</div>
							<div class="address">
								<label id="" for="address">Address:</label>
								<p><%=orderDetail.getAddress()%></p>

								<p>Payment mode -(COD)</p>

								<%
								if (!orderDetail.isStatus()) {
								%>
								<p>Status - Canceled</p>
								<%
								} else {
								%>

								<p>Status - Not deliverd</p>
								<%
								}
								%>

								<a
									href="<%=request.getContextPath()%>/cancel_order?orderId=<%=orderDetail.getId()%>"><button>Cancel
										order?</button></a>

							</div>


						</div>


					</div>

				</div>
				<%
				}
				%>
			</div>

		</div>
	</div>

	<%
	} else {
	%>
	<div class="no-order-img">
		<img
			src="<%= request.getContextPath()%>/assets/images/No-order.jpg">
			<h2>Look like you're not order yet anything !</h2>
	</div>
	<%
	}
	%>
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


</body>

<!------------------------END OF THE FOOTER CONTENT ---------------------->

</html>