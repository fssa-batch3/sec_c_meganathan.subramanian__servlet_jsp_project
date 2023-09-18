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
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

h1 {
	text-align: center;
}

#BookImg {
	width: 60px;
}

th {
	text-align: center;
	text-decoration: underline;
}
}
}
</style>
<title>Book-Store | BookList</title>
</head>
<body>

	<h1>List all books</h1>
	<!--  below the code for create the table -->

	<!--  below the code for product change the dynamically -->

	<table border="1">

		<thead>
			<tr>

				<th>Book ID</th>
				<th>Quantity</th>
				<th>Book Name</th>
				<th>Image URL</th>
				<th>Language</th>
				<th>Description</th>
				<th>Author</th>
				<th>Author Image URL</th>
				<th>About Author</th>
				<th>Publisher Imprint</th>
				<th>Publisher Date</th>
				<th>Book ISBN</th>
				<th>Book Price</th>
				<th>Book Width</th>
				<th>Number of Pages</th>
				<th>Book Height</th>
				<th>Book Depth</th>
				<th>Book Weight</th>
				<th>Categories</th>
				<th>Book Binding</th>
				<th>Is Book Returnable</th>
				<th colspan="3" style="text-align: center;">Action</th>
			</tr>
		<thead>
		</tbody>
		<%
		List<Book> bookList = (List<Book>) request.getAttribute("bookList");
		if (bookList != null) {
			for (Book books : bookList) {
		%>

		<tr>

			<td><%=books.getBookId()%></td>
			<td><%=books.getQuantity()%></td>
			<td><%=books.getBookName()%></td>
			<td><img alt="" id="BookImg" src="<%=books.getBookImageUrl()%>"></td>
			<td><%=books.getBooklanguage()%></td>
			<td><%=books.getBookDescription()%></td>
			<td><%=books.getAuthor()%></td>
			<td><img alt="" id="BookImg" src="<%= books.getAuthorImg() %>"> </td>
			<td><%=books.getAboutAuthor()%></td>
			<td><%=books.getPublisherImprint()%></td>
			<td><%=books.getPublisherDate()%></td>
			<td><%=books.getisbn()%></td>
			<td><%=books.getBookPrice()%></td>
			<td><%=books.getBookwidth()%></td>
			<td><%= books.getNoOfPages()%></td>
			<td><%=books.getBookHeight()%></td>
			<td><%=books.getBookDepth()%></td>
			<td><%=books.getBookWeight()%></td>
			<td><%=books.getBookCategories()%></td>
			<td><%=books.getBookBinding()%></td>
			<td><%=books.getReturnable()%></td>
			<td><a href="ViewBookServlet?BookId=<%=books.getBookId()%>"><button
						type="submit" id="openViewBtn">View</button></a></td>
			<td><a href="EditBookServlet?BookId=<%=books.getBookId()%>"><button
						type="Submit">Edit</button></a></td>
			<td><a href="DeleteBookServlet?BookId=<%=books.getBookId()%>"><button
						type="Submit">Delete</button></a></td>

		</tr>

		<%
		}

		}
		%>

		</tbody>

	</table>



</body>
</html>
