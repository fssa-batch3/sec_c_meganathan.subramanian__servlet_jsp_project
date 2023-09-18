<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.bookstore.service.BookService"%>
<%@page import="com.fssa.bookstore.model.Book"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="assets/css/combobook.css">
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
	<!-------------------- Main content --------------->


	<jsp:include page="header.jsp"></jsp:include>



	<div class="container">
		<div class="self-help">
			<h1>
				Refine Your Search <i class="fa-solid fa-filter"></i>
			</h1>
			<div class="user-refine">
				<h3>Price Range -</h3>
				<h3>0 to 10000RS:</h3>
				<input type="range">
			</div>
			<hr>
			<div class="user-refine">
				<h3>Discount Range -</h3>
				<h3>0 - 80%:</h3>
				<input type="range">
			</div>
			<hr>
			<div class="user-refine">
				<h3>Binding:</h3>
				<input type="checkbox"> <span>Paper Back</span> <br> <input
					type="checkbox"> <span>Hard Cover</span> <br> <input
					type="checkbox"> <span>Other</span>
			</div>
			<hr>
			<div class="book-lang">
				<h3>Language:</h3>
				<input type="checkbox"> <span>English</span> <br> <input
					type="checkbox"> <span>Tamil</span><br> <input
					type="checkbox"> <span>Malayalam</span><br> <input
					type="checkbox"> <span>Telugu</span><br> <input
					type="checkbox"> <span>Hindi</span><br> <input
					type="checkbox"> <span>Kannada</span><br> <input
					type="checkbox"> <span>Trukish</span><br> <input
					type="checkbox"> <span>Bengali</span><br> <input
					type="checkbox"> <span>Arab</span><br> <input
					type="checkbox"> <span>French</span><br> <input
					type="checkbox"> <span>Urdu</span><br> <input
					type="checkbox"> <span>Marathi</span><br> <input
					type="checkbox"> <span>Malay</span><br> <input
					type="checkbox"> <span>Koren</span><br> <input
					type="checkbox"> <span>Italian</span><br> <input
					type="checkbox"> <span>Spanish</span><br> <input
					type="checkbox"> <span>Russian</span><br>
			</div>
			<!-- <div class="more">
                <a href="">See all</a>
            </div> -->
		</div>

		<div class="vl vl-2"></div>

		<!---------- Trending books Section ---------------->

		<div class="trends reveal">
			<div class="section-head">
				<h2 id="result"></h2>
				<h3>Box Sets Books</h3>
				<a href="">See All</a>
			</div>
			<div class="books">

				<%
				List<Book> Combobooks = (List<Book>) request.getAttribute("Combobooks");
				if (Combobooks != null) {
				%>
				<div class="books">
					<%
					for (Book getAllComboBooks : Combobooks) {
					%>

					<div class="book-img">
						<div class="trend_book2">
							<a href="Pages/products_details/Product_page.html"><img
								src="<%=getAllComboBooks.getBookImageUrl()%>" alt="trend books"></a>
							<a href="Pages/orders/Wish_list.html"><input type="button"
								value="Add to Cart" class="add"></a>
						</div>
						<div class="book-info">
							<p><%=getAllComboBooks.getBookName()%></p>
							<div class="rating">
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-regular fa-star"></i>
							</div>
							<h3>
								Price : &#8377;<%=getAllComboBooks.getBookPrice()%>
								<s>180.00</s>
							</h3>
							<a
								href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=getAllComboBooks.getBookId()%>"><button>Buy
									Now</button></a>
						</div>
					</div>
					<%
					}
					}
					%>
				</div>
				<div class="load-more">
					<a href="">Load More Results</a>
				</div>
				<div class="bottom-hr1">
					<hr>
				</div>
			</div>
		</div>




		<!----------------- Start the footer --------------------- -->
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
							class="fa-brands fa-whatsapp"></i> <i
							class="fa-brands fa-twitter"></i>
					</div>
				</div>
			</div>
			<p style="text-align: center;">&#169;Copyright 2022-Meganathan</p>
		</footer>
		<!------------END OF THE FOOTER CONTENT------- -->
</body>

</html>