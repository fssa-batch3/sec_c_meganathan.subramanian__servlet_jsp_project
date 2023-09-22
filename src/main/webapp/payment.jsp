<%@page import="com.fssa.bookstore.logger.Logger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.fssa.bookstore.model.User"%>
<%@page import="com.fssa.bookstore.model.Book"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
         .body {
            margin: 20px 100px 100px;
            margin-left: 29px;
            max-width: 600px;
        }

        .checkout p {
            margin-top: 20px;
        }

        .billing-details {
            padding-bottom: 15px;
        }

        label {
            font-family: 'Alkatra', cursive;
            margin: 10px 0 10px 0;
        }

        .field input {
            width: 500px;
            height: 35px;
        }

        .field {
            margin: 10px 0;
        }

        #button {
            margin-top: 15px;
            padding: 12px;
            border: none;
            border-radius: 3px;
            background-color: #6c63ff;
            color: white;
            width: 160px;
            font-weight: 700;
        }

        #order_button {
            margin-top: 30px;
            margin-left: 20px;
            cursor: pointer;
            padding: 12px;
            border: none;
            border-radius: 3px;
            background-color: #6c63ff;
            color: white;
            width: 360px;
            font-weight: 700;
            font-size: 15px;
        }

        .payment_details {
            margin-top: 40px;
            padding-bottom: 15px;
        }

        .row {
            display: flex;
        }

        #expyear {
            width: 150px;
            margin-right: 20px;
        }

        #cvv {
            width: 150px;
        }

        #vehicle1 {
            width: 15px;
            margin-top: 20px;
        }

        .cod {
            margin: 10px;
            font-size: 20px;
        }

        .payment_mode {
            margin-top: 30px;
        }
        .order {
            display: flex;
            /* padding: px 0px;  */
            margin-left: 11px;
            margin-top: 30px;
            margin-bottom: 12px;
            flex-direction: row;
            justify-content: space-between;
            font-family: 'Alkatra', cursive;
            font-size: 18px;

        }

        .order_box {
            border-style: groove;
            border-radius: 4px;
            max-width: 700px;
            width: 420px;
            padding: 15px;
            margin-top: 20px;
            max-height: 615px;
        }

        .order_box h3 {
            text-align: center;
            font-size: 26px;
            font-family: 'Alkatra', cursive;
        }

        .product {
            margin-top: 15px;
        }

        .checkout {
            display: flex;
            width: 80%;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
            margin-left: 200px;
            padding: 50px;
            height: 1069px;
        }

        #qty {
            width: 35px;
            height: 25px;
        }

        .prod {
            display: flex;
            width: 500px;
            /* justify-content: space-between; */
        }

        .book_img {
            border-style: groove;
            padding: 10px;
            height: 140px;
            margin-left: 10px;
            margin-top: 20px;
        }

        .prod_img p {
            margin-top: 8px;

        }

        .prod p {
            font-family: 'Alkatra', cursive;
            font-size: 17px;
            margin-left: 10px;
            margin-bottom: 10px;
        }

        .qty-price {
            display: flex;
            justify-content: space-around;
            margin-right: 30px;
            margin-top: 40px;
            margin-left: -98px;
        }

        .quantity {
            margin-top: 24px;
            font-size: 17px;
        }

        .book_name p {
            margin-top: 70px;
            font-size: 17px;
        }

        .price {
            margin: 24px -30px 0px 10px;
            font-size: 18px;
        }

        .price p {
            margin-left: 15px;
        }

        .hr {
            margin-top: 10px;
        }
        
        
        
        /* Below the code for the popup */
        .popup {
      width: 400px;
      background: #fff;
      border-radius: 6px;
      position: absolute;
      top: 0;
      left: 50%;
      transform: translate(-50%, -50%)scale(0.1);
      text-align: center;
      padding: 0px 30px 30px;
      color: #333;
      visibility: hidden;
      transition: transform 0.4s, top 0.4s;
    }

    .open-popup {
      visibility: visible;
      top: 50%;
      transform: translate(-50%, -50%)scale(1);
    }

    .popup img {
      width: 100px;
      margin-top: -50px;
      border-radius: 50%;
      box-shadow: 0 2px 5px(0 0 0 0.2px);
    }

    .popup h2 {
      font-size: 38px;
      font-weight: 500;
      margin: 30px 0px 10px;
    }

    .popup p {
      margin-top: 15px;
      font-family: 'Poppins', sans-serif;
    }
    .popup button {
      width: 100%;
      margin-top: 40px;
      padding: 10px 0;
      background: #04AA6D;
      color: #fff;
      border: 0;
      outline: none;
      font-size: 18px;
      border-radius: 4px;
      cursor: pointer;
      box-shadow: 0 5px 5px(0 0 0 0.2px);
    }
    </style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
	<% 
	
	HttpSession httpSession = request.getSession(false);
	User userDetails = (User) httpSession.getAttribute("logInUserDetails");
	Book bookDetails = (Book) request.getAttribute("bookDetails");
	if(userDetails != null || bookDetails != null ){
	%>

	<form action="<%=request.getContextPath()%>/Order" method="post">
    <div class="checkout">
        <div class="body">
            <h1 class="checkout-title">Checkout</h1>
            <h3 class="billing-details">Billing Details</h3>
            <hr>
            
		
            <input type="hidden" name="bookId" value="<%= bookDetails.getBookId()%>">
            <input type="hidden" name="bookName" value="<%= bookDetails.getBookName()%>">
            <input type="hidden" name="bookPrice" value="<%= bookDetails.getBookPrice()%>">
            <input type="hidden" name="bookImgUrl" value="<%= bookDetails.getBookImageUrl()%>">
            
            
            <div class="field">
                <label>Name*</label><br> 
                <input name="name" value="<%= userDetails.getName() %>" />
            </div>
            <div class="field">
                <label>Email*</label><br> <input value="<%= userDetails.getEmail()%>" disabled="disabled"/>
            </div>
            <div class="field">
                <label>Mobile Number*</label><br> <input name="phoneNumber" value="<%= userDetails.getPhoneNumber() %>" />
            </div>
            <div class="field">
                <label>Address*</label><br>
                <textarea rows="5" cols="66" name="delivery_address"><%=userDetails.getAddress()%></textarea>
            </div>
            <button id="button" type="submit">Change Address</button>
            <h3 class="payment_details">Payment Details</h3>
            <hr>
            <div class="field">
                <label for="fname">Accepted Cards</label>
                <div class="icon-container">
                    <i class="fa fa-cc-visa" style="color: navy;"></i> <i class="fa fa-cc-amex"
                        style="color: blue;"></i> <i class="fa fa-cc-mastercard" style="color: red;"></i> <i
                        class="fa fa-cc-discover" style="color: orange;"></i>
                </div>
            </div>
            <div class="field">
                <label for="cname">Name on Card</label><br> 
                <input type="text" id="cname" name="cardname">
            </div>
            <div class="field">
                <label for="ccnum">Credit card number</label><br> <input type="text" id="ccnum" name="cardnumber">
            </div>
            <div class="field">
                <label for="expmonth">Exp Month</label><br> <input type="text" id="expmonth" name="expmonth">
            </div>
            <div class="row">
                <div class="field">
                    <label for="expyear">Exp Year</label><br> <input type="text" id="expyear" name="expyear">
                </div>
                <div class="field">
                    <label for="cvv">CVV</label> <br> <input type="text" id="cvv" name="cvv">
                </div>
            </div>

        </div>
        <div class="order_box">
            <h3 class="my_order">Your Order</h3>
            <div class="order">
                <p>Products</p>
                <p>subtotal</p>
            </div>
            <hr>

            <!-- Below the code for product details -->


            <div class="prod">
                <div class="prod_img">
                    <img src="<%= bookDetails.getBookImageUrl() %>" alt="attitude book" class="book_img">
                    <p>1.<%= bookDetails.getBookName() %></p>
                </div>
                <div class="qty-price">
                    <div class="quantity">
                        <label>Qty</label>
                         <input id="qty" type="number" step="1" value="1" min="1" max="10" name="qty" />
                    </div>
                    <div class="price">
                        <p>&#8377; <%= bookDetails.getBookPrice()  %></p>
                    </div>
                </div>
            </div>

            <hr class="hr">
            <div class="order">
                <p>Shipping</p>
                <p>&#8377; free</p>
            </div>
            <div class="order">
                <p>Total</p>
                <p id="totalAmount">&#8377; <%= bookDetails.getBookPrice() %> </p>
            </div>
            <button id="order_button" type="submit">Place Order</button>
             <div class="payment_mode">
                <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
                <label class="cod">cash on delivery</label>
        </div>
        </div>
      
    </div>
    </form>
    <%
	}
    %>
   <!-- Add this script tag inside your HTML's <head> section -->
