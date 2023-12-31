<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.bookstore.service.BookService"%>
<%@page import="com.fssa.bookstore.model.Book"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="assets/images/favicon img.png"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/category.css">



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
	<jsp:include page="header.jsp"></jsp:include>

	<!-------------------- Main content --------------->

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
					type="checkbox"> <span>Kannada</span><br> <input
					type="checkbox"> <span>Turkish</span><br> <input
					type="checkbox"> <span>Hindi</span><br> <input
					type="checkbox"> <span>Spanish</span><br> <input
					type="checkbox"> <span>French</span><br> <input
					type="checkbox"> <span>urudu</span><br> <input
					type="checkbox"> <span>Marathi</span><br> <input
					type="checkbox"> <span>Arabic</span><br> <input
					type="checkbox"> <span>German</span><br> <input
					type="checkbox"> <span>Bengali</span><br>
			</div>
			<!-- <div class="more">
                <a href="">See all</a>
            </div> -->
		</div>

		<div class="vl vl-2"></div>

		<!---------- Trending books Section ---------------->

		<div class="trends reveal">
			<div class="section-head">
				<h2>Result Found (1500)</h2>
				<h3>Best Seller</h3>
				<a href="#">See All</a>
			</div>
			
			<% 
			List<Book> bookCategy = (List<Book>) request.getAttribute("bookCategy");	
			if(bookCategy != null){
			
			%>
			<div class="books">
			<% for(Book bookCategory : bookCategy){
				
			%>
			
				<div class="book-img">
					<div class="trend_book">
						<a href="Pages/products_details/Product_page.html"><img
							src="<%=bookCategory.getBookImageUrl()%>"
							alt="trend books"></a> <a href="Pages/orders/Wish_list.html"><input
							type="button" value="Add to Cart" class="add"></a>
					</div>
					<div class="book-info">
						<p><%= bookCategory.getBookName() %></p>
						<div class="rating">
							<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
							<i class="fa-regular fa-star"></i>
						</div>
						<h3>
							Price : &#8377;<%= bookCategory.getBookPrice() %> <s>180.00</s>
						</h3>
						<a href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=bookCategory.getBookId()%>"><button>Buy
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
				<img src="<%=request.getContextPath()%>/assets/images/logo.png" alt="bookstore logo">
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
	<!------------END OF THE FOOTER CONTENT------- -->

</body>

</html>