<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact Us - Pat Pat Cleaning</title>
        <script>
            function validateForm() {
                // Get form values
                const name = document.getElementById("name").value;
                const email = document.getElementById("email").value;

                // Regular expression to allow only letters (both cases) and spaces
                const namePattern = /^[a-zA-Z\s]+$/; // Letters and spaces only
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

            form input,
            form textarea {
                width: 90%;
                padding: 12px 20px;
                margin: 10px 0;
                border: none;
                border-radius: 5px;
                background-color: #f9f9f9;
                transition: border-color 0.3s, box-shadow 0.3s;
                outline: none;
            }

            form input:focus,
            form textarea:focus {
                border-color: #023D93;
                box-shadow: 0 0 10px rgba(9, 97, 228, 0.3);
            }

            form button {
                padding: 12px 24px;
                background-color: #023D93;
                border: none;
                border-radius: 5px;
                color: #ffffff;
                cursor: pointer;
                font-size: 16px;
                margin-top: 10px;
            }

            form button:hover {
                background-color: #0f1f37;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }

            form {
                max-width: 600px;
                padding: 25px;
                background-color: #e9f5ff;
                border-radius: 10px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            form label {
                font-size: 18px;
                color: #1c2751;
                margin-bottom: 8px;
                display: block;
            }

            h2 {
                font-size: 36px;
                color: #1c2751;
                text-align: left;
                margin-bottom: 30px;
            }

            main {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                align-items: center;
                padding-top: 100px;
                margin: 0 40px;
            }

            .contact-container {
                display: flex;
                flex-direction: row;
                justify-content: space-between;
                gap: 30px;
                width: 100%;
            }

            .contact-form {
                flex: 1;
                margin-bottom: 40px;
            }

            .contact-image {
                flex: 1;
                max-width: 600px;
            }

            .contact-image img {
                width: 100%;
                height: auto;
                border-radius: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
                <a href="user_register_and_login/register.jsp"><button>Register</button></a>
                <a href="profile.jsp"><button class="profile-btn">Profile</button></a>
            </div>
        </header>

        <main>
            <h2>Ask Question</h2>
            <div class="contact-container">
                <div class="contact-form">
                    <form id="contactForm" action="InsertQuestionServlet" method="post" onsubmit="return validateForm()">
                        <label for="name">Your Name:</label>
                        <input type="text" id="name" name="name" required placeholder="Enter your name">

                        <label for="contact">Contact Number:</label>
                        <input type="text" id="contact" name="contact" pattern="[0-9]{10}" required
                            placeholder="Enter your contact number">
d
                        <label for="email">Your Gmail:</label>
                        <input type="text" id="email" name="email" required pattern="[a-z0-9._%+-]+@gmail\.com$"
                            placeholder="Enter your Gmail address">

                        <label for="question">Your Question:</label>
                        <textarea id="question" name="question" rows="4" required
                            placeholder="Enter your question"></textarea>

                        <button type="submit">Submit</button>
                    </form>
                </div>
                <div class="contact-image">
                    <img src="images/contact us.jpg" alt="Contact Us">
                </div>
            </div>
        </main>

        <footer>
            <div class="footer-bottom">
                <h3>PAT PAT CLEANING</h3>
                <div class="social-media-icons">
                    <a href="#"><img src="images/social-media.png"></a>
                    <a href="#"><img src="images/instagram.png"></a>
                    <a href="#"><img src="images/twitter.png"></a>
                    <a href="#"><img src="images/linkedin-logo.png"></a>
                    <a href="#"><img src="images/whatsapp.png"></a>
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