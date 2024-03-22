<%-- 
    Document   : home
    Created on : Mar 16, 2024, 3:55:17 PM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
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

.category-box span {
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

.topic {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 10vh; /* Adjust this value to your preference */
    background: rgba(55, 55, 55, 0.2);
}
.top {
    position: relative;
    margin-top: -800px; /* Adjust this value as needed */
}

.top header {
    font-size: 40px; /* Change this value to your desired font size */
    color: white; /* Change color to white */
    text-align: center;/* Align text to the center */
}
.about{
                width: 100%;
                padding: 78px 0px;
                background-color: #ffb50b;
            }
            .about img{
                height: auto;
                width: 420px;
            }
            .about-text{
                width: 550px;
            }
            .main{
                width: 1130px;
                max-width: 95%;
                margin: 0 auto;
                display: flex;
                align-items: center;
                justify-content: space-around;
            }
            .about-text h1{
                color: #111;
                font-size: 50px;
                text-transform: capitalize;
                margin-bottom: 20px;
            }
            .about-text h5{
                color: white;
                font-size: 20px;
                text-transform: capitalize;
                margin-bottom: 25px;
                letter-spacing: 2px;
            }
            span{
                color: gray;
            }
            .about-text p{
                color: black;
                letter-spacing: 1px;
                line-height: 28px;
                font-size: 12px;
                margin-bottom: 45px;
            }
            button{
                background: #ff9900;
                color: white;
                text-decoration: none;
                border: 2px solid transparent;
                font-weight: bold;
                padding: 13px 30px;
                border-radius: 30px;
                transition: .4s;
            }
            button:hover{
                background: transparent;
                border: 2px solid #ffcc00;
            }
            
</style>
</head>
<body>
   <jsp:include page="navigationbar.jsp" />
    <div class="topic">
    <div class="top">
        <header style="font-size: 60px;"><b>THE BEST <br>CHOICE FOR CONSTRUCTION <br> PROJECTS</b></header>
    </div>
</div>
<section id="categories">
    <div class="wrapper">
        <h2 class="category-heading">Categories</h2>
        
        <div class="category-box">
            <a href="roof_page_url">
            <img src="img/floor.jpeg" alt="Floor">
            <span>Floor</span>
        </a>
        </div>
        <div class="category-box">
            <a href="http://localhost:8080/Quantity-Estimator/roof.jsp">
            <img src="img/roof.webp" alt="Roof">
            <span>Roof</span>
            </a>
        </div>
        <div class="category-box">
            <a href="roof_page_url">
            <img src="img/wall.jpeg" alt="Wall">
            <span>Wall</span>
            </a>
        </div>
    </div>
</section>
    
 <section class="about" id="about">
            <div class="main">
                <img src="img/Logo.png">
                <div class="about-text">
                    <h1>About us</h1>
                    <h5>Development<span> and Designing Team</span></h5>
                    <p>Our developing and designing team is a dynamic and collaborative group of professionals dedicated to crafting 
                        innovative solutions and visually appealing experiences. Comprising skilled developers and creative designers, 
                        our team works seamlessly to bring ideas to life, merging cutting-edge technology with aesthetic excellence. 
                        In the realm of development, our experts excel in coding, problem-solving, and building robust, scalable applications. 
                        On the design front, our creative minds transform concepts into captivating visuals, ensuring a user-centric and 
                        aesthetically pleasing interface. Fueled by a passion for innovation and a commitment to excellence, our developing 
                        and designing team is at the forefront of delivering solutions that not only meet but exceed expectations, creating a 
                        digital landscape that is both functional and visually stunning.</p>
                    
                    <button type="button">Read More</button></a>
                </div>
            </div>
                    
        </section>
    
    
    
<script>
         
     
        
    function scrollToSection(about) {
        var section = document.getElementById(about);
        if (section) {
            section.scrollIntoView({ behavior: 'smooth' });
        }
    }
</script>
    <jsp:include page="footer.jsp" />
</body>
</html>

