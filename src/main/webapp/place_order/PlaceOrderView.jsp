<%@ page import="java.sql.*" %>
<%@ page import="database.connection.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">  
    <title>View Orders</title>
    <style>
    
    
         body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
            color: #333333;
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
                    width: 98%;
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

                .auth-buttons {
                    display: flex;
                    gap: 10px;
                    /* Space between the buttons */
                }

                .auth-buttons a button {
                    background-color: #008CBA;
                    /* Green background for buttons */
                    color: white;
                    border: none;
                    padding: 10px 20px;
                    cursor: pointer;
                    font-size: 16px;
                    border-radius: 5px;
                }

                4CAF50 45a049 008CBA 007bb5 .auth-buttons a button:hover {
                    background-color: #007bb5;
                    /* Darker green on hover */
                }

                .auth-buttons .profile-btn {
                    background-color: #4CAF50;
                    /* Blue background for Profile button */
                }

                .auth-buttons .profile-btn:hover {
                    background-color: #45a049;
                    /* Darker blue on hover */
                }
                
                main{
                	margin-top: 100px;
                }
        .add-button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            display: inline-block;
            margin-bottom: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        /* Table Container to handle rounded corners */
        .table-container {
            overflow: hidden;
            border-radius: 15px; /* Adjust the radius as needed */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            margin-top: 20px;
            margin-left: 5px;
            margin-right: 5px;
            margin-bottom:250px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #008080;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        /* Rounded corners for the table headers */
        th:first-child {
            border-top-left-radius: 15px;
        }
        th:last-child {
            border-top-right-radius: 15px;
        }
        /* Rounded corners for the table footer if exists */
        /* Uncomment if you have a table footer
        tfoot tr td:first-child {
            border-bottom-left-radius: 15px;
        }
        tfoot tr td:last-child {
            border-bottom-right-radius: 15px;
        }
        */
        .action-buttons form {
            display: inline-block;
            margin: 0;
        }
        .action-buttons input[type="submit"],
        .action-buttons button {
            padding: 8px 16px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 2px;
        }
        .update-btn {
            background-color: #3498db;
            color: white;
            transition: background-color 0.3s ease;
        }
        .delete-btn {
            background-color: #e74c3c;
            color: white;
            transition: background-color 0.3s ease;
        }
        .update-btn:hover {
            background-color: #2980b9;
        }
        .delete-btn:hover {
            background-color: #c0392b;
        }
        /* Responsive Design */
        @media (max-width: 1200px) {
            table, th, td {
                font-size: 14px;
            }
            .add-button {
                font-size: 14px;
                padding: 8px 16px;
            }
            .action-buttons input[type="submit"],
            .action-buttons button {
                padding: 6px 12px;
                font-size: 12px;
            }
        }
        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
                padding: 8px;
            }
            .add-button {
                font-size: 12px;
                padding: 6px 12px;
            }
            .action-buttons input[type="submit"],
            .action-buttons button {
                padding: 4px 8px;
                font-size: 10px;
            }
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
                <a href="../user_register_and_login/register.jsp"><button>Register</button></a>
                <a href="../profile.jsp"><button class="profile-btn">Profile</button></a>
            </div>
        </header>
        
<main>        

<h1>View Orders</h1>

<!-- Optional: Add Order Button -->
<a href="place_order/placeOrder.jsp" class="add-button">Add New Order</a>

<c:if test="${empty orderList}">
    <p>No orders found for this user.</p>
</c:if>

<!-- Table Container with Rounded Corners -->
<div class="table-container">
    <!-- Table to display orders -->
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone No</th>
                <th>Shirts</th>
                <th>Pants</th>
                <th>Jeans</th>
                <th>Towels</th>
                <th>Mundu</th>
                <th>Bed Sheets</th>
                <th>Shorts</th>
                <th>Washing</th>
                <th>Ironing</th>
                <th>Total Amount (LKR)</th>
                <th>Uname</th>
                <th>Actions</th>
            </tr>
        </thead>
        
        <!-- JSTL forEach to loop over orderList -->
        <tbody>
            <c:forEach var="order" items="${orderList}">
                <tr>
                    <td>${order.id}</td>
                    <td>${order.name}</td>
                    <td>${order.phoneNo}</td>
                    <td>${order.shirts}</td>
                    <td>${order.pants}</td>
                    <td>${order.jeans}</td>
                    <td>${order.towels}</td>
                    <td>${order.mundu}</td>
                    <td>${order.bedSheet}</td>
                    <td>${order.shorts}</td>
                    <td>${order.washing}</td>
                    <td>${order.ironing}</td>
                    <td>${order.totalAmount}</td>
                    <td>${order.uname}</td>
                    <td class="action-buttons">
                        <!-- Update button -->
                        <form action="place_order/PlaceOrderUpdate.jsp" method="post">
                            <input type="hidden" name="id" value="${order.id}">
                            <input type="hidden" name="name" value="${order.name}">
                            <input type="hidden" name="phoneNo" value="${order.phoneNo}">
                            <input type="hidden" name="shirts" value="${order.shirts}">
                            <input type="hidden" name="pants" value="${order.pants}">
                            <input type="hidden" name="jeans" value="${order.jeans}">
                            <input type="hidden" name="towels" value="${order.towels}">
                            <input type="hidden" name="mundu" value="${order.mundu}">
                            <input type="hidden" name="bedSheet" value="${order.bedSheet}">
                            <input type="hidden" name="shorts" value="${order.shorts}">
                            <input type="hidden" name="washing" value="${order.washing}">
                            <input type="hidden" name="ironing" value="${order.ironing}">
                            <input type="hidden" name="totalAmount" value="${order.totalAmount}">
                            <input type="hidden" name="uname" value="${order.uname}">
                            <input type="submit" class="update-btn" value="Update">
                        </form>

                        <!-- Delete button -->
                        <form action="<c:url value='/PlaceOrderDeleteServlet'/>" method="post">
                            <input type="hidden" name="id" value="${order.id}">
                            <button type="submit" class="delete-btn" onclick="return confirm('Are you sure you want to delete this order?')">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</main>

<footer>
            <div class="footer-bottom">
                <h3>PAT PAT CLEANING</h3>
                
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