<%@page import="com.fssa.bookstore.model.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Book Store | Update the book</title>
</head>
<body>

<%
// get the attribute to where we set  
Book book = (Book) request.getAttribute("Book");

%>

<h1>Update Book</h1>
    <form action="updatebookServlet" method="post"> 

    	
        <input type="hidden" id="id" name="BookId" value="<%=book.getBookId()%>" required><br>
    
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%=book.getBookName()%>"  required><br>
        
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" value="<%=book.getBookPrice()%>"  required><br>
        
        <label for="category">Category:</label>
        <input type="text" id="category" name="category" value="<%=book.getbookCategories()%>"  required><br>
        
        <label for="image_url">Image URL:</label>
        <input type="url" id="image_url" name="image_url" value="<%=book.getBookImageUrl()%>"  required><br>
        
        <label for="language">Language:</label>
        <input type="text" id="language" name="language"   value="<%=book.getBooklanguage()%>"  required ><br>
        
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" value="<%=book.getQuantity()%>"  required><br>
        
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" value="<%=book.getAuthor() %>"  required><br>
        
        <label for="description">Description:</label><br>
		<textarea name="description" rows="4" cols="50" required><%=book.getBookDescription()%></textarea><br>

        
        <input type="submit" value="Update Book"> 
    </form>


</body>
</html>