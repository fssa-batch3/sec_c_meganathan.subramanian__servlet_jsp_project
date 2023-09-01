<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<link rel="shortcut icon" href="https://bookztore.netlify.app/assets/images/favicon%20img.png" type="image/x-icon"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!--  Below the code for create a new form -->

<h1>Delete Book</h1>
    <form action="DeleteBookServlet" method="post">
    	
        <label for="id">Book id:</label>
        <input type="number" id="id" name="BookId" required><br>
        
    	
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>
        
        <label for="price">Price:</label>
        <input type="number" id="price" name="price"  required><br>
       
       
       <label for="BookCategory">Select the Category:</label>
    	 <select name="book_category">
    <option value="ARTS_AND_BIOGRAPHY_BOOK">Arts & Biography Books</option>
    <option value="FICTION_BOOKS">Fiction Books</option>
    <option value="LAW_BOOKS">Law Books</option>
    <option value="MEDICINE">Medicine</option>
    <option value="SELFHELP_BOOKS">Self-Help Books</option>
    <option value="LIFESTYLE_BOOKS">Lifestyle Books</option>
    <option value="SCIENCE_AND_MATHS">Science and Maths</option>
        </select><br>
        
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
        
        <input type="submit" value="Delete book">
    </form>

</body>
</html>