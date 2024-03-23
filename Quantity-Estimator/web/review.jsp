<%-- 
    Document   : review
    Created on : Mar 16, 2024, 4:42:16 PM
    Author     : nalin
--%>

<%@page import="QE.model.User"%>
<% User user =(User) session.getAttribute("loguser");
if (user==null){
response.sendRedirect("loginpg.jsp");
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback Page</title>
<style>
    body {
        font-family: 'Poppins', sans-serif;
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
        font-family: 'Poppins', sans-serif;
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
<jsp:include page="navigationbar.jsp" />
<div class="container">
    <h1>Leave Your Feedback</h1>
    <form id="feedbackForm" action="changeReview.jsp" method="post">
        <input type="hidden" name="id" value="<%= user.getId() %>">
        <h2 type="text" name="name" style="text-align: left; margin-bottom: 2px">
            <%= user.getFname() + " " + user.getLname() %>
        </h2>
        <h3 type="text" name="name" style="text-align: left; margin-bottom: 10px; color: gray">
            <%= "@" + user.getUsername() %>
        </h3>
        <textarea name="review" rows="5" placeholder="Your Feedback" required><% if(user.getReview() != null) out.print(user.getReview()); %></textarea><br>
        <button type="submit">Submit Feedback</button>
    </form>
</div>
</body>
</html>

