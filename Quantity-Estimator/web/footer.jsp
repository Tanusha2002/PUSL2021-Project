<%-- 
    Document   : footer
    Created on : Mar 17, 2024, 2:15:34 PM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>JSP Page</title>
        <style>
            *{
                padding:0;
                margin:0;
                box-sizing: border-box;
            }    
            footer{
                background-color: #111;
            }
            .footerContainer{
                width: 100%;
                padding:70px 30px 20px;
            }
            .socialIcons{
                display: flex;
                justify-content: center;
            }
            .socialIcons a{
                text-decoration: none;
                padding: 10px;
                background-color: white;
                margin: 10px;
                border-radius: 50%;
            }
            .socialIcons a i{
                font-size:2em;
                color: black;
                opacity: 0.9;
            }
            .socialIcons a:hover{
                background:#111;
                transition: 0.5s;
            }
            .socialIcons a:hover i{
                color:white;
                transition: 0.5s;
                
            }
            .footerNav{
                margin: 30px 0;
            }
            .footerNav ul{
                display: flex;
                justify-content: center;
                list-style-type: nonedisc;
            }
            .footerNav ul li a{
                color: white;
                margin:20px;
                text-decoration: none;
                font-size: 1.3em;
                opacity: 0.7;
                transition: 0.5s;
                
            }
            .footerNav ul li a:hover{
                opacity: 1;
            }
            .footerBottom{
                background-color: #000;
                padding: 20px;
                text-align: center;
            }
            .footerBottom p{
                color: white;
            }
            .designer{
                opacity: 0.7;
                text-transform: uppercase;
                letter-spacing: 1px;
                font-weight: 400;
                margin: 0px 5px;
                
            }
            @media (max-width: 700px){
                .footerNav ul{
                    flex-direction: column;
                }
                .footerNav ul li{
                    width: 100%;
                    text-align: center;
                    margin: 10px;
                }
            }
        </style>
    </head>
    <body>
        <footer>
            <div class="footerContainer" >
            <div class="socialIcons">
                <a href=""<i class="fa-brands fa-facebook"></i></a>
                <a href=""<i class="fa-brands fa-instagram"></i></a>
                <a href=""<i class="fa-brands fa-twitter"></i></a>
                <a href=""<i class="fa-brands fa-google-plus"></i></a>
                <a href=""<i class="fa-brands fa-youtube"></i></a>
            </div>
            <div class="footerNav">
                <ul>
                    <li><a href="">Home</a></li>
                    <li><a href="">Blog</a></li>
                    <li><a href="review.jsp">Review</a></li>
                    <li><a href="">Services</a></li>
                    <li><a href="">About</a></li>
                </ul>
            </div>
                            
        </div>
            <div class="footerBottom">
                <p>Copyright &copy;2024; Designed by <span class="designer">Group A39</span></p>
            </div>

        </footer>
</html>

