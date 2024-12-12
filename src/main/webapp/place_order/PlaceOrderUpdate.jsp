<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Blog</title>
<style>
        body {
            font-family: 'Verdana', sans-serif;
            background-color: #2AD8FF;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 450px;
            transition: transform 0.2s ease-in-out;
        }
        .form-container:hover {
            transform: scale(1.05);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            color: #333;
            font-weight: bold;
        }
        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #008080;
            color: #ffffff;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #005959;
        }
        input[type="checkbox"] {
            margin: 5px;
        }
</style>
<script>
    function calculateTotal() {
        let shirts = parseInt(document.querySelector('input[name="shirts"]').value) || 0;
        let pants = parseInt(document.querySelector('input[name="pants"]').value) || 0;
        let jeans = parseInt(document.querySelector('input[name="jeans"]').value) || 0;
        let towels = parseInt(document.querySelector('input[name="towels"]').value) || 0;
        let mundu = parseInt(document.querySelector('input[name="mundu"]').value) || 0;
        let bedSheet = parseInt(document.querySelector('input[name="bedSheet"]').value) || 0;
        let shorts = parseInt(document.querySelector('input[name="shorts"]').value) || 0;
 
        let totalAmount = (shirts * 10) + (pants * 15) + (jeans * 20) + (towels * 8) + (mundu * 12) + (bedSheet * 25) + (shorts * 10);
 
        document.getElementById("totalAmount").value = "Rs. " + totalAmount.toLocaleString("en-US");
    }
 
    function addEventListeners() {
        const inputs = document.querySelectorAll('input[type="text"]');
        inputs.forEach(input => {
            input.addEventListener('input', calculateTotal);
        });
    }
 
    window.onload = addEventListeners;
</script>
</head>
<body>

 
<%
    int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String phoneNo = request.getParameter("phoneNo");
	String shirst = request.getParameter("shirts");
	String pants = request.getParameter("pants");
	
%>
 
<div class="form-container">
<h1>Update Blog</h1>

<form action="<c:url value='/PlaceOrderUpdateServlet'/>" method="post">

    <label for="id">ID:</label>
    <input type="text" id="id" name="id" value="<%= Integer.parseInt(request.getParameter("id")) %>" readonly><br><br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>"><br><br>

    <label for="phoneNo">Phone No:</label>
    <input type="text" id="phoneNo" name="phoneNo" pattern="[0-9]{10}" value="<%= request.getParameter("phoneNo") %>"><br><br>

    <label for="shirts">Shirts:</label>
    <input type="number" id="shirts" name="shirts" value="<%= request.getParameter("shirts") %>"><br><br>

    <label for="pants">Pants:</label>
    <input type="number" id="pants" name="pants" value="<%= request.getParameter("pants") %>"><br><br>

    <label for="jeans">Jeans:</label>
    <input type="number" id="jeans" name="jeans" value="<%= request.getParameter("jeans") %>"><br><br>

    <label for="towels">Towels:</label>
    <input type="number" id="towels" name="towels" value="<%= request.getParameter("towels") %>"><br><br>

    <label for="mundu">Mundu:</label>
    <input type="number" id="mundu" name="mundu" value="<%= request.getParameter("mundu") %>"><br><br>

    <label for="bedSheet">Bed Sheet:</label>
    <input type="number" id="bedSheet" name="bedSheet" value="<%= request.getParameter("bedSheet") %>"><br><br>

    <label for="shorts">Shorts:</label>
    <input type="number" id="shorts" name="shorts" value="<%= request.getParameter("shorts") %>"><br><br>

    <label for="washing">Washing:</label>
    <input type="number" id="washing" name="washing" value="<%= request.getParameter("washing") %>"><br><br>

    <label for="ironing">Ironing:</label>
    <input type="number" id="ironing" name="ironing" value="<%= request.getParameter("ironing") %>"><br><br>

    <label for="totalAmount">Total Amount (LKR):</label>
    <input type="text" id="totalAmount" name="totalAmount" value="<%= request.getParameter("totalAmount") %>"><br><br>

    <label for="uname">Username:</label>
    <input type="text" id="uname" name="uname" value="<%= request.getParameter("uname") %>" readonly><br><br>

    <input type="submit" name="submit" value="Update Order">
    
</form>
</div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>