<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 650px; /* Increased the width for horizontal layout */
        }
        
        h1 {
            text-align: center;
            color: #023D93;
            margin-bottom: 20px;
            font-size: 28px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: #023D93;
            font-weight: 600;
            font-size: 14px;
        }
        
        input[type="text"], input[type="password"] {
            width:100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            transition: border-color 0.3s ease-in-out;
        }
        
        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #1E90FF;
            outline: none;
            box-shadow: 0 0 5px rgba(30, 144, 255, 0.3);
        }
        
        input[type="submit"] {
            width: 100%;
            background-color: #1E90FF;
            color: #ffffff;
            padding: 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        
        input[type="submit"]:hover {
            background-color: #00509E;
            box-shadow: 0 8px 15px rgba(0, 80, 158, 0.2);
        }
        
        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .form-group input {
            width: 90%; /* Adjust the width of inputs for two in a row */
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: #1E90FF;
            text-decoration: none;
            font-size: 14px;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

        .message {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Register</h1>
        
        <form action="<c:url value='/RegisterServlet'/>" method="post">
            
            <div class="form-group">
                <div>
                    <label for="firstName">First Name:</label>
                    <input type="text" name="fname" placeholder="Enter your first name" required>
                </div>
                <div>
                    <label for="lastName">Last Name:</label>
                    <input type="text" name="lname" placeholder="Enter your last name" required>
                </div>
            </div>
            
            <div class="form-group">
                <div>
                    <label for="userName">Username:</label>
                    <input type="text" name="uname" placeholder="Enter your username" required>
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="text" name="email" placeholder="Enter your email" required>
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label for="phone">Phone:</label>
                    <input type="text" name="phone" placeholder="Enter your phone number" required>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" name="pwd" placeholder="Enter your password" required>
                </div>
            </div>
            
            <input type="submit" name="submit" value="Register">
        </form>

        <div class="form-footer">
            <p>Already have an account? <a href="login.jsp">Log in here</a></p>
        </div>
    </div>

</body>
</html>
