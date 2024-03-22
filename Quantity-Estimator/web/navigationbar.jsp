<%-- 
    Document   : navigationbar
    Created on : Mar 16, 2024, 4:00:37 PM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSP Page</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    background: url("img/home.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

.nav {
    position: fixed;
    top: 0;
    display: flex;
    justify-content: center; /* Align links to the center */
    width: 100%;
    height: 100px;
    line-height: 100px;
    background: linear-gradient(rgba(39, 39, 39, 0.6), transparent);
    z-index: 100;
}

.nav-logo img{
    width: 200px; 
    height: auto;
    position: absolute; 
    top: 50%; 
    left: 10%; /* Adjusted position to left */
    transform: translate(-50%, -50%);
}

.nav-menu ul {
    display: flex;
    align-items: center; /* Center items vertically */
}

.nav-menu ul li {
    list-style-type: none;
}

.nav-menu ul li .link {
    text-decoration: none;
    font-weight: bold;
    color: #fff;
    padding-bottom: 15px;
    margin: 0 25px;
    font-size: 18px;
}

.link:hover,
.active {
    border-bottom: 2px solid #fff;
}

/* Added styles for logout button */
.logout {
    margin-right: 25px; /* Adjust margin to space the logout button from other links */
}


.logout a {
    color: #000; /* Text color of logout button */
    background-color: #fff; /* Background color of logout button */
    text-decoration: none;
    font-weight: bold;
    padding: 10px 20px; /* Adjust padding as needed */
    border-radius: 5px; /* Add rounded corners to button */
}

</style>
</head>
<body>
<div class="wrapper"> 
    <nav class="nav">
        <div class="nav-logo">
            <img src="img/Logo.png">
        </div>
        <div class="nav-menu" id="navMenu">
            <ul>
                <li><a href="home.jsp" class="link active">Home</a></li>
                <li><a href="#categories" class="link">Categories</a></li>
                <li><a href="review.jsp" class="link">Review</a></li>
                <li><a href="home.jsp#about" class="link">About</a></li>
                <li><a href="about.jsp" class="link">Our Team</a></li>
                <!-- Added logout button -->
               
                <li class="logout"><a href="logout.jsp">Logout</a></li>
                
            </ul>
        </div>
    </nav>
</div>
</body>
</html>




