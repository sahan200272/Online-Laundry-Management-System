<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Profile</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            color: #333;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ffffff;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 2px 5px rgba(2, 61, 147, 0.5);
            position: fixed;
            width: 100vw; /* 100% of the viewport width */
            top: 0;
            left: 0; /* Ensure it starts from the left edge */
            z-index: 1000;
        }

        .logo img {
            width: 100px;
            height: 60px;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            position: relative;
            padding: 10px 15px;
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
        }

        nav ul li:hover {
            background-color: black;
            color: white;
            border-radius: 5px;
            transform: scale(1.05);
        }

        nav ul li a {
            text-decoration: none;
            color: #000000;
            font-size: 18px;
            font-weight: bold;
        }

        nav ul li a:hover {
            color: white;
        }

        .auth-buttons button {
            margin-left: 10px;
            padding: 10px 20px;
            background-color: #023D93;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .auth-buttons button:hover {
            background-color: #1E90FF;
        }

        main {
            padding: 40px;
            max-width: 600px;
            margin-top: 120px;
            margin-left: auto;
            margin-right: auto;
            background-color: #f9f9f9;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .update-form {
        max-width: 600px;
        margin: 0 auto;
        background-color: #f9f9f9;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .form-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 15px;
    }

    .form-group {
        width: 48%; /* Make two form fields fit side by side */
    }

    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #023D93;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        box-sizing: border-box;
    }

    .form-group input:focus {
        border-color: #1E90FF;
        outline: none;
        box-shadow: 0 0 5px rgba(30, 144, 255, 0.5);
    }

    .update-btn {
        width: 100%;
        background-color: #1E90FF;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .update-btn:hover {
        background-color: #00509E;
    }
    h2{
    	text-align:center;
    	font-weight:bold;
    }

    </style>
</head>
<body>

    <header>
        <div class="logo">
            <img src="<%= request.getContextPath() %>/images/logo.png" alt="Pat Pat Cleaning Logo">
        </div>
        <nav>
            <ul>
                <li><a href="<%= request.getContextPath() %>/loginSuccess.jsp">Home</a></li>
                <li><a href="aboutUs.jsp">About Us</a></li>
                <li><a href="contactUs.jsp">Contact Us</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="blogs.jsp">Blogs</a></li>
            </ul>
        </nav>
        <div class="auth-buttons">
            <a href="user_register_and_login/register.jsp"><button>Register</button></a>
        </div>
        <div id="dateTime" class="date-time"></div>
    </header>

<main>

	<h2>Edit Your Details</h2>
    <% 
        int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
    %>

    <form action="<c:url value='/UpdateUserDetailsServlet'/>" method="post" class="update-form">
    
    <input type="hidden" name="id" value="<%=id%>">
    <!-- First Name and Last Name side by side -->
    <div class="form-row">
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" value="<%= firstName %>">
        </div>

        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" value="<%= lastName %>">
        </div>
    </div>

    <!-- Email and Phone side by side -->
    <div class="form-row">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= email %>">
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" value="<%= phone %>">
        </div>
    </div>

    <!-- Username and Password side by side -->
    <div class="form-row">
        <div class="form-group">
            <label for="userName">Username</label>
            <input type="text" id="userName" name="userName" value="<%= userName %>">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" value="<%= password %>">
        </div>
    </div>

    <button type="submit" class="update-btn">Update Profile</button>
</form>
</main>

</body>
</html>
