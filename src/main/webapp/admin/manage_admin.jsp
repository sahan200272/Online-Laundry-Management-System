<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL core library -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Admin</title>
    
    <style>
        /* General page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #023d93; /* Dark background */
            color: #ffffff; /* Light text color */
            margin: 0;
            padding: 0;
        }

        /* Main content container */
        .main-content {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #023d93; /* Slightly lighter background for contrast */
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Container for the table */
        .container {
            overflow-x: auto;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #023d93;           
            border-radius: 8px;
            overflow: hidden;
        }

        table th, table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #bdc3c7;
            color: #fff;
        }

        table th {
            background-color: #fff; /* Header color */
            color: #000000;
        }

       
        table td {
            font-size: 16px;
        }

        /* Buttons styling */
        button {
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .delete-button {
            background-color: #e74c3c;
            color: #fff;
            margin-right: 10px;
            transition: background-color 0.3s;
        }

        .delete-button:hover {
            background-color: #c0392b;
        }

        .edit-button {
            background-color: #3498db;
            color: #fff;
            transition: background-color 0.3s;
        }

        .edit-button:hover {
            background-color: #2980b9;
        }

        /* Mobile responsiveness */
        @media screen and (max-width: 768px) {
            table, tbody, th, td, tr {
                display: block;
                width: 100%;
            }

            table thead {
                display: none;
            }

            table td {
                text-align: right;
                position: relative;
                padding-left: 50%;
                font-size: 14px;
            }

            table td:before {
                content: attr(data-label);
                position: absolute;
                left: 0;
                width: 50%;
                padding-left: 15px;
                font-weight: bold;
                text-align: left;
                color: #34495e;
            }
        }
    </style>
</head>

<body>

    <div class="main-content">

        <h2 style="text-align: center; margin: 30px auto; font-size: 30px; color: #ffffff;">Manage Admins</h2>

        <div class="container">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>NIC</th>
                    <th>Phone</th>
                    <th>Email</th>                    
                    <th>Action</th>
                </tr>

                <!-- Loop over the adminList using JSTL -->
                <c:forEach var="admin" items="${adminList}">
                    <tr>
                        <td>${admin.a_id}</td>
                        <td>${admin.a_name}</td>
                        <td>${admin.a_nic}</td>
                        <td>${admin.a_phone}</td>
                        <td>${admin.a_email}</td>   
                        <td>
                            <div style="display: flex; justify-content: center;">
                                <form method="post" action="<c:url value='/DeleteAdminServlet'/>">
                                    <input type="hidden" name="a_id" value="${admin.a_id}">
                                    <button type="submit" class="delete-button">Delete</button>
                                </form>
                                <form method="post" action="admin/update_admin.jsp">
                                    <input type="hidden" name="a_id" value="${admin.a_id}">
                                    <input type="hidden" name="a_name" value="${admin.a_name}">
                                    <input type="hidden" name="a_nic" value="${admin.a_nic}">
                                    <input type="hidden" name="a_phone" value="${admin.a_phone}">
                                    <input type="hidden" name="a_email" value="${admin.a_email}">
                                    <input type="hidden" name="a_username" value="${admin.a_username}">
                                    <input type="hidden" name="a_password" value="${admin.a_password}">
                                    <button type="submit" class="edit-button">Edit</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</body>

</html>
