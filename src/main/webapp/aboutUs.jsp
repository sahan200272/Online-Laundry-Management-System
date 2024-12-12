<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Pat Pat Cleaning</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
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
                    width: 100%;
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
        h1 {
            margin: 0;
            font-size: 36px;
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            margin-top: 80px;
            padding: 20px;
        }

        .about-section {
            text-align: center;
        }

        .about-section h2 {
            font-size: 28px;
            color: #1c2751;
        }

        .about-section p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .mission-section, .vision-section, .values-section {
            margin-top: 40px;
        }

        h3 {
            color: #1c2751;
            font-size: 24px;
            margin-bottom: 10px;
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

            <form action="SelectUserDetilsServlet" method="post">
                <a href="profile.jsp"><button class="profile-btn" type="submit">Profile</button></a>
            </form>
        </div>

        <div id="dateTime" class="date-time"></div>
    </header>

    <div class="container">
        <section class="about-section">
            <h2>Who We Are</h2>
            <p><br>Pat Pat Cleaning is a leading online laundry management system, dedicated to providing high-quality and convenient laundry services. Our goal is to make laundry easier, faster, and more efficient for everyone. With a simple online interface, you can schedule pickups, track orders, and receive your clean laundry at your doorstep.</p>
        </section>

        <section class="mission-section">
            <h3>Our Mission</h3>
            <p><br>At Pat Pat Cleaning, our mission is to revolutionize the laundry industry by delivering exceptional laundry services through technology-driven solutions. We aim to save our customers' valuable time while ensuring their laundry is handled with the utmost care and professionalism.</p>
        </section>

        <section class="vision-section">
            <h3>Our Vision</h3>
            <p><br>Our vision is to be the go-to platform for all laundry needs, offering convenience, reliability, and quality service at affordable prices. We envision a future where laundry becomes a stress-free task for busy individuals, families, and businesses alike.</p>
        </section>

        <section class="values-section">
            <h3>Our Core Values<br></h3>
            <ul>
                <li><strong>Customer First:</strong> We prioritize our customers' needs and work tirelessly to meet and exceed their expectations.<br><br></li>
                <li><strong>Reliability:</strong> We offer dependable laundry services, ensuring that your clothes are picked up, cleaned, and delivered on time.<br><br></li>
                <li><strong>Quality:</strong> We take pride in delivering high-quality laundry results with attention to every detail.<br><br></li>
                <li><strong>Innovation:</strong> We leverage technology to enhance the laundry experience and simplify the process for our users.<br><br></li>
                <li><strong>Environmentally Conscious:</strong> We use eco-friendly detergents and methods to reduce our impact on the environment.<br><br></li>
            </ul>
        </section>
    </div>

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
                <a href="#">Terms & Conditions</a> |
                <a href="#">Contact Us</a>
            </div>
            <p>© 2024 Online Laundry Management System. All rights reserved.</p>
        </div>
    </footer>

</body>
</html>