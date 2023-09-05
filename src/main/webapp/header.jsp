<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="assets/css/style.css">

<meta charset="ISO-8859-1">
<title>BOOK-STORE | HOMEPAGE</title>
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


<!------------------  GOOGLE FONTS  ------------------------>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
	<div class="head" id="head">
		<div class="nav-logo">
			<div class="logo">
				<a href=""><img
					src="assets/images/books_store-removebg-preview.png"
					alt="webiste logo" width="190"></a>
			</div>
			<div class="navi2">
				<ul class="fonts">
					<li><a href=""> <i class="fa-regular fa-heart"></i>
					</a></li>
					<a href=""><span id="wish_count"> </span></a>
					<li><a href=""> <i class="fa-solid fa-cart-shopping"></i>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="search_bar">
			<input type="text" placeholder="Search By Author Name Or Book name"
				id="Search_book">
		</div>

		<div class="container">
			<div class="nav">
				<div class="navi1">
					<ul>
						<li><a href=""><img src="assets/images/search books.png"
								alt="search books img"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="navigation">
		<ul>
			<li><a href="">Home</a></li>
			<li class="explore-menu"><a href="">Categories<i
					class="fa-solid fa-caret-down"></i></a>
				<ol class="Explore-option">
					<li class="Arts-option"><a href="" class="Categories">Arts
							and Biography</a>
						<div class="arts-menu"></div></li>
					<li><a href="#" class="Categories">Fiction Books</a></li>
					<li><a href="" class="Categories">Law</a></li>
					<li><a href="" class="Categories">Medicine</a></li>
					<li><a href="" class="Categories">Self Help book</a></li>
					<li><a href="#" class="Categories">Life Style</a></li>
					<li><a href="#" class="Categories">Science And Maths</a></li>
				</ol></li>
			<li><a href="">Combo</a></li>
			<li><a href="">Customer Feedback</a></li>
			<li class="profile-menu"><a href="">My Account <i
					class="fa-solid fa-user"></i></a>
				<div class="profile">
					<ol>
						<li><a href=""><i class="fa-solid fa-pen-to-square"></i>Edit
								Profile</a></li>
						<li><a href="#"><i class="fa-solid fa-message"></i>Inbox</a>
						</li>
						<li><a href="#"><i class="fa-solid fa-bars"></i>Setting</a></li>
						<li id="log-out"><a href="#"><i
								class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a></li>
					</ol>
				</div>
			<li><a href="">Seller</a></li>
			</li>
		</ul>
	</div>
	<!------ Adding a AD image ------------>

	<div class="slider-frame">
		<div class="slide-image">
			<div class="ad-img">
				<img src="assets/images/ad 1.jfif" alt="ad 1">
			</div>
			<div class="ad-img">
				<img src="assets/images/ad 2.jpeg" alt="ad 1">
			</div>
			<div class="ad-img">
				<img src="assets/images/ad4.jpg" alt="ad 1">
			</div>

		</div>
	</div>

	<!---------- End of the ad animation -------------->




</body>
</html>