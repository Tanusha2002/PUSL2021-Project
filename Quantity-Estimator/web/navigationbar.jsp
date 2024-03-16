<%-- 
    Document   : navigationbar
    Created on : Mar 16, 2024, 4:00:37 PM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    justify-content: space-around;
    width: 100%;
    height: 100px;
    line-height: 100px;
    background: linear-gradient(rgba(39, 39, 39, 0.6), transparent);
    z-index: 100;
}

.nav-logo p {
    color: white;
    font-size: 25px;
    font-weight: 600;
}

.nav-menu ul {
    display: flex;
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
</style>
</head>
<body>
<div class="wrapper"> 
    <nav class="nav">
        <div class="nav-logo">
            <p>BUILDAPPROX  .</p>
        </div>
        <div class="nav-menu" id="navMenu">
            <ul>
                <li><a href="#" class="link active">Home</a></li>
                <li><a href="#" class="link">Blog</a></li>
                <li><a href="review.jsp" class="link">Review</a></li>
                <li><a href="#" class="link">Services</a></li>
                <li><a href="#" class="link">About</a></li>
            </ul>
        </div>
    </nav>
</div>
</body>
</html>


