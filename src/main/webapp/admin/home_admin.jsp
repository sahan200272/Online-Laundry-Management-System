<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laundry Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            background-color: #fdfdfd;
            color: rgb(189, 189, 189);
            font-family: Arial, sans-serif;
            min-height : 100%;
            overflow-y: auto;
        }
        header {
            background-color: #023d93;
            padding: 20px;
            text-align: center;
            color: white;
        }
        .option-container {
            margin-top: 60px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding-bottom: 20px
        }
        .option-card {
            background-color: #023d93;
            border: 1px solid #555;
            padding: 20px;
            width: 300px;
            margin: 15px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
            transition: transform 0.2s ease;
            overflow-y: visible;
        }
        .option-card:hover {
            transform: scale(1.05);
            box-shadow: 4px 4px 20px rgba(1, 3, 32, 0.1);
        }
        .option-card h3 {
            color: #d4d4d4;
        }
        footer {
            background-color: #023d93;
            text-align: center;
            padding: 15px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<header>
    <h1>Pat   Pat   Cleaning</h1>
    <p>Admin Dashboard</p>
</header>

<div class="container option-container">
 
    <div class="option-card" onclick="window.location.href='<%= request.getContextPath() %>/SelectAdminServlet'">
        <h3>Manage Admins</h3>
        <p>Update Admin user detalis in system and remove admins.</p>
    </div>
    <div class="option-card" onclick="window.location.href='admin/add_admin.jsp'">
        <h3>Add Admin</h3>
        <p>Add new Admin to the System</p>
    </div>
    
       <div class="option-card" >
    <h3>Questions</h3>
    <p>View user questions</p>
   </div>
   
    <div class="option-card" onclick="window.location.href='home.jsp'">
    <h3>Home</h3>
    <p>Rederect to the Home</p>
   </div>


   <div class="option-card" >
    <h3>Ongoing orders</h3>
    <p>View ongoing order details</p>
   </div>

   <div class="option-card" >
    <h3>Reports</h3>
    <p>Genarate monthly Report</p>
   </div>
   
    
</div>

<footer>
    <p>&copy; 2024 Laundry Management System - Admin Dashboard<br><a   id="dateTime"> <!--current date and time -->
            </a></p>
</footer>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

 <script>
        function updateDateTime() {
            const now = new Date();
            const formattedDateTime = now.toLocaleDateString() + ' ' + now.toLocaleTimeString();
            document.getElementById('dateTime').textContent = formattedDateTime;
        }

        // Update the date and time every second
        setInterval(updateDateTime, 1000);

        // Initialize the date and time on page load
        updateDateTime();
    </script>

</body>
</html>
    