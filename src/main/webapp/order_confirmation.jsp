<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Order Placed</title>
    
    <style>

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1;
        }

        .container-order {
            text-align: center;
            width: 60%;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 2;
            position: relative;
            margin-top: 180px;
        }

        .success-icon {
            font-size: 48px;
            color: #2ecc71;
        }

        .message {
            font-size: 40px;
            letter-spacing: 1px;
            margin-top: 20px;
            color:grey;
        }

        .order-details {
            margin-top: 20px;
            font-size: 18px;
           
            background: #d7f5da;
            height: 140px;
            padding: 14px;
        }
        .order-details p{
            color: black;
            margin-top: 12px;
        }
        

        .button-home {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #2ecc71;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <div class="overlay">
        <div class="container-order">
            <div class="success-icon">&#10004;</div>
            <div class="message">Thank you for Your order.</div>
            <div class="order-details">
                <p style="font-weight: 700;">ORDER CONFIRMATION</p>
                <p>Order Number: #12345</p>
                <p>Thank you for choosing book-store  fashion. You will shortly receive a confirmation email.</p>
            </div>
            <p class="additional-info">Thank you for shopping with us. If you have any questions or need assistance, please <a href="#">contact us</a>.</p>
            <a href="<%=request.getContextPath()%>/ListAllOrder" class="button-home">View Orders</a>
        </div>
    </div>
</body>
</html>
