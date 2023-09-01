<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book-Store | Update Book</title>
<link rel="shortcut icon" href="https://bookztore.netlify.app/assets/images/favicon%20img.png" type="image/x-icon">

</head>
<body>
<h1>Update Book Price</h1>
    <form action=updatebookServlet method="post">
    
    	<label for="BookId">BookId:</label>
        <input type="number" id="id" name="BookId" required><br>
    	
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>
        
        <label for="price">Price:</label>
        <input type="number" id="price" name="price"  required><br>
        
        <label for="category">Category:</label>
        <input type="text" id="category" name="category" required><br>
        
        <label for="image_url">Image URL:</label>
        <input type="url" id="image_url" name="image_url" required><br>
        
        <label for="language">Language:</label>
        <input type="text" id="language" name="language" required><br>
        
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" required><br>
        
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required><br>
        
        <label for="description">Description:</label><br>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>
        
        <input type="submit" value="Update Book">
    </form>

</body>
</html>