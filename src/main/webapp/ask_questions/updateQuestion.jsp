<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <title>Update Question</title>

                <script>
                    function validateForm() {
                        // Get form values
                        const name = document.getElementById("cusname").value;
                        const email = document.getElementById("cusemail").value;

                        // Regular expression to allow only letters (both cases) and spaces
                        const namePattern = /^[a-zA-Z\s]+$/; // Letters and spaces only
                        const gmailPattern = /^[a-z0-9._%+-]+@gmail\.com$/;  // Must be a Gmail address

                        // Validate name (letters and spaces only)
                        if (!namePattern.test(name)) {
                            alert("Name must contain only letters and spaces. Numbers or special characters are not allowed.");
                            return false;
                        }

                        // Validate email (must end with @gmail.com)
                        if (!gmailPattern.test(email)) {
                            alert("Please enter a valid Gmail address (example@gmail.com).");
                            return false;
                        }

                        // If all validation checks pass, submit the form
                        return true;
                    }
                </script>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f0f4f8;
                        /* Light gray background for a soft look */
                        color: #333;
                        /* Dark gray for better readability */
                        margin: 0;
                        padding: 0;
                    }

                    header {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        background-color: #ffffff;
                        /* White background */
                        padding: 10px 20px;
                        /* Increased padding for better spacing */
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 2px 5px rgba(2, 61, 147, 0.5);
                        /* Shadow with custom color */
                        position: fixed;
                        width: 100%;
                        top: 0;
                        color: #023D93;
                        /* Dark blue text for contrast */
                        font-family: 'Arial', sans-serif;
                        /* Font styling */
                        z-index: 1000;
                        /* Ensure header stays on top */
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
                        /* Added transform transition */
                    }

                    nav ul li:hover {
                        background-color: black;
                        /* Slightly darkened background on hover */
                        color: white;
                        /* Dark blue for a nice contrast */
                        border-radius: 5px;
                        transform: scale(1.05);
                        /* Slight zoom on hover for emphasis */
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
                        /* Dark blue button */
                        color: #ffffff;
                        /* White text on button */
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        font-size: 16px;
                        font-weight: bold;
                        transition: background-color 0.3s ease;
                        /* Smooth background transition */
                    }

                    .auth-buttons button:hover {
                        background-color: #1E90FF;
                        /* A lighter blue on hover */
                    }

                    form {
                        max-width: 600px;
                        margin: 150px auto;
                        /* Centering the form */
                        padding: 20px;
                        border: 1px solid #ddd;
                        border-radius: 5px;
                        background-color: #ffffff;
                        /* White background for the form */
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                        /* Light shadow for depth */
                    }

                    label {
                        display: block;
                        margin-bottom: 8px;
                        font-weight: bold;
                        color: #023D93;
                        /* Dark blue label text */
                    }

                    input[type="text"],
                    textarea {
                        width: 90%;
                        padding: 10px;
                        margin-bottom: 20px;
                        border: 1px solid #ccc;
                        /* Light gray border */
                        border-radius: 5px;
                        transition: border-color 0.3s ease;
                        /* Smooth border transition */
                    }

                    input[type="text"]:focus,
                    textarea:focus {
                        border-color: #1E90FF;
                        /* Blue border on focus */
                        outline: none;
                        /* Remove outline */
                    }

                    input[type="submit"] {
                        padding: 10px 15px;
                        background-color: #1E90FF;
                        /* Bright blue submit button */
                        color: white;
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        font-weight: bold;
                        transition: background-color 0.3s ease;
                        /* Smooth background transition */
                    }

                    input[type="submit"]:hover {
                        background-color: #00509E;
                        /* Darker blue on hover */
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

                <% int id=Integer.parseInt(request.getParameter("id")); String
                    customerName=request.getParameter("cname"); String customerPhone=request.getParameter("phone");
                    String customerEmail=request.getParameter("email"); String question=request.getParameter("que");
                    String userName=request.getParameter("uname"); %>

                    <form action="<c:url value='/UpdateQuestionServlet'/>" method="post" onsubmit="return validateForm()">
                        <input type="hidden" id="id" name="id" value="<%= id %>">

                        <label for="cusname">Customer Name:</label>
                        <input type="text" id="cusname" name="cname" value="<%= customerName %>" required>

                        <label for="cusname">Phone Number:</label>
                        <input type="text" id="cusphone" name="phone" pattern="[0-9]{10}" value="<%= customerPhone %>" required>

                        <label for="cusname">Email:</label>
                        <input type="text" id="cusemail" name="email" pattern="[a-z0-9._%+-]+@gmail\.com$" value="<%= customerEmail %>" required>

                        <label for="question">Question:</label>
                        <textarea id="question" name="question" rows="4" cols="50" required><%= question %></textarea>

                        <label for="uname">User Name:</label>
                        <input type="text" id="uname" name="uname" value="<%= userName %>" readonly>

                        <input type="submit" name="submit" value="Update Your Question">
                    </form>

            </body>

            </html>