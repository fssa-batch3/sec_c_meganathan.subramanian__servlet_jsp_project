<%@page import="com.fssa.bookstore.model.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<title>Order List</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/header.css">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background-color: #e0e0e0;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
}

.order {
	border: 1px solid #dddddd;
	margin: 20px 0;
	padding: 20px;
	background-color: #ffffff;
	display: flex;
	align-items: center;
}

.order img {
	height: 100px;
	width: 100px;
	margin-right: 20px;
}

.order-details {
	flex: 1;
}

.order-details h3 {
	margin: 0;
}

.order-details p {
	margin: 5px 0;
}

.order-price {
	font-weight: bold;
}
</style>
</head>
<body>
	<jsp:include page="admin_header.jsp" />

	<div class="container">
		<%
		List<Orders> orderList = (List<Orders>) request.getAttribute("orders");
		for (Orders orders : orderList) {
		%>
		<%
		boolean isActive = orders.isStatus();
		%>


		<div class="order">
			<img src="<%=orders.getBookImgUrl()%>"
				alt="<%=orders.getBookName()%>">
			<div class="order-details">
				<h3><%=orders.getBookName()%></h3>
				<p>
					Product ID:
					<%=orders.getId()%></p>
				<p>
					Quantity:
					<%=orders.getQuantity()%></p>
				<p>
					Address:
					<%=orders.getAddress()%></p>
				<p>
					User ID:
					<%=orders.getUserId()%></p>
			</div>

			<div class="order-price">
				<%
				if (isActive == true) {
				%>
				Price:
				<%=orders.getPrice()%>
				<%
				} else {
				%>
				<p>Order cancelled</p>
				Price:
				<%=orders.getPrice()%>
				<%
				}
				%>
			</div>

		</div>
		<%
		}
		%>

	</div>
</body>
</html>