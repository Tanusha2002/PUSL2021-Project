<%-- 
    Document   : home2
    Created on : Mar 6, 2024, 7:59:55 AM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
    background: url("img/home.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

.wrapper{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 110vh;
    background: rgba(55, 55, 55, 0.2);
}

.Category{
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 512px;
    height: 420px;
    overflow: hidden;
    z-index: 2;
}

.category-container{
    position: absolute;
    left: 4px;
    width: 500px;
    display: flex;
    flex-direction: column;
    transition: .5s ease-in-out;
    text-align: center;
}

#categories {
    margin-top: 20px;
    text-align: center;
    position: relative;
}

.category-heading {
    font-size: 50px;
    font-weight: bold;
    margin-bottom: 10px;
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    color: white;
}

.category-box {
    display: inline-block;
    width: 350px;
    height: 420px;
    background-color: #f0f0f0;
    margin: 0 20px;
    border-radius: 15px;
    font-size: 20px;
    text-align: center;
    position: relative;
    overflow: hidden;
}

.category-box img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.category-box a {
    position: absolute;
    bottom: 0px;
    left: 0;
    right: 0;
    text-decoration: none;
    color: white;
    font-weight: bold;
    background-color: orange;
    padding: 30px 25px;
    border-radius: 10px 10px 0 0;
    font-size: 50px; /* Adjust the font size according to your preference */
    font-style: italic; /* Make the font style italic */
}


.topic{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 110vh;
    background: rgba(55, 55, 55, 0.2);
}
.top header {
    font-size: 40px; /* Change this value to your desired font size */
    color: white; /* Change color to white */
    text-align: center; /* Align text to the center */
}

</style>
</head>
<body>
    <div class="topic">
    <div class="top">
        <header style="font-size: 40px;">THE BEST <br>CHOICE FOR CONSTRUCTION <br> PROJECTS</header>
    </div>
</div>
<section id="categories">
    <div class="wrapper">
        <h2 class="category-heading">Categories</h2>
        <div class="category-box">
            <img src="img/floor.jpeg" alt="Floor">
            <a href="#floor">Floor</a>
        </div>
        <div class="category-box">
            <img src="img/roof.webp" alt="Roof">
            <a href="#roof">Roof</a>
        </div>
        <div class="category-box">
            <img src="img/wall.jpeg" alt="Wall">
            <a href="#wall">Wall</a>
        </div>
    </div>
</section>
<jsp:include page="navigationbar.jsp" />



</body>
</html>
