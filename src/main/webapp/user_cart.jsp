<%@page import="com.fssa.bookstore.model.Book"%>
<%@page import="com.fssa.bookstore.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css">
<link rel="shortcut icon" href="assets/images/favicon img.png"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- ---------Font awesome------- -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- google fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,600;1,200;1,300;1,400&display=swap"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
/* Your CSS styles here */

/* ... (existing styles) ... */

/* Add CSS for the cart table */
table {
	width: 100%;
	border-collapse: collapse;
	background-color: #f9f9f9; /* Match the header background color */
}

th, td {
	padding: 15px;
	text-align: center;
	font-size: 18px; /* Increase font size */
}

th {
	background-color: #e8ad3e;
	font-weight: 700;
}

td img {
	max-width: 120px;
	max-height: 120px;
}

.quantity {
	display: flex;
	align-items: center;
	justify-content: center;
}

.quantity input {
	width: 40px;
	height: 30px;
	padding: 5px;
	font-weight: 700;
	text-align: center;
	font-size: 18px;
	font-weight: 700; /* Increase font size */
}

.button-container button {
	font-size: 19px;
	margin-top: 40px;
	padding: 5px 10px;
	border-radius: 50%;
	cursor: pointer;
	background-color: #fcbf4b;
	border: none;
	color: black;
	transition: 0.3s;
	padding: 5px 10px;
}

.button-container button:hover {
	opacity: 0.8;
	color: black;
}

.remove-button button {
	padding: 10px 20px;
	font-size: 20px; /* Decrease remove button font size */
	font-weight: bold;
	border-radius: 6px;
	border: none;
	cursor: pointer;
	background-color: #fcbf4b;
	color: black;
	opacity: 0.8;
	transition: 0.3s;
}

.remove-button button:hover {
	opacity: 1;
	color: black;
}

.checkout-button {
	display: flex;
	justify-content: flex-end;
	margin-top: 20px;
}

.checkout-button button {
	padding: 10px 20px;
	font-size: 18px;
	font-weight: bold;
	border-radius: 6px;
	border: none;
	cursor: pointer;
	background-color: #fcbf4b;
	color: black;
	opacity: 0.8;
	transition: 0.3s;
}

.checkout-button button:hover {
	opacity: 1;
	color: black;
}

/* Style for the cart summary section */
.cart-summary {
	float: right; /* Align to the right */
	width: 300px; /* Adjust the width as needed */
	margin-top: 20px;
	margin-right: 30px;
	padding: 20px;
	border: 1px solid #e8ad3e;
	border-radius: 6px;
	background-color: #fff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

/* Style for individual summary items (Total, Quantity, Delivery) */
.total-summary, .quantity-summary, .delivery-summary {
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
	font-size: 18px;
	font-weight: bold;
}

/* Style for the labels (Total, Quantity, Delivery) */
.total-summary span, .quantity-summary span, .delivery-summary span {
	color: #333;
}

/* Style for the values (price, quantity, delivery cost) */
.total-summary #total-price, .quantity-summary #total-quantity,
	.delivery-summary #delivery-cost {
	color: #e8ad3e;
}
/* Style to hide the input type number spinner buttons */
input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
</style>
</head>

<body>
	<!-- Your header content here -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Cart items details -->
	<div class="orders">
		<h1>My Cart</h1>
		<table>
			<thead>
				<tr>
					<th>Serial No.</th>
					<!-- Added Serial No. column -->
					<th>Image</th>
					<th>Product</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Subtotal</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody id="cart-table">
				<!-- Cart items will be dynamically generated here -->
			</tbody>
		</table>

	</div>



	<!-- Your cart summary section -->
	<div class="cart-summary">
		<div class="total-summary">
			<span>Total:</span> <span id="total-price">&#8377;0.00</span>
		</div>
		<div class="quantity-summary">
			<span>Quantity:</span> <span id="total-quantity">0</span>
		</div>
		<div class="delivery-summary">
			<span>Delivery:</span> <span id="delivery-cost">Free</span>
		</div>
		<!-- Checkout button -->
		<div class="checkout-button">
			<button onclick="checkout()">Checkout</button>
		</div>
	</div>
	<!-- Your footer content here -->
	<footer>
		<div class="row">
			<div class="bookstore_logo">
				<img src="assets/images/logo.png" alt="bookstore logo">
				<h3>
					"Our purpose is motivate yourself <br>and improve your
					knowdledge".
				</h3>
			</div>
			<div class="useful_links">
				<h3>Stuff</h3>
				<ul>
					<li>Privacy</li>
					<li>Security</li>
					<li>FQA</li>
					<li>Coupons</li>
				</ul>
			</div>
			<div class="useful_links">
				<h3>Useful links</h3>
				<ul>
					<li>Blog Post</li>
					<li>Return Policy</li>
					<li>join Affilate</li>
					<li>Terms and Condition</li>

				</ul>
			</div>
			<div class="contact_us">
				<div class="icons">
					<h3>Contact US</h3>
					<i class="fa-brands fa-github"></i> <i
						class="fa-brands fa-linkedin"></i> <i
						class="fa-brands fa-whatsapp"></i> <i class="fa-brands fa-twitter"></i>
				</div>
			</div>
		</div>
		<p style="text-align: center;">&#169;Copyright 2022-Meganathan</p>
	</footer>
	<!------------------------END OF THE FOOTER CONTENT----------------- -->


	<script>
