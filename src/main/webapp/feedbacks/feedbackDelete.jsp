<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #4CAF50;
            text-align: center;
        }

        a {
            display: inline-block;
            alling: center;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #1c2751;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }

        a:hover {
            background-color: #45a049;
        }

        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Feedback Deleted Successfully</h2>
        
        <form action="<c:url value='/SelectFeedbackServlet'/>" method="post">
        
        	<button type="submit">Back to Feedback List</button>
        	
        </form>
        
    </div>
</body>
</html>
