<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Ask Questions, Give Feedback, and Place Order</title>
            
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
                    margin: 0;
                    padding: 0;
                    background-color: #fff;
                    /* White background for body */
                    color: #000000;
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


                .date-time {
                    font-size: 16px;
                    color: #000000;
                }

                main {
                    padding: 20px;
                    margin-top: 30px;
                    /* Adjusted to accommodate fixed header */
                }

                img {
                    width: 100%;
                    margin-left: 0;
                    margin-right: 0;
                }


                header form button {

                    background-color: #ffa500;
                    /* Orange background color */
                    color: #ffffff;
                    /* White text */
                    border: none;
                    padding: 10px 20px;
                    font-size: 16px;
                    border-radius: 5px;
                    cursor: pointer;
                    transition: background-color 0.3s ease, transform 0.3s ease;

                }

                /* Hover effect for profile button */
                header form button:hover {

                    background-color: #ff8c00;
                    /* Darker orange on hover */
                    transform: scale(1.05);
                    /* Slight enlargement on hover */
                }





                /* Responsive styles */
                @media (max-width: 768px) {
                    .inline-sections {
                        flex-direction: column;
                    }
                }

                .welcome-section {
                    display: flex;
                    justify-content: center;
                    /* Centers the title horizontally */
                    align-items: center;
                    /* Centers the title vertically */
                    height: 20vh;
                    /* Full viewport height */
                    background-color: #023d93;
                    margin: 0 0;
                }

                .welcome-title {
                    font-size: 48px;
                    /* Big title size */
                    color: #ffffff;
                    /* Dark text color */
                    text-align: center;
                    /* Center align the text */
                    font-family: 'Inter', sans-serif;
                    /* Font family */
                    margin: 0;
                    /* Remove default margin */
                }

                .support-section {


                    justify-content: center;
                    /* Centers the title horizontally */
                    align-items: center;
                    /* Centers the title vertically */

                    margin: 0 0;
                }

                .support-title {
                    font-size: 40px;
                    /* Big title size */
                    color: #1b1b1b;
                    /* Dark text color */
                    text-align: center;
                    /* Center align the text */
                    font-family: 'Inter', sans-serif;
                    /* Font family */
                    margin: 0;
                    /* Remove default margin */
                }

                .support-titleh3 {

                    font-size: 19px;
                    text-align: center;
                    color: #6d6d6d;
                    font-family: 'Inter', sans-serif;
                    margin: 0, 0;

                }

                .why-section {


                    justify-content: center;
                    /* Centers the title horizontally */
                    align-items: center;
                    /* Centers the title vertically */
                    height: 20vh;
                    /* Full viewport height */
                    margin: 0 0;
                }

                .why-title {
                    font-size: 40px;
                    /* Big title size */
                    color: #1b1b1b;
                    /* Dark text color */
                    text-align: center;
                    /* Center align the text */
                    font-family: 'Inter', sans-serif;
                    /* Font family */
                    margin: 0;
                    /* Remove default margin */
                }

                .why-titleh3 {

                    font-size: 19px;
                    text-align: center;
                    color: #6d6d6d;
                    font-family: 'Inter', sans-serif;
                    margin: 0;

                }

                /* ishara */
                .image-text-section {
                    display: flex;
                    flex-direction: row;
                    align-items: center;
                    padding: 20px;
                    gap: 20px;
                    max-width: 1200px;
                    margin: 120px auto;
                }

                .image-container img {
                    max-width: 100%;
                    height: auto;
                    border-radius: 8px;
                }

                .text-container {
                    flex: 1;
                    font-family: 'Inter', sans-serif;
                }

                .text-container h2 {
                    font-size: 40px;
                    margin-bottom: 16px;
                    color: #1e1e1e;
                }

                .text-container h3 {
                    font-size: 25px;
                    margin-bottom: 16px;
                    color: #2b2a2a;
                }

                .text-container p {
                    font-size: 20px;
                    color: #757575;
                    line-height: 1.5;
                }

                /* Responsive Design for Smaller Screens */
                @media (max-width: 768px) {
                    .image-text-section {
                        flex-direction: column;
                        text-align: center;
                    }

                    .text-container {
                        padding-top: 20px;
                    }
                }

                /* ishara */
                .image-text-section {
                    display: flex;
                    flex-direction: row;
                    align-items: center;
                    padding: 20px;
                    gap: 20px;
                    max-width: 1200px;
                    margin: 120px auto;
                }

                .text-container {
                    flex: 1;
                    font-family: 'Inter', sans-serif;
                }

                .text-container h2 {
                    font-size: 40px;
                    margin-bottom: 20px;
                    color: #1e1e1e;
                }

                .text-container p {
                    font-size: 16px;
                    color: #757575;
                    line-height: 1.5;
                }

                .image-container img {
                    max-width: 100%;
                    height: auto;
                    border-radius: 8px;
                }

                /* Responsive Design for Smaller Screens */
                @media (max-width: 768px) {
                    .image-text-section {
                        flex-direction: column;
                        text-align: center;
                    }

                    .text-container {
                        padding-bottom: 20px;
                        /* Adds space below the text on mobile */
                    }
                }

                /* ishara */



                .image-container {
                    flex: 1;
                    /* Allow image to take available space */
                    display: flex;
                    /* Use flexbox for alignment */
                    justify-content: center;
                    /* Center the image horizontally */
                    align-items: center;
                    /* Center the image vertically */
                }

                .side-image {
                    max-width: 20%;
                    /* Responsive image */
                    height: auto;
                    /* Maintain aspect ratio */
                    border-radius: 8px;
                    /* Rounded corners for image */
                }


                /* ishara */

                .image-gallery {
                    padding: 20px;
                    /* Add padding to the section */
                    text-align: center;
                    /* Center the title */
                }

                .grid-container {
                    display: grid;
                    /* Use CSS Grid */
                    grid-template-columns: repeat(3, 1fr);
                    /* 3 columns of equal width */
                    gap: 15px;
                    /* Space between images */
                }

                .gallery-image {
                    width: 100%;
                    /* Make images responsive */
                    height: auto;
                    /* Maintain aspect ratio */
                    border-radius: 8px;
                    /* Optional: rounded corners for images */
                }


                /* ishara */

                .feedback-section {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    padding: 20px;
                    gap: 20px;
                }

                .form-container {
                    flex: 1;
                }

                .info-container {
                    flex: 1;
                }

                .form-row {
                    display: flex;
                    justify-content: space-between;
                }

                .form-group {
                    display: flex;
                    flex-direction: column;
                    margin-bottom: 15px;
                    width: 48%;
                }

                label {
                    font-weight: bold;
                    margin-bottom: 5px;
                }

                input,
                textarea {
                    padding: 10px;
                    border: 1px solid #ccc;
                    border-radius: 5px;
                    background-color: #e6e6e6;
                    font-size: 1rem;
                }

                button {
                    background-color: #1c2751;
                    color: white;
                    border: none;
                    padding: 10px 20px;
                    cursor: pointer;
                    border-radius: 5px;
                    font-size: 1rem;
                }

                button:hover {
                    background-color: #0056b3;
                }

                .info-container h2 {
                    font-size: 1.8rem;
                    margin-bottom: 15px;
                }

                .info-container p {
                    font-size: 1.2rem;
                    line-height: 1.5;
                }

                @media (max-width: 768px) {
                    .contact-section {
                        flex-direction: column;
                    }

                    .form-row {
                        flex-direction: column;
                    }

                    .form-group {
                        width: 100%;
                    }
                }

                .container {
                    margin-left: 0px;
                    margin-right: 0px;
                    margin-top: 80px;
                    padding: 40px;
                }

                h2 {
                    color: #1c2751;
                    text-align: center;
                    margin-bottom: 20px;
                }

                table {
                    width: 100%;
                    border-collapse: separate;
                    border-spacing: 0;
                }

                th,
                td {
                    padding: 12px 15px;
                    text-align: left;
                    border-bottom: 1px solid #e0e0e0;
                }

                th {
                    background-color: #1c2751;
                    color: #ffffff;
                    font-weight: bold;
                    text-transform: uppercase;
                    letter-spacing: 0.5px;
                }

                tr:nth-child(even) {
                    background-color: #f8f9fa;
                }

                tr:hover {
                    background-color: #e9ecef;
                }

                .actions {
                    white-space: nowrap;
                }

                .btn {
                    display: inline-block;
                    padding: 8px 12px;
                    margin: 2px;
                    border-radius: 4px;
                    text-decoration: none;
                    font-weight: bold;
                    text-align: center;
                    transition: all 0.3s ease;
                    cursor: pointer;
                }

                .btn-edit {
                    background-color: #1c2751;
                    color: white;
                }

                .btn-delete {
                    background-color: #dc3545;
                    color: white;
                }

                .btn:hover {
                    opacity: 0.8;
                    transform: translateY(-2px);
                }

                /* ishara */
                .card-section {
                    background-color: #023d93;
                    /* Background color for the section */
                    padding: 20px;
                    /* Add padding inside the section */
                    margin-top: 40px;
                    /* Space above the section */
                }

                .section-title {
                    text-align: center;
                    /* Center the section title */
                    margin-bottom: 30px;
                    /* Space below the title */
                    font-size: 35px;
                    /* Increase title font size */
                    color: #ffffff;
                    /* Change title color */
                }

                .card-container {
                    display: flex;
                    /* Use flexbox for horizontal layout */
                    justify-content: space-between;
                    /* Space cards evenly */
                    flex-wrap: wrap;
                    /* Allow wrapping for responsiveness */
                }

                .card {
                    flex: 1;
                    /* Allow each card to grow equally */
                    margin: 10px;
                    /* Add space between cards */
                    border-radius: 8px;
                    /* Rounded corners */
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    /* Add a shadow for aesthetics */
                    text-align: left;
                    /* Center align text */
                    max-width: calc(18% - 20px);
                    /* Decrease max width of each card to allow 5 in a row */
                    padding: 10px;
                    /* Add padding inside cards */
                }

                .card img {
                    width: 100%;
                    /* Make image full width of the card */
                    border-top-left-radius: 8px;
                    /* Round the top left corner */
                    border-top-right-radius: 8px;
                    /* Round the top right corner */
                }

                .card h3 {
                    margin: 10px 0;
                    /* Margin for card title */
                    text-align: center;
                    color: #ffffff;
                }

                .card p {
                    margin: 10px 0 0;
                    /* Margin for card description */
                    color: #ffffff;
                }

                /* ishara */

                .q1-section {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: center;
                    min-height: 30vh;
                    padding: 20px;
                }

                .q1-title {
                    margin-bottom: 40px;
                    font-size: 25px;
                    text-align: center;
                    color: #333;
                }

                .q1-form {
                    padding: 30px;
                    border-radius: 8px;
                    width: 100%;
                    max-width: 500px;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                }

                .q1-field {
                    display: flex;
                    flex-direction: column;
                    margin-bottom: 50px;
                }

                .q1-label {
                    font-weight: bold;
                    margin-bottom: 15px;
                    color: #333;
                }

                .q1-input {
                    padding: 20px;
                    border: 1px solid #ccc;
                    border-radius: 5px;
                    font-size: 1rem;
                    width: 100%;
                    box-sizing: border-box;
                }

                .q1-textarea {
                    resize: vertical;
                }

                .q1-button {
                    background-color: #0078d0;
                    border: 0;
                    border-radius: 56px;
                    color: #fff;
                    cursor: pointer;
                    display: inline-block;
                    font-family: system-ui, -apple-system, system-ui, "Segoe UI", Roboto, Ubuntu, "Helvetica Neue", sans-serif;
                    font-size: 18px;
                    font-weight: 600;
                    outline: 0;
                    padding: 16px 21px;
                    position: relative;
                    text-align: center;
                    text-decoration: none;
                    transition: all .3s;
                    user-select: none;
                    -webkit-user-select: none;
                    touch-action: manipulation;
                }

                .q1-button:before {
                    background-color: initial;
                    background-image: linear-gradient(#fff 0, rgba(255, 255, 255, 0) 100%);
                    border-radius: 125px;
                    content: "";
                    height: 50%;
                    left: 4%;
                    opacity: .5;
                    position: absolute;
                    top: 0;
                    transition: all .3s;
                    width: 92%;
                }

                .q1-button:hover {
                    box-shadow: rgba(255, 255, 255, .2) 0 3px 15px inset, rgba(0, 0, 0, .1) 0 3px 5px, rgba(0, 0, 0, .1) 0 10px 13px;
                    transform: scale(1.05);
                }

                /* ishara */


                .hiw.card-section {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    text-align: center;
                    padding: 40px 0;
                    color: black;
                    margin-bottom: 40px;
                }

                .hiw.section-title {
                    font-size: 32px;
                    font-family: 'Inter', sans-serif;
                    margin-bottom: 30px;
                }

                .hiw.card-container {
                    display: flex;
                    justify-content: center;
                    flex-wrap: wrap;
                    gap: 20px;
                }

                .hiw.card {
                    width: 200px;
                    /* Decreased card size */
                    padding: 20px;
                    border: 1px solid #ddd;
                    border-radius: 8px;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    background-color: #f9f9f9;
                    transition: transform 0.3s;
                }

                .hiw.card img {
                    width: 100%;
                    height: auto;
                    border-radius: 8px;
                    margin-bottom: 15px;
                }

                .hiw.card h3 {
                    font-size: 18px;
                    font-family: 'Inter', sans-serif;
                    margin-bottom: 10px;
                    color: #1e1e1e;
                }

                .hiw.card p {
                    font-size: 14px;
                    font-family: 'Inter', sans-serif;
                    line-height: 1.5;
                    color: #2b2a2a;
                }

                .hiw.card:hover {
                    transform: translateY(-5px);
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

            <main>
                <img src="images/pat.png" alt="background image">
                <!-- ishara -->
                <section class="welcome-section">
                    <h1 class="welcome-title">Welcome to Pat Pat Cleaning</h1>
                </section>
                <!-- ishara -->
                <section class="image-text-section">
                    <div class="image-container">
                        <img src="images/1.png" alt="Sample Image" />
                    </div>

                    <div class="text-container">
                        <h2>A commercial laundry service you can trust</h2>
                        <p>
                            Fast reliable laundry solutions customized for your business
                        </p>
                    </div>
                </section>

                <section class="hiw card-section">
                    <h1 class="hiw section-title">At Your Service</h1> <!-- Section Title -->
                    <div class="hiw card-container">
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/4.png" alt="Image 1">
                            <h3 class="hiw">Dry Clean</h3>
                            <p class="hiw">Delicate fabrics that can’t withstand detergent? Tired of rushing around and
                                re-arranging
                                your
                                schedule trying to make it in time to drop off or pick up your dry cleaning? Wouldn't it
                                be nice to have
                                freshly pressed suits delivered right to your door, right when you need them? With
                                Washapp, now you can!
                            </p>
                        </div>
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/2.png" alt="Image 2">
                            <h3 class="hiw">Only Press</h3>
                            <p class="hiw">Yes, you heard it right!! We do pressing for you. Have a stack of clothes
                                that don’t need
                                washing but could use ironing? Send them to us and get back freshly steam ironed
                                ready-to-wear outfits
                                and
                                say good bye to wrinkles.</p>
                        </div>
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/3.png" alt="Image 3">
                            <h3 class="hiw">Wash + Press</h3>
                            <p class="hiw">A wardrobe full of fresh, clean clothes which are neatly pressed” Sounds like
                                an impossible
                                dream? We are here to make it possible! Don't waste another beautiful Weekend for
                                washing, drying and
                                folding laundry. Let washapp to handle the dirty work while you spend your time enjoying
                                life</p>
                        </div>
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/1.png" alt="Image 4">
                            <h3 class="hiw">Only Wash</h3>
                            <p class="hiw">We bring you a bag, you fill it with clothes. We then send your dirty clothes
                                for a quick
                                spin,
                                tumble dry and return them to you crisp clean. This service is charged per kilo, so
                                don’t hesitate to
                                send
                                us a truckload of work! But please remember, items that require extra care including
                                toweling and
                                bedding
                                should be selected separately.</p>
                        </div>

                        <div class="hiw card">

                            <img class="hiw" src="images/icon/5.png" alt="Image 4">
                            <h3 class="hiw">Express (24 Hour)</h3>
                            <p class="hiw">Bestie’s wedding tomorrow and your suit still waiting for its turn for dry
                                cleaning? All
                                set
                                for tomorrow’s foreign tour but just discovered that your most comfortable outfit needs
                                a quick spin?
                                This
                                service is just for you. Simply select “Express Service” and your stuff will be
                                delivered to your door
                                step
                                within 24 hours from the pick-up. (50% extra charge of the Standard prices applicable)
                            </p>
                        </div>
                    </div>
                </section>


                <!-- ishara -->
                <section class="image-text-section">
                    <div class="text-container">
                        <h2>We Got Your Back</h2>
                        <p>
                            We have you covered, whether you operate an Air bnb, spa, a fitness centre, a restaurant, or
                            a hotel. Most
                            convenient laundry service in Canada that picks up and delivers for employees at both their
                            homes and
                            places
                            of work is SudDrop Commercial.
                        </p>
                        <h3>Be Unique</h3>
                        <p>Our services enable time-saving for workers. Attract in new talent and keep hold of existing
                            employees,
                            make
                            laundry benefits a bonus. </p>
                    </div>
                    <div class="image-container">
                        <img src="images/13.png" alt="Sample Image" />
                    </div>
                </section>


                <section class="support-section">
                    <h1 class="support-title">Customer support for any of<br> your laundry needs.</h1>
                    <br>
                    <h3 class="support-titleh3">Laundry delivery FAQ. We’re here to help make laundry day easy!</h3>
                </section>
                <!-- ishara -->

                <section class="q1-section">
                    <a href="contactUs.jsp"><button type="submit" class="q1-button">Ask a Question</button></a>
                </section>

                <section class="image-text-section">
                    <div class="image-container">
                        <img src="images/7.png" alt="Sample Image" />
                    </div>

                    <div class="text-container">
                        <h2>Wash & Fold</h2>
                        <p>
                            Wash & Fold is the perfect service to use if you want to avoid doing laundry and save your
                            time and your
                            sanity<br><br>
                            SudDrop will pickup, clean, and deliver your laundry right back to your door. Your clothes
                            get their own
                            machine, are cleaned according to your preferences, and delivered neatly folded – we even
                            pair your
                            socks.<br><br>
                            Let SudDrop do your laundry for you so you can focus on more important things.
                        </p>
                    </div>
                </section>

                <section class="hiw card-section">
                    <h1 class="hiw section-title">How it works</h1> <!-- Section Title -->
                    <div class="hiw card-container">
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/100.png" alt="Image 1">
                            <h3 class="hiw">We inspect your clothes and check your pockets</h3>
                            <p class="hiw">We do “pocket inspections” for you so nothing ends up in the wash that
                                shouldn’t. All
                                pockets
                                and clothes are inspected before being washed.</p>
                        </div>
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/103.png" alt="Image 2">
                            <h3 class="hiw">We clean your items with extra care</h3>
                            <p class="hiw">Your lights and darks are separated and all your clothes are washed using
                                cold water to
                                preserve color (and save energy).</p>
                        </div>
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/102.png" alt="Image 3">
                            <h3 class="hiw">We wash your loads according to your choices</h3>
                            <p class="hiw">Need hypoallergenic detergent? Want fabric softener? Just select the laundry
                                preferences
                                that
                                are right for you.</p>
                        </div>
                        <div class="hiw card">

                            <img class="hiw" src="images/icon/101.png" alt="Image 4">
                            <h3 class="hiw">We fold everything so that you don’t have to</h3>
                            <p class="hiw">Your clothes are crisply folded, and your socks are paired, ready to be worn
                                or put away
                                when
                                we deliver your clothes to your door!</p>
                        </div>

                    </div>
                </section>


                <section class="why-section">
                    <h1 class="why-title">Why PAT PAT </h1>
                    <br>
                    <h3 class="why-titleh3">There are lots of apps out there, but not many that will do your laundry for
                        you. <br>
                        That’s where washapp comes in. Now this is what we call the age of convenience.</h3>
                </section>

                <!-- ishara -->
                <section class="image-gallery">

                    <div class="grid-container">
                        <img src="images/11.png" alt="Image 1" class="gallery-image">
                        <img src="images/10.png" alt="Image 2" class="gallery-image">
                        <img src="images/8.png" alt="Image 3" class="gallery-image">
                        <img src="images/6.png" alt="Image 4" class="gallery-image">
                        <img src="images/4.png" alt="Image 5" class="gallery-image">
                        <img src="images/3.png" alt="Image 6" class="gallery-image">
                    </div>
                </section>


                <section class="image-text-section">
                    <div class="image-container">
                        <img src="images/15.png" alt="Sample Image" />
                    </div>

                    <div class="text-container">
                        <h2>Delivery</h2>
                        <p>
                            All pickups are between 4pm and 7pm. The day of, we’ll text you a valet tracking
                            link.<br><br>
                            Our Valet will pick up and deliver your order to your doorstep, building reception, or
                            another place of
                            your
                            choosing.
                        </p>
                    </div>
                </section>
                <!-- ishara -->

                <section class="why-section">
                    <h1 class="why-title">Share Your Opinions About Us </h1>
                    <br>
                    <h3 class="why-titleh3">We all need people who will give us feedback. <br> That’s how we improve
                    </h3>
                </section>

                <section class="q1-section">

                    <h2 class="q1-title">Submit feedback</h2>
                    <form class="q1-form" action="SubmitFeedbackServlet" method="post" onsubmit="return validateForm()">
					    <div class="q1-field">
					        <label for="name" class="q1-label">Name</label>
					        <input type="text" id="name" name="name" class="q1-input" required>
					    </div>
					
					    <div class="q1-field">
					        <label for="email" class="q1-label">E-mail</label>
					        <input type="text" id="email" name="email" class="q1-input" required>
					    </div>
					
					    <div class="q1-field">
					        <label for="feedback" class="q1-label">Your Feedback</label>
					        <textarea id="feedback" name="feedback" rows="4" class="q1-input q1-textarea" required></textarea>
					    </div>
					
					    <button type="submit" class="q1-button">Submit</button>
					</form>

                </section>

                <div class="container">
                    <h2>Customer Feedback</h2>
                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Feedback</th>

                        </tr>

                        <c:forEach var="feedback" items="${feedbackList}">
                            <tr>
                                <td>${feedback.name}</td>
                                <td>${feedback.feedbackText}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
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
                        <a href="#">Terms & Conditions</a> |
                        <a href="#">Contact Us</a>
                    </div>
                    <p>© 2024 Online Laundry Management System. All rights reserved.</p>
                </div>
            </footer>

        </body>

        </html>