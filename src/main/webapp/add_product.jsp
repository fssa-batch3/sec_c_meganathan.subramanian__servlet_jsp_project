<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Information Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 800px;
/* 	margin: 0 auto; */
	/* margin-top: 20px; */
	margin:100px 350px;
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>
</head>

<body>
<jsp:include page="admin_header.jsp"></jsp:include>

	<%
	String error = (String) request.getAttribute("errorMessage");
	if (error != null && !("".equals(error))) {
	%>
	<script>
		Notify.error(
		`<%=error%>
		`);
	</script>
	<%
	}
	%>

	<div class="container">
		<h1 style="text-align: center;">Add New Book</h1>
		<form action="<%=request.getContextPath() + "/AddBookServlet"%>"
			method="post">
			<!-- Book Information -->
			<div class="inpt-form">
				<div class="first-inpt-box">
					<div class="form-group">
						<label for="bookName">Book Name:</label> <input type="text"
							id="bookName" name="bookName" required>
					</div>

					<div class="form-group">
						<label for="bookImageUrl">Book Image URL:</label> <input
							type="text" id="bookImageUrl" name="bookImageUrl" required>
					</div>

					<div class="form-group">
						<label for="bookPrice">Book Price:</label> <input type="text"
							id="bookPrice" name="bookPrice" required>
					</div>

					<div class="form-group">
						<label for="bookDescription">Book Description:</label>
						<textarea id="bookDescription" name="bookDescription" rows="4"
							required></textarea>
					</div>

					<div class="form-group">
						<label for="authorImgUrl">Author Image URL:</label> <input
							type="text" id="authorImgUrl" name="authorImgUrl" required>
					</div>

					<div class="form-group">
						<label for="author">Author:</label> <input type="text" id="author"
							name="author" required>
					</div>

					<div class="form-group">
						<label for="aboutAuthor">About Author:</label>
						<textarea id="aboutAuthor" name="aboutAuthor" rows="4" required></textarea>
					</div>

					<div class="form-group">
						<label for="quantity">Quantity:</label> <input type="text"
							id="quantity" name="quantity" required>
					</div>

					<div class="form-group">
						<label for="booklanguage">Book Language:</label> <input
							type="text" id="booklanguage" name="booklanguage" required>
					</div>
					<div class="form-group">
						<label for="publisherImprint">Publisher Imprint:</label> <input
							type="text" id="publisherImprint" name="publisherImprint"
							required>
					</div>
				</div>

				<div class="second-inpt-box">
					<div class="form-group">
						<label for="publisherDate">Publisher Date:</label> <input
							type="date" id="publisherDate" name="publisherDate" required>
					</div>
					<div class="form-group">
						<label for="bookIsbn">Book ISBN:</label> <input type="text"
							id="bookIsbn" name="bookIsbn" required>
					</div>

					<div class="form-group">
						<label for="bookwidth">Book Width (Inches):</label> <input type="text"
							id="bookwidth" name="bookwidth" required>
					</div>
					<div class="form-group">
						<label for="noOfPages">Number of Pages:</label> <input type="text"
							id="noOfPages" name="noOfPages" required>
					</div>
					<div class="form-group">
						<label for="bookHeight">Book Height (Inches):</label> <input type="text"
							id="bookHeight" name="bookHeight" required>
					</div>
					<div class="form-group">
						<label for="bookDepth">Book Depth (Inches):</label> <input type="text"
							id="bookDepth" name="bookDepth" required>
					</div>
					<div class="form-group">
						<label for="bookWeight">Book Weight (Grams):</label> <input type="text"
							id="bookWeight" name="bookWeight" required>
					</div>
					<!-- Categories -->
					<div class="form-group">
						<label for="BookCategory">Select the Category:</label> <select
							name="book_category">
							<option value="" disabled selected>Select One</option>
							<option value="ARTS_AND_BIOGRAPHY_BOOK">Arts & Biography
								Books</option>
							<option value="FICTION_BOOKS">Fiction Books</option>
							<option value="LAW_BOOKS">Law Books</option>
							<option value="MEDICINE">Medicine</option>
							<option value="SELFHELP_BOOKS">Self-Help Books</option>
							<option value="LIFESTYLE_BOOKS">Lifestyle Books</option>
							<option value="SCIENCE_AND_MATHS">Science and Maths</option>
							<option value="COMBO_BOOKS">Combo books</option>
						</select>
					</div>
					<!-- Book Binding -->
					<div class="form-group">
						<label for="bookBinding">Book Binding:</label> <select
							id="bookBinding" name="bookBinding" required>
							<option value="" disabled selected>Select One</option>
							<option value="HARDCOVER">Hardcover</option>
							<option value="PAPERBACK">Paperback</option>
						</select>
					</div>
					<!-- Returnable -->
					<div class="form-group">
						<label for="returnable">Is Book Returnable?</label> <select
							id="returnable" name="returnable" required>
							<option value="" disabled selected>Select One</option>
							<option value="YES">Yes</option>
							<option value="NO">No</option>
						</select>
					</div>
				</div>
			</div>
			<div class="submit-button">
				<button type="submit">Submit</button>
			</div>
		</form>
	</div>
</body>

</html>