// Function to retrieve cart items from local storage and populate the cart table
function populateCartTable() {
    const cartTableBody = document.querySelector("#cart-table");

    const cartItems = JSON.parse(localStorage.getItem("user_cart")) || [];

    // Clear the table body before populating it again
    cartTableBody.innerHTML = "";

    // Loop through the cart items and create table rows
    cartItems.forEach((item, index) => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${index + 1}</td> <!-- Serial number -->
            <td><img src="${item.Book_image}" alt="${item.Book_title}" width="100"></td>
            <td>${item.Book_title}</td>
            <td>${item.originalPrice ? '&#8377;' + parseFloat(item.originalPrice).toFixed(2) : 'N/A'}</td>
            <td class="quantity">
                <div class="button-container">
                    <button onclick="decrementQuantity(${index})">-</button>
                    <input type="number" value="${item.qty}" min="1" max="10" onchange="updateCartItem(${index}, this)">
                    <button onclick="incrementQuantity(${index})">+</button>
                </div>
            </td>
            <td>${item.originalPrice ? '&#8377;' + (parseFloat(item.originalPrice) * item.qty).toFixed(2) : 'N/A'}</td>
            <td class="remove-button"><button onclick="removeCartItem(${index})">Remove</button></td>
        `;
        cartTableBody.appendChild(row);
    });
}

// Function to update the quantity of a cart item
function updateCartItem(index, inputElement) {
    const cartItems = JSON.parse(localStorage.getItem("user_cart")) || [];
    cartItems[index].qty = parseInt(inputElement.value);
    localStorage.setItem("user_cart", JSON.stringify(cartItems));
    populateCartTable();
}

// Function to remove a cart item
function removeCartItem(index) {
    const cartItems = JSON.parse(localStorage.getItem("user_cart")) || [];
    cartItems.splice(index, 1);
    localStorage.setItem("user_cart", JSON.stringify(cartItems));
    populateCartTable();
}

// Function to handle the checkout button click
function checkout() {
    // You can implement the checkout logic here
    // For example, redirect the user to a payment page
    alert("Redirecting to the payment page...");
    // window.location.href = "payment.jsp";
}

// Function to increment quantity
function incrementQuantity(index) {
    const cartItems = JSON.parse(localStorage.getItem("user_cart")) || [];
    if (cartItems[index].qty < 10) {
        cartItems[index].qty++;
        localStorage.setItem("user_cart", JSON.stringify(cartItems));
        populateCartTable();
    }
}

// Function to decrement quantity
function decrementQuantity(index) {
    const cartItems = JSON.parse(localStorage.getItem("user_cart")) || [];
    if (cartItems[index].qty > 1) {
        cartItems[index].qty--;
        localStorage.setItem("user_cart", JSON.stringify(cartItems));
        populateCartTable();
    }
}

// Call the populateCartTable function when the page loads
document.addEventListener("DOMContentLoaded", function () {
    populateCartTable();
});



function updateCartSummary() {
    const cartItems = JSON.parse(localStorage.getItem("user_cart")) || [];
    
    // Calculate total price and quantity
    let totalPrice = 0;
    let totalQuantity = 0;

    cartItems.forEach((item) => {
        totalPrice += item.subtotal || 0;
        totalQuantity += item.qty || 0;
    });

    // Update the summary elements
    document.getElementById("total-price").textContent = '&#8377;' + totalPrice.toFixed(2);
    document.getElementById("total-quantity").textContent = totalQuantity;
}

// Call the updateCartSummary function to initialize the summary
updateCartSummary();
</script>

</body>

</html>
