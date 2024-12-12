<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	/* Ensure the html and body take up the full height */
html, body {
    height: 100%;
    margin: 0;
    padding: 0;
}

/* Use Flexbox for the body to position the footer at the bottom */
body {
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* Full viewport height */
}

/* Your content will take the remaining height */
.content {
    flex: 1; /* Takes up remaining space, pushing the footer down */
}

/* Footer styles */
footer {
    background-color: #f8f9fa; /* Example background color */
    text-align: center;
    padding: 10px 0;
    width: 100%;
}
	
</style>
</head>
<body>
    <div class="content">
        <!-- Your page content (e.g., the order table) goes here -->
    </div>
    
    <footer>
        <p>PAT PAT CLEANING</p>
        <!-- Other footer content -->
    </footer>
</body>

</html>