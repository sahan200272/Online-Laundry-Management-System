<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Questions</title>
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
            width: 98%;
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 2px solid #ddd;
        }

        th {
            background-color: #003366; /* Navy blue background color */
            color: #ffffff; /* White text color for better contrast */
            padding: 15px; /* Increased padding for better spacing */
            text-align: left; /* Align text to the left */
            font-size: 16px; /* Increase font size */
            border-bottom: 2px solid rgba(255, 255, 255, 0.3); /* Light bottom border */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            transition: background-color 0.3s ease; /* Smooth background transition */
        }

        th:hover {
            background-color: #00509E; /* Lighter blue on hover */
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .btnu {
            box-shadow: 3px 3px 4px 0px #3dc21b;
            background: linear-gradient(to bottom, #44c767 5%, #5cbf2a 100%);
            background-color: #44c767;
            border-radius: 14px;
            border: 1px solid #18ab29;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Georgia;
            font-size: 15px;
            font-weight: bold;
            padding: 7px 10px;
            text-decoration: none;
            text-shadow: 0px 0px 0px #2f6627;
        }

        .btnu:hover {
            background: linear-gradient(to bottom, #5cbf2a 5%, #44c767 100%);
            background-color: #5cbf2a;
        }

        .btnd {
            box-shadow: 3px 3px 1px 0px #f29c93;
            background: linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
            background-color: #fe1a00;
            border-radius: 14px;
            border: 1px solid #d83526;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Georgia;
            font-size: 15px;
            font-weight: bold;
            padding: 7px 10px;
            text-decoration: none;
            text-shadow: 0px 0px 0px #b23e35;
        }

        .btnd:hover {
            background: linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
            background-color: #ce0100;
        }

        .container {
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 80px;
            margin-bottom: 250px;
            padding: 40px;
        }

        h2 {
            color: #1c2751;
            text-align: center;
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            gap: 10px; /* Space between buttons */
        }
        footer {
                    background-color: #f8f8f8;
                    color: #333;
                    font-family: Arial, sans-serif;
                    border-top: 4px solid #8caeae;
                    /* Light blue border */
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 2px 5px rgba(2, 61, 147, 0.5);
                }



                .footer-bottom {
                    text-align: center;
                    padding-top: 10px;
                    border-top: 1px solid #e0e0e0;
                    margin-bottom: 0;

                }

                .footer-bottom h3 {
                    color: #023D93;
                    font-size: 24px;
                }

                .social-media-icons a {
                    margin: 0 10px;
                    font-size: 24px;
                    color: #023D93;
                }

                .footer-links {
                    margin: 20px 0;
                }

                .footer-links a {
                    color: #023D93;
                    text-decoration: none;
                    margin: 0 10px;
                }

                .footer-links a:hover {
                    text-decoration: underline;
                }

                .footer-bottom p {
                    font-size: 14px;
                    color: #555;
                    margin-bottom: 0%;
                    padding-bottom: 20px;
                }

                .social-media-icons a {
                    margin: 0 10px;
                    font-size: 18px;
                    /* Reduce font size */
                    color: #023D93;
                }

                .social-media-icons img {
                    width: 24px;
                    /* Set width for the image icons */
                    height: 24px;
                    /* Set height for the image icons */
                    vertical-align: middle;
                    /* Align the image icons with text */
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

	<h2>Your Questions</h2>
    <!-- Debugging: Output the size of the question list -->
    <p><strong>Number of questions:</strong> <c:out value="${fn:length(question)}" /></p>

    <table>
        <thead>
            <tr>
                <th>Customer Name</th>             
                <th>Question</th>
                <th>User Name</th>
                <th>Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- The data will be dynamically inserted here -->
            <c:forEach var="que" items="${question}">
                <tr>
                    <td>${que.name}</td>
                    <td>${que.question}</td>
                    <td>${que.uname}</td>
                    <td>${que.date}</td>
                    <td>
                        <div class="button-container">
                            <form action="ask_questions/updateQuestion.jsp" method="post">
                                <input type="hidden" name="id" value="${que.id}">
                                <input type="hidden" name="cname" value="${que.name}">
                                <input type="hidden" name="phone" value="${que.phone}">
                                <input type="hidden" name="email" value="${que.email}">
                                <input type="hidden" name="que" value="${que.question}">
                                <input type="hidden" name="uname" value="${que.uname}">
                                <button class="btnu" type="submit">Update</button>
                            </form>
                            <form action="<c:url value='/DeleteQuestionServlet'/>" method="post">
                                <input type="hidden" name="id" value="${que.id}">
                                <input type="hidden" name="uname" value="${que.uname}">
                                <button class="btnd" type="submit" onclick="return confirm('Are you sure you want to delete this question?')">Delete</button>
                            </form>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    
    <footer>

                <div class="footer-bottom">
                    <h3>PAT PAT CLEANING</h3>
                    <div class="social-media-icons">
                        <a href="#"><i class="fab fa-facebook"><img src="../images/social-media.png"></i></a>
                        <a href="#"><i class="fab fa-instagram"><img src="../images/instagram.png"></i></a>
                        <a href="#"><i class="fab fa-linkedin"><img src="../images/twitter.png"></i></a>
                        <a href="#"><i class="fab fa-tiktok"><img src="../images/linkedin-logo.png"></i></a>
                        <a href="#"><i class="fab fa-whatsapp"><img src="../images/whatsapp.png"></i></a>
                    </div>
                    <div class="footer-links">
                        <a href="#">Privacy Policy</a> |
                        <a href="#">Terms & Conditions</a> |
                        <a href="#">Contact Us</a>
                    </div>
                    <p>© 2024 Online Laundry Management System. All rights reserved.</p>
                </div>
            </footer>
</body>
</html>