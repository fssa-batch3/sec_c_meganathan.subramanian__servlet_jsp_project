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
        
        <input type="submit" value="Delete book">
    </form>

</body>
</html>