<%@page import="com.fssa.bookstore.model.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>View Book</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	/* margin-top: 20px; */
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-weight: bold;
}

.form-group input, .form-group select {
	width: 90%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.form-group textarea {
	width: 90%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
	resize: vertical;
}

.submit-button {
	text-align: center;
	margin-top: 20px;
}

.inpt-form {
	display: flex;
}

.second-inpt-box {
	margin-left: 10px;
	margin-top: 18px;
}

h1 {
	font-size: 32px;
	font-weight: 600;
	
}
input {
	
}
</style>
</head>
<body>
	<%
	// get the attribute to where we set  
	Book book = (Book) request.getAttribute("Book");
	%>

	<h1>View Book</h1>
	<div class="container">
		<form action="updatebookServlet" method="post">
			<div class="inpt-form">
				<div class="first-inpt-box">

					<input type="hidden" id="id" name="BookId"
						value="<%=book.getBookId()%>" required><br>

					<div class="form-group">
						<label for="title">Title:</label> <input type="text" id="title"
							name="title" value="<%=book.getBookName()%>" required disabled><br>
					</div>

					<div class="form-group">
						<label for="price">Price:</label> <input type="number" id="price"
							name="price" value="<%=book.getBookPrice()%>" required disabled><br>
					</div>
					<div class="form-group">
						<label for="category">Category:</label> <input type="text"
							id="category" name="category"
							value="<%=book.getBookCategories()%>" required disabled><br>
					</div>
					<div class="form-group">
						<label for="image_url">Image URL:</label> <input type="url"
							id="image_url" name="image_url"
							value="<%=book.getBookImageUrl()%>" required disabled> <br>
					</div>
					<div class="form-group">
						<label for="language">Language:</label> <input type="text"
							id="language" name="language" value="<%=book.getBooklanguage()%>"
							required disabled><br>
					</div>
					<div class="form-group">
						<label for="quantity">Quantity:</label> <input type="number"
							id="quantity" name="quantity" value="<%=book.getQuantity()%>"
							required disabled><br>
					</div>
					<div class="form-group">
						<label for="author">Author:</label> <input type="text" id="author"
							name="author" value="<%=book.getAuthor()%>" required disabled><br>
					</div>
					<div class="form-group">
						<label for="book Description">Description:</label><br>
						<textarea name="authorImage" rows="4" cols="50" required disabled><%=book.getBookDescription()%></textarea>
						 <br>
					</div>
					<div class="form-group">
						<label for="AuthorImg">authorImg:</label> <input type="text"
							id="AuthorImg" name="AuthorImg" value="<%=book.getAuthorImg()%>"
							required disabled><br>
					</div>
					<div class="form-group">
						<label for="aboutAuthor">About Author:</label> <input type="text"
							id="aboutAuthor" name="aboutAuthor"
							value="<%=book.getAboutAuthor()%>" required disabled><br>
					</div>
					<div class="form-group">
						<label for="BookIsbn">BookIsbn:</label> <input type="text"
							id="Book Isbn" name="Book Isbn" value="<%=book.getisbn()%>"
							required disabled><br>
					</div>
					<div class="form-group">
						<label for="PublisherDate">PublisherDate:</label> <input
							type="date" id="PublisherDate" name="PublisherDate"
							value="<%=book.getPublisherDate()%>" required disabled><br>
					</div>
				</div>
				<div class="second-inpt-box">
					<div class="form-group">
						<label for="PubliserImprint">PubliserImprint:</label> <input
							type="text" id="PubliserImprint" name="PubliserImprint"
							value="<%=book.getPublisherImprint()%>" required disabled><br>
					</div>
					<div class="form-group">
						<label for="BookWidth">BookWidth:</label> <input type="number"
							id="BookWidth" name="BookWidth" value="<%=book.getBookwidth()%>"
							required disabled><br>
					</div>
					<div class="form-group">
						<label for="BookHeight">BookHeight:</label> <input type="number"
							id="BookHeight" name="BookHeight"
							value="<%=book.getBookHeight()%>" required> disabled<br>
					</div>
					<div class="form-group">
						<label for="BookWeight">BookWeight:</label> <input type="number"
							id="BookWeight" name="BookWeight"
							value="<%=book.getBookWeight()%>" required disabled><br>
					</div>

					<div class="form-group">
						<label for="BookPages">BookPages:</label> <input type="number"
							id="BookPages" name="BookPages" value="<%=book.getNoOfPages()%>"
							required disabled><br>
					</div>

					<div class="form-group">
						<label for="Bookbinding">bookBinding:</label> <input type="text"
							id="Bookbinding" name="Bookbinding"
							value="<%=book.getBookBinding()%>" required disabled><br>
					</div>

					<div class="form-group">
						<label for="BookReturn">BookReturn:</label> <input type="text"
							id="BookReturn" name="BookReturn"
							value="<%=book.getReturnable()%>" required disabled><br>
					</div>
					<div class="form-group">
						<label for="bookDepth">bookDepth:</label> <input type="text"
							id="author" name="author" value="<%=book.getBookDepth()%>"
							required disabled><br>
					</div>
				</div>
			</div>
		</form>
		<a href="<%= request.getContextPath()%>/ListAllProduct"><button  type="submit">Back</button></a>
	</div>

</body>
</html>