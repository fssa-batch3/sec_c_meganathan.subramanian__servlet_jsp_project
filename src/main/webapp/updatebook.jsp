<%@page import="com.fssa.bookstore.model.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Book Store | Update the book</title>

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
	width: 160%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.form-group textarea {
	width: 120%;
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
	margin-left: 200px;
}

h1 {
	font-size: 32px;
	font-weight: 600;
}
</style>
</head>
<body>

	<%
	// get the attribute to where we set  
	Book book = (Book) request.getAttribute("Book");
	%>

	<form action="updatebookServlet" method="post">

		<div class="container">
			<h1 style="text-align: center;">Update Your Book</h1>
			<!-- Book Information -->
			<div class="inpt-form">
				<div class="first-inpt-box">
					<div class="form-group">

						<input hidden="" name="BookId" value="<%=book.getBookId()%>"
							type="number"> <label for="bookName">Book Name:</label>
						<input type="text" id="bookName" name="bookName"
							value="<%=book.getBookName()%>" required>
					</div>

					<div class="form-group">
						<label for="bookImageUrl">Book Image URL:</label> <input
							type="text" id="bookImageUrl" name="bookImageUrl"
							value="<%=book.getBookImageUrl()%>" required>
					</div>

					<div class="form-group">
						<label for="bookPrice">Book Price:</label> <input type="text"
							id="bookPrice" name="bookPrice"
							value="<%=book.getBookPrice()%>" required>
					</div>

					<div class="form-group">
						<label for="bookDescription">Book Description:</label>
						<textarea id="bookDescription" name="bookDescription" rows="4"
							required><%=book.getBookDescription()%></textarea>
					</div>

					<div class="form-group">
						<label for="authorImgUrl">Author Image URL:</label> <input
							type="text" id="authorImgUrl" name="authorImgUrl"
							value="<%=book.getAuthorImg()%>" required>
					</div>

					<div class="form-group">
						<label for="author">Author:</label> <input type="text" id="author"
							name="author" value="<%=book.getAuthor()%>" required>
					</div>

					<div class="form-group">
						<label for="aboutAuthor">About Author:</label> <input
							id="aboutAuthor" name="aboutAuthor"
							value="<%=book.getAboutAuthor()%>" required>
					</div>

					<div class="form-group">
						<label for="quantity">Quantity:</label> <input type="text"
							id="quantity" name="quantity" value="<%=book.getQuantity()%>"
							required>
					</div>

					<div class="form-group">
						<label for="booklanguage">Book Language:</label> <input
							type="text" id="booklanguage" name="bookLanguage"
							value="<%=book.getBooklanguage()%>" required>
					</div>
					<div class="form-group">
						<label for="publisherImprint">Publisher Imprint:</label> <input
							type="text" id="publisherImprint" name="publisherImprint"
							value="<%=book.getPublisherImprint()%>" required>
					</div>
				</div>

				<div class="second-inpt-box">
					<div class="form-group">
						<label for="publisherDate">Publisher Date:</label> <input
							type="date" id="publisherDate" name="publisherDate"
							value="<%=book.getPublisherDate()%>" required>
					</div>
					<div class="form-group">
						<label for="bookIsbn">Book ISBN:</label> <input type="text"
							id="bookIsbn" name="bookIsbn" value="<%=book.getisbn()%>"
							required>
					</div>

					<div class="form-group">
						<label for="bookwidth">Book Width:</label> <input type="number"
							id="bookwidth" name="bookWidth"
							value="<%=book.getBookwidth()%>" required>
					</div>
					<div class="form-group">
						<label for="noOfPages">Number of Pages:</label> <input
							type="number" id="noOfPages" name="noOfPages"
							value="<%=book.getNoOfPages()%>" required>
					</div>
					<div class="form-group">
						<label for="bookHeight">Book Height:</label> <input type="number"
							id="bookHeight" name="bookHeight"
							value="<%=book.getBookHeight()%>" required>
					</div>
					<div class="form-group">
						<label for="bookDepth">Book Depth:</label> <input type="number"
							id="bookDepth" name="bookDepth" value="<%=book.getBookDepth()%>"
							required>
					</div>
					<div class="form-group">
						<label for="bookWeight">Book Weight:</label> <input type="number"
							id="bookWeight" name="bookWeight"
							value="<%=book.getBookWeight()%>" required>
					</div>
					<!-- Categories -->
					<div class="form-group">
						<label for="BookCategory">Select the Category:</label> <select
							name="bookCategory" value="<%=book.getBookCategories()%>">
							<option disabled selected>Select One</option>
							<option value="ARTS_AND_BIOGRAPHY_BOOK">Arts & Biography
								Books</option>
							<option value="FICTION_BOOKS">Fiction Books</option>
							<option value="LAW_BOOKS">Law Books</option>
							<option value="MEDICINE">Medicine</option>
							<option value="SELFHELP_BOOKS">Self-Help Books</option>
							<option value="LIFESTYLE_BOOKS">Lifestyle Books</option>
							<option value="SCIENCE_AND_MATHS">Science and Maths</option>
						</select>
					</div>
					<!-- Book Binding -->
					<div class="form-group">
						<label for="bookBinding">Book Binding:</label> <select
							id="bookBinding" name="bookBinding"
							value="<%=book.getBookBinding()%>" required>
							<option value="" disabled selected>Select One</option>
							<option value="PAPERBACK">Paperback</option>
						</select>
					</div>
					<!-- Returnable -->
					<div class="form-group">
						<label for="returnable">Is Book Returnable?</label> <select
							id="returnable" name="returnable"
							value="<%=book.getReturnable()%>" required>
							<option value="" disabled selected>Select One</option>
							<option value="YES">Yes</option>
							<option value="NO">No</option>
						</select>
					</div>
				</div>
			</div>
			<div class="submit-button">
				<input type="submit" value="Submit">
			</div>
		</div>
	</form>


</body>
</html>