<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Book-store</title>
<link rel="shortcut icon" href="https://bookztore.netlify.app/assets/images/favicon%20img.png" type="image/x-icon">

<style type="text/css">
a{
text-align: center;
margin-top: 10px;
}
.nav {
  background-color: #f0f0f0;
  border: 1px solid #ccc; 
  border-radius: 5px; 
  width: 130px; 
}
.nav1 {
  background-color: #f0f0f0; 
  border: 1px solid #ccc; 
  border-radius: 5px;
  width: 120px; 
	margin-top: 12px;
}
.nav1 a {
  display: block; 
  text-decoration: none; 
  font-size:18px; 
  color: #333;
  transition: background-color 0.3s; 
}

/* Style for the links inside the navigation container */
.nav a {	
  display: block; 
  text-decoration: none; 
  font-size:18px; 
  color: #333;
  transition: background-color 0.3s; 
}

/* Hover effect for the links */
.nav a:hover {
  background-color: #ddd; /* Change the background color on hover */
}

</style>
</head>
<body>
<h1>List All books</h1>
<div class="nav">
<a href="add_product.jsp">Add book.</a></br>
</div>
<div class="nav1">
<a href= "ListAllProduct">List all the books</a></br>
</div>
</body>
</html>
 