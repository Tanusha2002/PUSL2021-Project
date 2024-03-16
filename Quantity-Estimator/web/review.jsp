<%-- 
    Document   : review
    Created on : Mar 16, 2024, 4:42:16 PM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('img/home.jpg'); /* Add your image path here */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    .container {
        max-width: 800px;
        margin: 210px auto 50px; /* Adjusted margin-top */
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.3); /* Transparent white background */
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #fff; /* Text color */
    }
    form {
        text-align: center;
        margin-bottom: 30px;
        background-color: rgba(255, 255, 255, 0.3); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
    }
    input[type="text"], input[type="email"], textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        background-color: rgba(255, 255, 255, 0.5); /* Transparent white background */
    }
    input[type="text"]::placeholder, input[type="email"]::placeholder, textarea::placeholder {
        color: #000; /* Placeholder text color */
    }
    button[type="submit"] {
        padding: 10px 20px;
        background-color: orange; /* Orange background color */
        color: #fff; /* White text color */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold; /* Bold text */
    }
</style>
</head>
<body>

<div class="container">
    <h1>Leave Your Feedback</h1>
    <form id="feedbackForm" action="#" method="post">
        <input type="text" name="name" placeholder="Your Name" required><br>
        <input type="email" name="email" placeholder="Your Email" required><br>
        <textarea name="feedback" rows="5" placeholder="Your Feedback" required></textarea><br>
        <button type="submit">Submit Feedback</button>
    </form>
</div>
<jsp:include page="navigationbar.jsp" />
<script>
const feedbackForm = document.getElementById('feedbackForm');

// Submit feedback form
feedbackForm.addEventListener('submit', (event) => {
    event.preventDefault();
    const formData = new FormData(feedbackForm);
    const name = formData.get('name');
    const email = formData.get('email');
    const feedback = formData.get('feedback');
    console.log(`Name: ${name}, Email: ${email}, Feedback: ${feedback}`);
    // Here you can perform further actions, such as sending the feedback data to a server
});
</script>

</body>
</html>
