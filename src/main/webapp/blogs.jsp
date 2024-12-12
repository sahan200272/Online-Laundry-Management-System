<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog - Pat Pat Cleaning</title>
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
            margin-top: 100px;
            padding: 20px;
        }

        .blog-posts {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .blog-post {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .blog-post h2 {
            color: #1c2751;
            font-size: 28px;
        }

        .blog-post p {
            font-size: 18px;
            line-height: 1.6;
        }

        .author {
            font-size: 16px;
            color: #555;
            margin-top: 10px;
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
        <section class="blog-posts">
            <!-- Blog Post 1 -->
            <div class="blog-post">
                <h2>How to Maintain Your Clothes with Dry Cleaning</h2>
                <p>At Pat Pat Cleaning, we provide expert dry cleaning services. Learn how to properly maintain your clothes with our detailed guide to dry cleaning...</p>
                <p class="author">Posted by: Staff Member | Date: 2024-10-11</p>
            </div>

            <!-- Blog Post 2 -->
            <div class="blog-post">
                <h2>The Benefits of Using Eco-Friendly Laundry Services</h2>
                <p>Eco-friendly laundry services are not only good for the environment but also great for your clothes. In this post, we explain the advantages of using sustainable laundry solutions...</p>
                <p class="author">Posted by: Staff Member | Date: 2024-09-30</p>
            </div>

            <!-- Blog Post 3 -->
            <div class="blog-post">
                <h2>5 Tips for Keeping Your White Clothes Bright</h2>
                <p>White clothes can easily get dull and lose their brightness. We’ve gathered the top five tips for keeping your white clothes fresh and bright...</p>
                <p class="author">Posted by: Staff Member | Date: 2024-09-25</p>
            </div>

            <!-- Blog Post 4 -->
            <div class="blog-post">
                <h2>What to Do When Your Clothes Get a Tough Stain</h2>
                <p>Stains are inevitable, but don’t panic! Here’s what you can do when your clothes get a tough stain and how our professional stain removal services can help...</p>
                <p class="author">Posted by: Staff Member | Date: 2024-09-18</p>
            </div>
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