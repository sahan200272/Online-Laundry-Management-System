<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Admin</title>

    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #023d93;
            margin: 0;
            padding: 0;
        }

        .main-content {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #023d93;
        }

        h2 {
            text-align: center;
            color: #ececec;
        }

        /* Form Styles */
        .form-outliner {
            margin-top: 20px;
        }

        .main-form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
            color: #ffffff;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #444444;
            outline: none;
        }

        /* Button Styles */
        .update-group {
            display: flex;
            justify-content: center;
        }

        .update-btn {
            background-color: #ffffff;
            color: rgb(0, 0, 0);
            border: none;
            border-radius: 4px;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .update-btn:hover {
            background-color: #6a8097;
        }

        .form-list {
            list-style-type: none; /* Remove default list styling */
            padding: 0; /* Remove padding */
        }

        .form-list li {
            margin-bottom: 15px; /* Space between each list item */
        }

        label {
            display: block; /* Make labels block elements to stack above inputs */
            margin-bottom: 5px; /* Space between label and input */
            font-weight: bold;
            color: #fdfdfd;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%; /* Make inputs full-width */
            box-sizing: border-box; /* Include padding and border in the element's total width */
        }
    </style>

    <!-- JavaScript for form validation -->
    <script>
        function validateForm() {
            // Get form fields
            var phone = document.getElementById("phone").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var nic = document.getElementById("nic").value;

            // Phone validation: 10 characters
            if (phone.length !== 10 || isNaN(phone)) {
                alert("Phone number must be exactly 10 digits.");
                return false;
            }

            // Email validation: must contain '@'
            if (email.indexOf("@") === -1) {
                alert("Email must contain '@'.");
                return false;
            }

            // Password validation: at least 4 characters
            if (password.length < 4) {
                alert("Password must be at least 4 characters long.");
                return false;
            }

            // NIC validation: exactly 12 characters
            if (nic.length !== 12) {
                alert("NIC must be exactly 12 characters long.");
                return false;
            }

            return true; // If all validations pass
        }
    </script>

</head>
<body>

<%

	request.getParameter("a_nic");
%>

    <div class="main-content">
        <h2 style="text-align: center; font-size:30px;">Update Admin</h2>
        <div class="container">

        <div class="form-outliner">
        
            <form action="<c:url value ='/UpdateAdminServlet'/>" method="POST" onsubmit="return validateForm()">
            
                <input type="hidden" name="a_id" value="<%=Integer.parseInt(request.getParameter("a_id"))%>" readonly> <!-- Simulated admin ID -->
                <ul class="form-list">
                    <li>
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="a_name" value="<%=request.getParameter("a_name")%>">
                    </li>
                    <li>
                        <label for="nic">NIC:</label>
                        <input type="text" id="nic" name="a_nic" value="<%=request.getParameter("a_nic")%>">
                    </li>
                    <li>
                        <label for="phone">Phone:</label>
                        <input type="text" id="phone" name="a_phone" value="<%=request.getParameter("a_phone")%>">
                    </li>
                    <li>
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="a_email" value="<%=request.getParameter("a_email")%>">
                    </li>
                    <li>
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="a_username" value="<%=request.getParameter("a_username")%>" readonly>
                    </li>
                    <li>
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="a_password" value="<%=request.getParameter("a_password")%>">
                    </li>
                </ul>

                <div class="update-group">
                
                    <input class="update-btn" type="submit" value="Update Admin">
                </div>
            </form>
        </div>

        </div>
    </div>

</body>
</html>
