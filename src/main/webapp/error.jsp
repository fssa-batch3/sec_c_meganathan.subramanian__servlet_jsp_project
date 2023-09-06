<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Error page 403:</title>
</head>
<body>
<% String errorMessage = (String)request.getAttribute("errorMessage"); %>
<h1>Error page</h1>
<p><%= errorMessage %></p>
</body>
</html>