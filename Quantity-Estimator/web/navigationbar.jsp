<%-- 
    Document   : navigationbar
    Created on : Mar 16, 2024, 4:00:37 PM
    Author     : nalin
--%>
<%@page import="QE.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user =(User) session.getAttribute("loguser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Navigation Bar</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    background: url("http://localhost:8080/Quantity-Estimator/img/home.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

.nav-logo{
    align-items: center;
}

.nav-logo img {
    max-width: 200px; /* Adjust the maximum width as needed */
    height: auto; /* Maintain aspect ratio */
    /*margin-left: 20px; /* Adjust margin as needed */
    padding: 20px;
}

.nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    height: 60px;
    background: linear-gradient(rgba(39, 39, 39, 0.6), transparent);
    z-index: 100;
}

.nav-menu ul {
    display: flex;
    align-items: center;
}

.nav-menu ul li {
    list-style-type: none;
}

.nav-menu ul li .link {
    text-decoration: none;
    font-weight: bold;
    color: #fff;
    padding-bottom: 15px;
    margin: 0 15px; /* Adjust margin as needed */
    font-size: 18px;
}

.link:hover,
.active {
    border-bottom: 2px solid #fff;
}

.logout {
    margin-right: 20px;
}

.logout a {
    color: #000;
    background-color: #fff;
    text-decoration: none;
    font-weight: bold;
    padding: 10px 20px;
    border-radius: 5px;
}

</style>
</head>
<body>
    
    <nav class="nav">
        <div class="nav-logo">
            <img src="http://localhost:8080/Quantity-Estimator/img/Logo.png">
        </div>
        <div class="nav-menu" id="navMenu">
            <ul>
                <li><a href="http://localhost:8080/Quantity-Estimator/home.jsp" class="link active">Home</a></li>
                <li><a href="http://localhost:8080/Quantity-Estimator/home.jsp#categories" class="link">Categories</a></li>
                <li><a href="http://localhost:8080/Quantity-Estimator/review.jsp" class="link">Review</a></li>
                <li><a href="http://localhost:8080/Quantity-Estimator/home.jsp#about" class="link">About</a></li>
                <li><a href="http://localhost:8080/Quantity-Estimator/about.jsp" class="link">Our Team</a></li>
                <% 
                if (user != null && "admin".equals(user.getRole())) { 
                %>
                    <li><a href="http://localhost:8080/Quantity-Estimator/admin/users.jsp" class="link">User</a></li>
                    <li><a href="http://localhost:8080/Quantity-Estimator/admin/products.jsp" class="link">Product</a></li>
                <% 
                } 
                %>
            </ul>
        </div>
        <!-- Moved logout button outside of nav-menu -->
        <div class="logout">
            <a href="logout.jsp">Logout</a>
        </div>
    </nav>


</body>
</html>