<!-- Add this script tag inside your HTML's <head> section -->
<script>
    // Function to update the total amount based on the quantity
    function updateTotalAmount() {
        // Get the quantity input element and the total amount element
        const qtyInput = document.getElementById('qty');
        const totalAmount = document.getElementById('totalAmount');
        
        // Get the book price and parse it as a float
        const bookPrice = parseFloat('<%= bookDetails.getBookPrice() %>');
        
        // Get the quantity value or default to 1 if empty or not a number
        let quantity = parseInt(qtyInput.value);
        if (isNaN(quantity) || quantity < 1) {
            quantity = 1; // Default to 1 if NaN or less than 1
        }
        else if(quantity > 10){
        	quantity = 10;
        }
        // Update the quantity input with the sanitized value
        qtyInput.value = quantity;
        
        // Calculate the total amount
        const total = bookPrice * quantity;
        
        // Update the total amount element with the calculated total
        totalAmount.textContent =  total.toFixed(2); // Displaying total with 2 decimal places
    }
    
    // Add an event listener to the quantity input element
    const qtyInput = document.getElementById('qty');
    qtyInput.addEventListener('input', updateTotalAmount);
    
    // Call the updateTotalAmount function initially to set the initial total amount
    updateTotalAmount();
</script>

   

</body>


</html>