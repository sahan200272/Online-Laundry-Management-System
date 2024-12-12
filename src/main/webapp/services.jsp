<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - Pat Pat Cleaning</title>
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
            padding: 20px;
        }

        .services-section {
            text-align: center;
            padding: 40px;
            background-color: #ffffff;
 
        }

        .services-section h2 {
            font-size: 28px;
            color: #1c2751;
        }

        .services-list {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .service-item {
            width: 30%;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #f1f1f1;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .service-item h3 {
            color: #1c2751;
            font-size: 22px;
        }

        .service-item p {
            font-size: 18px;
            line-height: 1.6;
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
        li{ text-align: left;
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
        <section class="services-section">
            <h2>Our Laundry Services</h2>
            <p><br><br>We offer a wide range of laundry services designed to cater to your unique needs. Whether it's a one-time laundry service <br>or a regular pickup, we've got you covered with our convenient online platform.<br><br><br></p>

            <div class="services-list">
                <div class="service-item">
                    <h3>Pickup & Delivery</h3>
                    <p>Schedule your laundry pickup from the comfort of your home, and we will deliver it back to you once it’s clean and fresh. We offer door-to-door services, saving you time and effort.</p>
                </div>

                <div class="service-item">
                    <h3>Dry Cleaning</h3>
                    <p>We provide expert dry cleaning services for your delicate garments, including suits, dresses, and other items that require special care.</p>
                </div>

                <div class="service-item">
                    <h3>Wash & Fold</h3>
                    <p>Let us take care of your laundry with our wash and fold service. We ensure that your clothes are properly cleaned, folded, and ready to wear.</p>
                </div>

                <div class="service-item">
                    <h3>Stain Removal</h3>
                    <p>Our expert team can handle tough stains, from ink to food spills, to make your clothes look as good as new.</p>
                </div>

                <div class="service-item">
                    <h3>Special Care for Delicates</h3>
                    <p>We take special care of delicate fabrics, including silk, wool, and cashmere, ensuring they are cleaned gently and without damage.</p>
                </div>

                <div class="service-item">
                    <h3>Corporate Laundry</h3>
                    <p>We offer laundry services for businesses and corporate clients, including uniforms, bedding, and more. Contact us for custom packages and pricing.</p>
                </div>
            </div>

            <h3>Frequently Asked Questions</h3>
            <ul>
                <li><strong>How do I schedule a pickup?</strong> <br><br>You can schedule a pickup directly through our website by entering your address and preferred pickup time.<br><br></li>
                <li><strong>What areas do you serve?</strong> <br><br>We currently offer services within Laundry City and surrounding areas. Please check our coverage area for more details.<br><br></li>
                <li><strong>Do you offer express services?</strong> <br><br>Yes, we offer express laundry services for urgent orders, ensuring a quick turnaround.<br><br></li>
                <li><strong>Can I track my order?</strong> <br><br>Yes, you can track the status of your laundry order through your account on our website.<br><br></li>
                <li><strong>Are your services environmentally friendly?</strong> <br><br>Yes, we use eco-friendly detergents and methods to minimize our environmental impact.<br><br></li>
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