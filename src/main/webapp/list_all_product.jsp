<%@page import="com.fssa.bookstore.enums.Categories"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.bookstore.service.BookService"%>
<%@page import="com.fssa.bookstore.model.Book"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon"
	href="https://bookztore.netlify.app/assets/images/favicon%20img.png"
	type="image/x-icon">
<style>
.book-list {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 20px;
	padding: 100px;
}

.book-card {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: center;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

.book-card img {
	width: 200px;
	height: 260px;
}

.book-actions {
	display: flex;
	justify-content: center;
	gap: 10px;
	margin-top: 10px;
}

.book-actions button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
}
</style>
<body>
<jsp:include page="admin_header.jsp"></jsp:include>
<div class="book-list">
	<%
	List<Book> bookList = (List<Book>) request.getAttribute("bookList");
	if (bookList != null) {
		for (Book books : bookList) {
	%>
	<div class="book-card">
		<img src="<%=books.getBookImageUrl()%>" alt="<%=books.getBookName()%>">
		<h3><%=books.getBookName()%></h3>
		<p><%=books.getAuthor()%></p>
		<p>
			Price:
			<%=books.getBookPrice()%></p>
		<div class="book-actions">
			<a href="ViewBookServlet?BookId=<%=books.getBookId()%>">
				<button type="button">View</button>
			</a> <a href="EditBookServlet?BookId=<%=books.getBookId()%>">
				<button type="button">Edit</button>
			</a> <a href="DeleteBookServlet?BookId=<%=books.getBookId()%>">
				<button type="button">Delete</button>
			</a>
		</div>
	</div>
	<%
	}
	}
	%>
</div>
</body>
</html>
