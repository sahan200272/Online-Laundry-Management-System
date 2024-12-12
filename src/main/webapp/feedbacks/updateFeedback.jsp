<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Feedback</title>
    
    <script>
    function validateForm() {
        // Get form values
        const name = document.getElementById("name").value;
        const email = document.getElementById("email").value;

        // Regular expression to allow only letters (both cases) and spaces
        const namePattern = /^[a-zA-Z\s]+$/;  // Letters and spaces only
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
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 30px;
        }
        h2 {
            color: #1c2751;
            text-align: center;
            margin-bottom: 30px;
        }
        form {
            display: flex;
            flex-direction: column;
            
        }
        label {
            margin-bottom: 5px;
            color: #1c2751;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        textarea {
            resize: vertical;
            min-height: 100px;
        }
        input[type="submit"] {
            background-color: #1c2751;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2a3b6e;
        }
    </style>
</head>
<body>

<%
	
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String email = request.getParameter("feedbackEmail");
	String fText = request.getParameter("feedbackText");
	String uname = request.getParameter("uname");

%>
    <div class="container">
        <h2>Update Feedback</h2>
        
        <form action="<c:url value='/UpdateFeedbackServlet'/>" method="post">
			
			<input type="hidden" name="id" value="<%=id%>"/>
			
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%=name%>" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%=email%>" required>

            <label for="feedbackText">Feedback:</label>
            <textarea id="feedbackText" name="feedbackText" required><%=fText%></textarea>
            
            <input type="hidden" name="uname" value="<%=uname%>"/>

            <input type="submit" value="Update Feedback"/>
            
        </form>
    </div>
</body>
</html>