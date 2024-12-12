<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pat Pat Cleaning</title>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ffffff;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 2px 5px rgba(2, 61, 147, 0.5);
            position: fixed;
            width: 98%;
            top: 0;
            color: #023D93;
            font-family: 'Arial', sans-serif;
            z-index: 1000;
        }

        img{
        	width: 100%;
        	
        }

        main {
            flex-grow: 1;
            padding: 80px 20px 20px;
            text-align: center;
        }

        footer {
    background-color: #f8f8f8;
    color: #333;
    font-family: Arial, sans-serif;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 2px 5px rgba(2, 61, 147, 0.5);
}

.footer-container {
    display: flex;
    justify-content: space-between;
    padding-bottom: 40px;
}


.footer-bottom {
    text-align: center;
    padding-top: 20px;
    border-top: 1px solid #e0e0e0;
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
}

.social-media-icons a {
    margin: 0 10px;
    font-size: 18px; /* Reduce font size */
    color: #023D93;
}

.social-media-icons img {
    width: 24px; /* Set width for the image icons */
    height: 24px; /* Set height for the image icons */
    vertical-align: middle; /* Align the image icons with text */
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

        .auth-buttons {
            display: flex;
            gap: 10px;
        }

        .auth-buttons a button {
            background-color: #008CBA;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }

        .auth-buttons a button:hover {
            background-color: #007bb5;
        }

        .auth-buttons .profile-btn {
            background-color: #4CAF50;
        }

        .auth-buttons .profile-btn:hover {
            background-color: #45a049;
        }

        .date-time {
            font-size: 16px;
            color: #000000;
        }

        .admin {
            background-color: #023D93;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }

        .admin:hover {
            background-color: #004080;
        }
    </style>
    <script>
        function updateTime() {
            const now = new Date();
            const dateTime = now.toLocaleString();
            document.getElementById('dateTime').innerText = dateTime;
        }
        setInterval(updateTime, 1000);
    </script>
</head>

<body onload="updateTime()">
    <header>
        <div class="logo">
            <img src="<%= request.getContextPath() %>/images/logo.png" alt="Pat Pat Cleaning Logo">
        </div>
        <nav>
            <ul>
                <li><a href="<%= request.getContextPath() %>/loginSuccess.jsp">Home</a></li>
                <li><a href="aboutUs.jsp">About Us</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="blogs.jsp">Blogs</a></li>
            </ul>
        </nav>
        <div class="auth-buttons">
            <a href="user_register_and_login/register.jsp"><button>Register</button></a>
            <a href="user_register_and_login/login.jsp"><button class="profile-btn">Login</button></a>
        </div>
        <div id="dateTime" class="date-time"></div>
    </header>

    <main>
        <img alt="background image" src="images/background image.png">
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
            <a href="admin/login.jsp">Admin Login</a> 
        </div>
        <p>© 2024 Online Laundry Management System. All rights reserved.</p>
    </div>
</footer>

</body>

</html>