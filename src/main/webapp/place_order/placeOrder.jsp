<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Blogs</title>
 
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
 
<!-- Material UI Icons CDN -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
 
<!-- Custom Styles -->

<style>
    body {
        font-family: 'Poppins', Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://th.bing.com/th/id/OIP.-Mn3VV8FOH2q-mbpcNkXJAHaEQ?w=1334&h=768&rs=1&pid=ImgDetMain/1920x1080'); /* Replace with your image URL */
        background-size: cover;
        background-position: center;
        color: #333;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
 
    .form-container {
        background-color: white
        ;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        max-width: 800px;
        width: 100%;
    }
 
    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
    }
 
    label {
        color: #333;
        font-weight: bold;
    }
 
    .btn-primary {
        background-color: #008080;
        border-color: #008080;
        padding: 12px;
        font-size: 16px;
        border-radius: 8px;
        width: 100%;
    }
 
    .btn-primary:hover {
        background-color: #005959;
        border-color: #005959;
    }
 
    input, select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 8px;
        border: 2px solid #ccc;
        box-sizing: border-box;
    }
 
    input[type="submit"] {
        cursor: pointer;
        transition: background-color 0.3s;
    }
 
    .form-check-label {
        margin-left: 8px;
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

 <% String useridParam = request.getParameter("username"); %>
 
<div class="form-container">

<h1>Place Order</h1>

<form action="<c:url value ='/PlaceOrderInsertServlet'/>" method="post">

<div class="row">
	<!-- First Set -->
	<div class="col-md-6">
	
		<label for="name">Name:</label><br>
		<input type="text" id="name" name="name" value="" placeholder="Enter your name" required><br>

        <label for="phoneNo">Phone No:</label><br>
		<input type="text" id="phoneNo" name="phoneNo" placeholder="Enter your phone number" pattern="[0-9]{10}" required><br>
 
        <label for="shirts">Shirts (Rs. 10 each):</label><br>
		<input type="text" id="shirts" name="shirts" placeholder="Enter quantity"><br>
 
        <label for="pants">Pants (Rs. 15 each):</label><br>
		<input type="text" id="pants" name="pants" placeholder="Enter quantity"><br>
 
        <label for="jeans">Jeans (Rs. 20 each):</label><br>
		<input type="text" id="jeans" name="jeans" placeholder="Enter quantity"><br>
		
	</div>
 
                <!-- Second Set -->
	<div class="col-md-6">
		<label for="towels">Towels (Rs. 8 each):</label><br>
		<input type="text" id="towels" name="towels" placeholder="Enter quantity"><br>
 
        <label for="mundu">Mundu (Rs. 12 each):</label><br>
		<input type="text" id="mundu" name="mundu" placeholder="Enter quantity"><br>
 
        <label for="bedSheet">Bed Sheets (Rs. 25 each):</label><br>
		<input type="text" id="bedSheet" name="bedSheet" placeholder="Enter quantity"><br>
 
        <label for="shorts">Shorts (Rs. 10 each):</label><br>
		<input type="text" id="shorts" name="shorts" placeholder="Enter quantity"><br>
 
        <div class="form-check">
        
		<input type="checkbox" class="form-check-input" id="washing" name="washing" value="wash">
		
		<label for="washing" class="form-check-label">Washing</label><br>
 
        <input type="checkbox" class="form-check-input" id="ironing" name="ironing" value="iron">
		<label for="ironing" class="form-check-label">Ironing</label><br>
		
		</div>
	</div>
</div>
 
            <!-- Total Amount and Submit Button -->
		<label for="totalAmount">Total Amount (LKR):</label><br>
		<input type="text" id="totalAmount" name="totalAmount" placeholder="Total will be calculated automatically" readonly required><br>
 
        <input type="submit" name="submit" class="btn btn-primary" value="Submit">
        
</form>
</div>
 
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>