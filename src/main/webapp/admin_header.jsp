<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<style>
@charset "ISO-8859-1";

@import
	url('https://fonts.googleapis.com/css2?family=Heebo:wght@300;400;500;600;700;800&family=Nunito:wght@300&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	color: #263e3e;
}

a {
	text-decoration: none;
}

button {
	cursor: pointer;
}

/* Style the heading  and navigation*/
.nav_1 {
	display: flex;
	flex-direction: row;
	align-items: center;
	box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3)
		0px 3px 7px -3px;
	height: 90px;
}

.Navigation ul {
	display: flex;
	align-items: center;
	list-style-type: none;
	margin-left: 200px;
	padding: 35px;
	font-size: 22px;
	font-weight: 600;
}

.Navigation ul li a {
	margin-right: 50px;
	color: #263e3e;
	text-decoration: none;
	/* align-content: center; */
}

.Navigation ul li i {
	color: #263e3e;
	font-size: 28px;
}

.header-img img {
	width: 73%;
	margin-left: 30px;
}

#logout {
	padding: 10px 18px;
	background: #263e3e;
	color: white;
	font-weight: 700;
}

#button {
	padding: 10px 18px;
	background: #263e3e;
	color: white;
	font-weight: 700;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin header</title>
</head>
<body>
	<div class="nav_1">
		<div class="header-img">
			<img
				src="<%=request.getContextPath()%>/assets/images/books_store-removebg-preview.png"
				alt="header_logo">
		</div>
		<div class="Navigation">
			<ul>
				<li><a href="ListAllProduct">List All Books</a></li>
				<li><a href="<%= request.getContextPath()%>/ListAll">View Order</a></li>
				<li><a href="<%=request.getContextPath()%>/add_product.jsp">Create Book</a>
				<li><a href="<%=request.getContextPath()%>/LogoutServlet"><button
						id="logout" type="submit">Logout</button></a></li>
			</ul>
		</div>
	</div>
</body>
</html>