<%@page import="com.fssa.bookstore.userservlet.BookListByCategy"%>
<%@page import="com.mysql.cj.jdbc.util.BaseBugReport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.bookstore.model.Book"%>
<%@ page import="com.fssa.bookstore.model.User"%>
<%@ page import="com.fssa.bookstore.service.BookService"%>

<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="assets/css/productdetails.css"><!--  -->
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
<title>BOOKS-STORE</title>
<style type="text/css">
.product-notfound {
	width: 700px;
	margin-left: 370px;
	margin-top: 50px;
	display: none;
}
</style>
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<!---------------------- END OF THE NAVIGATION ------------------------>

	<!---------------------- Start the product details page -------------->


	<%
	Book bookDetail = (Book) request.getAttribute("bookDetails");
	List<Book> bookListCategy = (List<Book>) request.getAttribute("bookListByCategy");
	if (bookDetail != null && bookListCategy != null) {
	%>
	<main>
		<div class="products">
			<div class="product_img attitude_book">
				<img src="<%=bookDetail.getBookImageUrl()%>" alt=" product_img">
			</div>
			<div class="product_details">
				<a href="">Home/Products</a>
				<h1><%=bookDetail.getBookName()%>.
				</h1>
				<h4>
					&#8377;<%=bookDetail.getBookPrice()%><s>&#8377;200.00Off </s>
				</h4>
				<form>
					<label><input type="number" value="1"></label>
				</form>
				<div class="btn-cart">
					<a href="" class="btn">Add to Cart</a> <a
						href="<%=request.getContextPath()%>/Payment?bookId=<%=bookDetail.getBookId()%>"
						class="btn">Buy Now</a>
				</div>

				<h2>Book Details</h2>
				<p><%=bookDetail.getBookDescription()%>.
				</p>
			</div>
		</div>
		<hr>
	</main>

	<!------ START ABOUT THE AUTHOR ----------->

	<div class="about-author">
		<h2>About the Author:</h2>
		<div class="row1">
			<div class="author-img">
				<img src="<%=bookDetail.getAuthorImg()%>" alt="author-img">
			</div>
			<div class="author-content">
				<p><%=bookDetail.getAboutAuthor()%>.
				</p>
			</div>
		</div>
	</div>
	<!-- ------- END OF THE ABOUT AUTHOR CONTENT ---------------->

	<!-------------- START THE PRODUCT DETAILS COTENT -------------->


	<div class="book-details">
		<h2>Product Details:</h2>
		<div class="book-detail">
			<div class="col1">
				<h3>
					Publisher Date : <span><%=bookDetail.getPublisherDate()%></span>
				</h3>
				<h3>
					Binding : <span> <%=bookDetail.getBookBinding()%></span>
				</h3>
				<h3>
					Height : <span><%=bookDetail.getBookHeight()%></span>
				</h3>
				<h3>
					No of Pages : <span><%=bookDetail.getNoOfPages()%></span>
				</h3>
				<h3>
					ISBN : <span><%=bookDetail.getisbn()%></span>
				</h3>
				<h3>
					Weight : <span> <%=bookDetail.getBookWeight()%></span>
				</h3>
			</div>
			<div class="col2">
				<h3>
					Publisher Imprint : <span> <%=bookDetail.getPublisherImprint()%></span>
				</h3>
				<h3>
					Depth : <span> <%=bookDetail.getBookDepth()%></span>
				</h3>
				<h3>
					Language : <span><%=bookDetail.getBooklanguage()%></span>
				</h3>
				<h3>
					Returnable : <span> <%=bookDetail.getReturnable()%></span>
				</h3>

				<h3>
					Width : <span><%=bookDetail.getBookwidth()%></span>
				</h3>
			</div>
		</div>
		<hr>
	</div>


	<!---------- Trending books section ----------->


	<div class="trends reveal">
		<div class="section-head">
			<h2>Similar Books</h2>
			<a href="">See All</a>
		</div>
		<hr>
		<div class="books">
			<%
			for (Book bookCatgy : bookListCategy) {
			%>
			<div class="book-img  book-item"
				data-title="<%=bookCatgy.getBookName()%>">
				<div class="trend_book">
					<img src="<%=bookCatgy.getBookImageUrl()%>" alt="trend books">
					<a href=""><input type="button" value="Add to Cart" class="add"></a>
				</div>
				<div class="book-info">
					<p><%=bookCatgy.getBookName()%>.
					</p>
					<div class="rating">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
					</div>
					<h3>
						Price : &#8377;
						<%=bookCatgy.getBookPrice()%>
						<s>180.00</s>
					</h3>
					<a
						href="<%=request.getContextPath()%>/BookDetailsServlet?bookId=<%=bookCatgy.getBookId()%>">
						<button>Buy Now</button>
					</a>
				</div>
			</div>
			<%
			}
			%>
			<img alt=""
				src="https://lecadeau.in/assets/images/pnf.jpg"
				class="product-notfound">
		</div>

		<div class="arrow-right">
			<i class="fa-solid fa-arrow-right"></i>
		</div>
		<div class="bottom-hr1">
			<hr>
		</div>

	</div>
	<%
	} else {
	%>
	<img style="display: block;" alt=""
		src="https://bagbazaars.com/assets/img/no-product-found.png"
		class="product-notfound">
	<%
	}
	%>



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




	<!----------------- Start the footr--------------------- -->
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
	<!------------ END OF THE FOOTER CONTENT --------------------->

	<script type="text/javascript">

// Function to filter books based on the search input
function filterBooks() {
    const searchInput = document.getElementById("Search_book").value.toLowerCase();
    const bookItems = document.querySelectorAll(".book-item");
    const image = document.querySelector(".product-notfound");

    bookItems.forEach((bookItem) => {
        const title = bookItem.getAttribute("data-title").toLowerCase();
        
        if (title.includes(searchInput) || searchInput === "") {
            bookItem.style.display = "block"; // Show matching books or all books if input is empty
        } else {
            bookItem.style.display = "none";// Hide non-matching books
            
        }
    });
    
     const visibleBooks = document.querySelectorAll(".book-item[style='display: block;']");
    if (visibleBooks.length === 0) {
        image.style.display = "block";
    } else {
        image.style.display = "none";
    } 

}

// Add an event listener to trigger the filterBooks function when the input field value changes
document.getElementById("Search_book").addEventListener("input", filterBooks);


</script>
</body>
</html>
