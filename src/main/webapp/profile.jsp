<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        /* Ensure the body and html have no margin/padding */
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
            width: 98%; /* 100% of the viewport width */
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
            max-width: 800px;
            margin-top: 100px; /* Increased margin to account for fixed header */
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 40px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: #023D93;
            margin-bottom: 30px;
        }

        .profile-details h2 {
            color: #555;
            margin-bottom: 20px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
        }

        .profile-details p {
            font-size: 16px;
            margin: 10px 0;
            color: #666;
        }

        .profile-details p strong {
            color: #023D93;
            font-weight: bold;
        }

        .profile-actions {
            margin-top: 20px;
            text-align: center;
        }

        .profile-actions form {
            display: inline-block;
            margin: 10px;
        }

        button {
            background-color: #1E90FF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #00509E;
        }

        .delete-button {
            background-color: #FF6347;
        }

        .delete-button:hover {
            background-color: #FF4500;
        }

        .btnf {
            background-color: #2f891b;
        }

        .btnf:hover {
            background-color: #0d3a0b;
        }

        /* User Info Box */
        .user-info-box {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #ddd;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .user-info-box p {
            margin: 5px 0;
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
            <a href="place_order/placeOrder.jsp"><button>Place Order</button></a>
        </div>
        <div class="lbtn">
            <a href="home.jsp"><button>Log Out</button></a>
        </div>
    </header>
    
    <main>
        <h1>User Profile</h1>
    
        <div class="profile-details">
            <h2>Profile Information</h2>
            
            <c:forEach var="user" items="${userDetails}">
                <div class="user-info-box">
                    <p><strong>User ID:</strong> ${user.id}</p>
                    <p><strong>Name:</strong> ${user.firstName} ${user.lastName}</p>
                    <p><strong>Email:</strong> ${user.email}</p>
                    <p><strong>Phone:</strong> ${user.phone}</p>
                    <p><strong>Username:</strong> ${user.userName}</p>
                </div>
    
                <div class="profile-actions">
                    <!-- Update profile form -->
                    <form action="user_register_and_login/updateUserDetails.jsp" method="post">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="hidden" name="firstName" value="${user.firstName}">
                        <input type="hidden" name="lastName" value="${user.lastName}">
                        <input type="hidden" name="email" value="${user.email}">
                        <input type="hidden" name="phone" value="${user.phone}">
                        <input type="hidden" name="userName" value="${user.userName}">
                        <input type="hidden" name="password" value="${user.password}">
                        <button class="btn" type="submit">Update Profile</button>
                    </form>
    
                    <!-- Delete profile form -->
                    <form action="<c:url value='DeleteUserDetailsServlet'/>" method="post" 
                          onsubmit="return confirm('Are you sure you want to delete your profile?');" 
                          style="display:inline;">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="hidden" name="uname" value="${user.userName}">
                        <button type="submit" class="delete-button">Delete Profile</button>
                    </form>
                </div>
            </c:forEach>
        </div>
    
        <!-- Show questions form (outside the loop since it's for all users) -->
        <div class="profile-actions">
            <form action="SelectQuestionServlet" method="post">
                <button type="submit" name="submit">Show Questions</button>
            </form>
        </div>
        
        <div class="profile-actions">
            <form action="<c:url value='/SelectFeedbackServlet'/>" method="post">
                <button type="submit" name="submit" class="btnf">Your Feedbacks</button>
            </form>
        </div>
        
    </main>
    <footer>

                <div class="footer-bottom">
                    <h3>PAT PAT CLEANING</h3>
                    <div class="social-media-icons">
                        <a href="#"><i class="fab fa-facebook"><img src="images/social-media.png"></i></a>
                        <a href="#"><i class="fab fa-instagram"><img src="images/instagram.png"></i></a>
                        <a href="#"><i class="fab fa-linkedin"><img src="images/twitter.png"></i></a>
                        <a href="#"><i class="fab fa-tiktok"><img src="images/linkedin-logo.png"></i></a>
                        <a href="#"><i class="fab fa-whatsapp"><img src="images/whatsapp.png"></i></a>
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
