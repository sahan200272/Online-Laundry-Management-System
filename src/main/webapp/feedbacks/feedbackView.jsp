<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #FFFFFF;
            color: #000000;
            margin: 0;
            padding: 0;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ffffff; /* White background */
            padding: 10px 20px; /* Increased padding for better spacing */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 2px 5px rgba(2, 61, 147, 0.5); /* Shadow with custom color */
            position: fixed;
            width: 100%;
            top: 0;
            color: #023D93; /* Dark blue text for contrast */
            font-family: 'Arial', sans-serif; /* Font styling */
            z-index: 1000; /* Ensure header stays on top */
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
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease; /* Added transform transition */
        }

        nav ul li:hover {
            background-color: black; /* Slightly darkened background on hover */
            color: white; /* Dark blue for a nice contrast */
            border-radius: 5px;
            transform: scale(1.05); /* Slight zoom on hover for emphasis */
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
            background-color: #023D93; /* Dark blue button */
            color: #ffffff; /* White text on button */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease; /* Smooth background transition */
        }

        .auth-buttons button:hover {
            background-color: #1E90FF; /* A lighter blue on hover */
        }
        .container {
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 80px;
            padding: 40px;
        }
        h2 {
            color: #1c2751;
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }
        th {
            background-color: #1c2751;
            color: #ffffff;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        tr:hover {
            background-color: #e9ecef;
        }
        .actions {
            white-space: nowrap;
        }
        .btn {
            display: inline-block;
            padding: 8px 12px;
            margin: 2px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            text-align: center;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .btn-edit {
            background-color: #1c2751;
            color: white;
        }
        .btn-delete {
            background-color: #dc3545;
            color: white;
        }
        .btn:hover {
            opacity: 0.8;
            transform: translateY(-2px);
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

    <div class="container">
        <h2>Customer Feedback</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Feedback</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="feedback" items="${feedbackList}">
                <tr>
                    <td>${feedback.name}</td>
                    <td>${feedback.email}</td>
                    <td>${feedback.feedbackText}</td>

                    <td class="actions">
                        <!-- Update Form -->
                    <form id="feedbackForm" action="feedbacks/updateFeedback.jsp" method="post">
			    
			    	<input type="hidden" name="id" value="${feedback.id}"/>
				    <input type="hidden" name="name" value="${feedback.name}"/>
				    <input type="hidden" name="feedbackEmail" value="${feedback.email}"/>
					<input type="hidden" name="feedbackText" value="${feedback.feedbackText}"/>
					<input type="hidden" name="uname" value="${feedback.uname}"/>
				
				    <button type="submit">Update</button>
				    
					</form>

                    <!-- Delete Form (optional if you want delete functionality) -->
                    <form action="<c:url value='/DeleteFeedbackServlet'/>" method="post" style="display:inline;">
                    
                        <input type="hidden" name="id" value="${feedback.id}">
                        
                        <button class="btn btn-delete" type="submit" onclick="return confirm('Are you sure you want to delete this question?')">Delete</button>
                    </form>
                        
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
