<%@page import="com.fssa.bookstore.enums.Categories"%>
<%@page import="com.fssa.bookstore.service.BookService"%>
<%@page import="com.fssa.bookstore.model.Book"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

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

	<jsp:include page="header.jsp"></jsp:include>
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


	<!----------------------------------- Trending books Section ------------------------------------->

	<!-- Wishlist icons -->

	<!--  Below the code for mention the java code  -->

	<%
	List<Book> bookCatgoryTamil = (List<Book>)request.getAttribute("ListTamilBooks");
	%>
	
	<div class="trends">
		<div class="section-head">
			<h2>Tamil Edition Books</h2>
			<a href="Pages/Books/self_help.html">See All</a>
		</div>
		<hr>
		<div class="books">
			<%
			for (Book listOfBooks : bookCatgoryTamil) {
			%>
			<div class="Book_filter">
				<div id="wishlist_icons" class="wish_icons">
					<i class="fa-sharp fa-regular fa-heart icon_wishlist"
						id="wish_icon"></i>
					<div class="book-img">

						<div class="trend_book">
							<a href=""><img src=<%=listOfBooks.getBookImageUrl()%>
								alt="Book img"></a><a href=""><input type="button"
								value="add to cart" class="add"></a>
						</div>
						<div class="book-info">
							<p>
								<%=listOfBooks.getBookName()%>
							</p>
							<div class="rating">
								<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
									class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
									class="fa-solid fa-star"></i>
							</div>
							<h3>
								&#8377
								<%=listOfBooks.getBookPrice()%><s>&#8377 800</s>
							</h3>
							<a
								href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=listOfBooks.getBookId()%>"><button>Buy
									Now</button></a>
						</div>

					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>


		<!--  I have already created that list all book Servlet and set the attribute 
			Below the code i get it the Attiribute and run the server -->


		<div class="arrow-right">
			<i class="fa-solid fa-arrow-right"></i>
		</div>
		<div class="bottom-hr1">
			<hr>
		</div>
	</div>

	<!--------- Start The Best seller Book row -------------->

	<%
		List<Book> bookList = (List<Book>) request.getAttribute("listAllBook");
		if (bookList != null) {
	%>
	
	<div class="best-seller reveal">
		<div class="section-head">
			<h2 id="BestSeller">List all books</h2>
			<a href="Pages/Books/self_help.html">See All</a>
		</div>
		<hr>
		<div class="books">
			<%
			for (Book listAllbook : bookList) {
			%>

			<div class="Book_filter">
				<div id="wishlist_icons" class="wish_icons">
					<i class="fa-sharp fa-regular fa-heart icon_wishlist"
						id="wish_icon"></i>
					<div class="book-img">

						<div class="trend_book">
							<a href=""><img src=<%=listAllbook.getBookImageUrl()%>
								alt="Book img"></a><a href=""><input type="button"
								value="add to cart" class="add"></a>
						</div>
						<div class="book-info">
							<p>
								<%=listAllbook.getBookName()%>
							</p>
							<div class="rating">
								<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
									class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
									class="fa-solid fa-star"></i>
							</div>
							<h3>
								&#8377
								<%=listAllbook.getBookPrice()%><s>&#8377 800</s>
							</h3>
							<a
								href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=listAllbook.getBookId()%>"><button>Buy
									Now</button></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			}
			%>
		</div>
	</div>

	<div class="Row-2">
		<i class="fa-solid fa-arrow-right"></i>
	</div>
	<div class="bottom-hr2">
		<hr>
	</div>


	<!-------- Banner image ----------->



	<div class="container2">
		<div class="gif fiction_gif">
			<div class="gif_img ">
				<img src="assets/images/banner2.gif" alt="always learn gif">
			</div>
			<div class="gif_content fic_gif">
				<h2>
					Book Store is Always open Get Your<span> Favourite Books
						Here. !</span>
				</h2>
				<h3>
					Good Books Always Gives You <br> <span>Good Vibez.</span>
				</h3>
				<div class="Explore_btn fict_btn">
					<a href="index.html">
						<button>Find More!</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	
	<!----------------------------- End of the banner img -------------------------------->

	<!---------------------------- New Arrival book ------------------->

	<%
	List<Book> listFictionBook = (List<Book>)request.getAttribute("listFictionBooks");
	%>
	<div class="new-arrival">
		<div class="section-head">
			<h2>Our Best Fiction books</h2>
			<a href="">See All</a>
		</div>
		<hr>
		<div class="books">
			<!-- append the books dynamic -->

			<%
			for (Book listFictionBooks : listFictionBook) {
			%>

			<div class="Book_filter">
				<div id="wishlist_icons" class="wish_icons">
					<i class="fa-sharp fa-regular fa-heart icon_wishlist"
						id="wish_icon"></i>
					<div class="book-img">

						<div class="trend_book">
							<a href=""><img src=<%=listFictionBooks.getBookImageUrl()%>
								alt="Book img"></a><a href=""><input type="button"
								value="add to cart" class="add"></a>
						</div>
						<div class="book-info">
							<p>
								<%=listFictionBooks.getBookName()%>
							</p>
							<div class="rating">
								<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
									class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
									class="fa-solid fa-star"></i>
							</div>
							<h3>
								&#8377
								<%=listFictionBooks.getBookPrice()%><s>&#8377 800</s>
							</h3>
							<a
								href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=listFictionBooks.getBookId()%>"><button>Buy
									Now</button></a>
						</div>

					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>
		<div class="row-3">
			<i class="fa-solid fa-arrow-right"></i>
		</div>

		<div class="bottom-hr3">
			<hr>
		</div>
	</div>

	<!---End of the new arrival books -->

	<!-------------- Fiction Books ----------->

	<%
	if (bookList != null) {
		System.out.println(bookList);
	%>
	<div class="fiction">
		<div class="section-head">
			<h2>New Arrival books</h2>
			<a href="">See All</a>
		</div>
		<hr>
		<!-- 
         book filter
         -->
		<div class="books_filter">
			<div class="books">
				<!-- append the books dynamic -->

				<%
				for (Book newArrivalBooks : bookList) {
				%>

				<div class="Book_filter">
					<div id="wishlist_icons" class="wish_icons">
						<i class="fa-sharp fa-regular fa-heart icon_wishlist"
							id="wish_icon"></i>
						<div class="book-img">

							<div class="trend_book">
								<a href=""><img src=<%=newArrivalBooks.getBookImageUrl()%>
									alt="Book img"></a><a href=""><input type="button"
									value="add to cart" class="add"></a>
							</div>
							<div class="book-info">
								<p>
									<%=newArrivalBooks.getBookName()%>
								</p>
								<div class="rating">
									<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
										class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
										class="fa-solid fa-star"></i>
								</div>
								<h3>
									&#8377
									<%=newArrivalBooks.getBookPrice()%><s>&#8377 800</s>
								</h3>
								<a
									href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=newArrivalBooks.getBookId()%>"><button>Buy
										Now</button></a>
							</div>

						</div>
					</div>
				</div>
				<%
				}
				}
				%>
			</div>
		</div>
		<div class="row-4">
			<i class="fa-solid fa-arrow-right"></i>
		</div>
		<div class="bottom-hr4">
			<hr>
		</div>
	</div>

	<!------------- End of the fiction section ----------------->

	<!-- ----------------------START THE TESTIMONIAL----------------->

	<div class="testo">
		<div class="testi_head">
			<h1 style="text-align: center;">Our Customer Feedback.</h1>
		</div>
		<div class="testimonial">
			<div class="small_container">
				<div class="testi">
					<i class="fa-solid fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Dolor quae doloribus ipsa ipsam aspernatur, ipsum laudantium odit
						autem quaerat repellendus aliquid, suscipit asperiores esse omnis
						placeat voluptatum voluptas, maiores aperiam.</p>
					<div class="rating">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-regular fa-star"></i>
					</div>
					<img
						src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-1.png"
						alt="sean parker">
					<h3>Sean Parker</h3>
				</div>
				<div class="testi">
					<i class="fa-solid fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Dolor quae doloribus ipsa ipsam aspernatur, ipsum laudantium odit
						autem quaerat repellendus aliquid, suscipit asperiores esse omnis
						placeat voluptatum voluptas, maiores aperiam.</p>
					<div class="rating">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-regular fa-star"></i>
					</div>
					<img
						src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-2.png"
						alt="sean parker">
					<h3>Jhon</h3>
				</div>
				<div class="testi">
					<i class="fa-solid fa-quote-left"></i>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Dolor quae doloribus ipsa ipsam aspernatur, ipsum laudantium odit
						autem quaerat repellendus aliquid, suscipit asperiores esse omnis
						placeat voluptatum voluptas, maiores aperiam.</p>
					<div class="rating">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-regular fa-star"></i>
					</div>
					<img
						src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-3.png"
						alt="sean parker">
					<h3>Henry Ford</h3>
				</div>
			</div>
		</div>
	</div>
	<!--------------END OF THE TESTIMONIAL----------- -->


	<!------------- Start the Newsletter forms -------------->

	<div class="news-form">
		<form action="">
			<h1>Join Our Newsletter</h1>
			<p>An email newsletter is a recurring email sent to subscribed
				contacts containing curated informational content from news articles
				to resources and tips. The goal is to provide ongoing value while
				surfacing important industry- or niche-related topics.</p>
			<div class="email-box">
				<i class="fa-sharp fa-solid fa-envelope"></i> <input class="tbox"
					type="email" placeholder="Enter Your Email" required> <a
					href=""> <input class="sub-btn" type="button" value="Subscribe"></a>
			</div>
		</form>
	</div>


	<!------ End of the New letter Form ----->


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

	<script src="assets/JS files/header.js"></script>
	<script src="/assets/JS files/bookcard.js"></script>
	<script src="/assets/JS files/index search filter.js"></script>
	<script src="main.js"></script>


	<script>
		
	</script>
</body>

</html>