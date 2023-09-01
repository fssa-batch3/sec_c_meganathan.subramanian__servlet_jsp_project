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
<link rel="shortcut icon" href="https://bookztore.netlify.app/assets/images/favicon%20img.png" type="image/x-icon">
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
        h1{
        text-align: center;
        }
        #BookImg{
        
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

	<h1> List all books</h1>
	<!--  below the code for create the table -->

	<!--  below the code for product change the dynamically -->

	<table border="1">

		<thead>
			<tr>
				
				<th>BookId</th>
				<th>Title</th>
				<th>Price</th>
				<th>Categories</th>
				<th>Image</th>
				<th>Language</th>
				<th>Quantity</th>
				<th>Author</th>
				<th>Description</th>
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
			<td><%=books.getBookName()%></td>
			<td><%=books.getBookPrice()%></td>
			<td><%=books.getbookCategories()%></td>
			<td><img alt="book_img"  id="BookImg" src="<%=books.getBookImageUrl()%>"></td>
			<td><%=books.getBooklanguage()%></td>
			<td><%=books.getQuantity()%></td>
			<td><%=books.getAuthor()%></td>
			<td><%=books.getBookDescription()%></td>
			<td><a href="ViewBookServlet?BookId=<%=books.getBookId()%>"><button type="submit">View</button></a></td>
			<td><a href="EditBookServlet?BookId=<%=books.getBookId()%>"><button type="Submit">Edit</button></a></td>
			<td><a href="DeleteBookServlet?BookId=<%=books.getBookId()%>"><button type="Submit">Delete</button></a></td>
			
		</tr>

		<%
		}

		}
		%>

		</tbody>

	</table>



</body>
</html> 