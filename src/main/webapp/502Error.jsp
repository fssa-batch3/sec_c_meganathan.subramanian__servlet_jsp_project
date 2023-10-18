<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>502 - Internal Server Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;

        }

        .error-container {
            width: 100%;
            height: 100vh;
            text-align: center;
            /* padding: 20px; */
            border-radius: 5px;
            box-shadow: 0 0 10px #0000001a;
            background-color: #fff;

        }

        .error-code {
            font-size: 3rem;
            color: #1b2e35;
            font-weight: 540;
        }

        .error-message {
            font-size: 1.5rem;
            margin-top: 10px;
            color: #333;
        }

        .error-description {
            font-size: 1.2rem;
            margin-top: 20px;
            color: #555;
        }

        .error-image {
            width: 890px;
            margin-top: -30px;
        }

        .error-actions {
            margin-top: 30px;
            /* margin-bottom: 140px; */
        }

        .error-actions a {
            text-decoration: none;
            background-color: #8896df;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;


        }

        .error-actions a:hover {
            background-color:#8896df;
        }
        .error_message{
            margin-top: -60px;
        }
    </style>
</head>

<body>
    <div class="error-container">
        <img class="error-image" src="assets/images/502.jpg" alt="Not Found">
        <div class="error_message">
            <div class="error-code">Internal Server Error!</div>
            <div class="error-message"></div>
            <div class="error-description">
                Oops! It seems there was a problem with our end.
                Sorry for inconvinence we try to solve as much as possible.
            </div>
            <div class="error-actions">
                <a href="<%= request.getContextPath() %>/Index">Go to Homepage</a>
            </div>
        </div>
    </div>

</body>

</html>