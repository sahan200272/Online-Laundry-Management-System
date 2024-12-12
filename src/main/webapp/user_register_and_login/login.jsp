<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5; /* Updated background to match the registration form */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #ffffff; /* White background for the form container */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h2 {
            color: #1c2751; /* Dark blue color for the header */
            margin-bottom: 20px;
        }
        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333333; /* Dark text for the labels */
        }
        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #007bff; /* Blue button */
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        p {
            margin-top: 10px;
            color: #333333; /* Dark text for the paragraph */
        }
        p a {
            color: #007bff; /* Blue link text */
            text-decoration: none;
        }
        p a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Login Page</h2>
        
        <form action="<c:url value='/LoginValidateServlet'/>" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" placeholder="Enter your username" required>
            
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="Enter your password" required>
            
            <input type="submit" value="Login">
        </form>
        
        <p>Don't have an account? <a href="<c:url value='/register.jsp'/>">Register here</a></p>
    </div>
</body>
</html>
