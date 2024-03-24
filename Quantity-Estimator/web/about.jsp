<%-- 
    Document   : about
    Created on : Mar 18, 2024, 10:55:33 PM
    Author     : Adithya Jayakody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team Section</title>
        <!--- Font Awesome --->
        <link
           href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
           rel="stylesheet"
        />
        <!-- Google Font -->
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
            rel="stylesheet"
        />
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            body{
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background: linear-gradient( #ffcc33 0%, #333333 100%);
            }
            .title{
                text-align: center;
            }
            .title h4{
    display: inline-block;
    padding: 100px;
    color: #fff;
    font-size: 50px;
    font-weight: 500;
    letter-spacing: 1.2px;
    word-spacing: 5px;
    word-wrap: break-word;
}

            .wrap .card-container {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    margin: -80px 0 -20px; /* Adjust the margin-bottom */
}

            .card-container .card{
                position: relative;
                width: 300px;
                height: 400px;
                margin: 20px;
                overflow: hidden;
                box-shadow: 0 30px 30px 20px rgba(0, 0, 0, 1), inset 0 0 0 1000px rgba(67,52,109,.6);
                border-radius: 15px;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .card .imBx, .imBx img{
                width: 100%;
                height: 100%;
            }
            .card .content{
                position: absolute;
                bottom: -160px;
                width: 100%;
                height: 160px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                backdrop-filter: blur(15px);
                box-shadow: 0 -10px 10px rgba(0, 0, 0, 0.1);
                border: 1px solid rgba(255, 255, 255, 0.1);
                border-radius: 15px;
                transition: bottom 0.5s;
                transition-delay: 0.65s;
            }
            .card:hover .content{
                bottom: 0;
                transition-delay: 0s;
            }
            .content .contentBx h3{
                text-transform: uppercase;
                color: #fff;
                letter-spacing: 2px;
                font-weight: 500;
                font-size: 18px;
                text-align: center;
                margin: 20px 0 15px;
                line-height: 1.1em;
                transition: 0.5s;
                transition-delay: 0.6s;
                opacity: 0;
                transform: translateY(-20px);
            }
            .card:hover .content .contentBx h3{
                opacity: 1;
                transform: translateY(0);
            }
            .content .contentBx h3 span{
                font-size: 12px;
                font-weight: 300;
                text-transform: initial;
            }
            .content .sci{
                position: relative;
                bottom: 10px;
                display: flex;
            }
            .content .sci li{
                list-style: none;
                margin: 0 10px;
                transform: translateY(40px);
                transition: 0.5s;
                opacity: 0;
                transition-delay: calc(0.2s * var(--i));
            }
            .card:hover .content .sci li{
                transform: translateY(0);
                opacity: 1;
            }
            .content .sci li a{
                color: #fff;
                font-size: 24px;
            }
        </style>
    </head>
    <body>
        <header>
        <jsp:include page="navigationbar.jsp" />
    </header>
        <main>
        <div class="wrap">
            <div class="title">
                <h4>Our Team</h4>
            </div>
            
            <div class="card-container">
                <div class="card">
                    <div class="imBx">
                        <img src="img/tanusha.jpg">
                    </div>
                    
                    <div class="content">
                        <div class="contentBx">
                            <h3>Tanusha Manamperi<br><span>Group Leader</span></h3>
                        </div>
                        <ul class="sci">
                            <li style="--i: 1">
                                <a href="https://www.instagram.com/tanusha_manamperi/"><i class="fa-brands fa-instagram"></i></a>
                            </li>
                            <li style="--i: 2">
                                <a href="https://github.com/Tanusha2002"><i class="fa-brands fa-github"></i></i></a>
                            </li>
                            <li style="--i: 3">
                                <a href="https://www.linkedin.com/in/tanusha-manamperi-7894bb259/"><i class="fa-brands fa-linkedin-in"></i></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="imBx">
                        <img src="img/manushika.jpg">
                    </div>
                    
                    <div class="content">
                        <div class="contentBx">
                            <h3>Manushika Rathnasekara<br><span>Technical Leader</span></h3>
                        </div>
                        <ul class="sci">
                            <li style="--i: 1">
                                <a href="https://www.instagram.com/_vinomiii_/"><i class="fa-brands fa-instagram"></i></a>
                            </li>
                            <li style="--i: 2">
                                <a href="https://github.com/manuvinomi"><i class="fa-brands fa-github"></i></i></a>
                            </li>
                            <li style="--i: 3">
                                <a href="#"><i class="fa-brands fa-linkedin-in"></i></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="imBx">
                        <img src="img/mahima.jpg">
                    </div>
                    
                    <div class="content">
                        <div class="contentBx">
                            <h3>Rochelle Anthony<br><span>Planning Leader</span></h3>
                        </div>
                        <ul class="sci">
                            <li style="--i: 1">
                                <a href="https://www.instagram.com/rochelle_mahiii/"><i class="fa-brands fa-instagram"></i></a>
                            </li>
                            <li style="--i: 2">
                                <a href="https://github.com/Rochellemahi"><i class="fa-brands fa-github"></i></i></a>
                            </li>
                            <li style="--i: 3">
                                <a href="#"><i class="fa-brands fa-linkedin-in"></i></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="imBx">
                        <img src="img/jayathu.jpg">
                    </div>
                    
                    <div class="content">
                        <div class="contentBx">
                            <h3>Adithya Jayakody<br><span>Testing Leader</span></h3>
                        </div>
                        <ul class="sci">
                            <li style="--i: 1">
                                <a href="https://www.instagram.com/adhiiiii_01/"><i class="fa-brands fa-instagram"></i></a>
                            </li>
                            <li style="--i: 2">
                                <a href="https://github.com/AdithyaJA"><i class="fa-brands fa-github"></i></i></a>
                            </li>
                            <li style="--i: 3">
                                <a href="#"><i class="fa-brands fa-linkedin-in"></i></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="imBx">
                        <img src="img/sakuni.jpg">
                    </div>
                    
                    <div class="content">
                        <div class="contentBx">
                            <h3>Sakuni Fonseka<br><span>Quality Leader</span></h3>
                        </div>
                        <ul class="sci">
                            <li style="--i: 1">
                                <a href="https://www.instagram.com/sakuni.fonseka/"><i class="fa-brands fa-instagram"></i></a>
                            </li>
                            <li style="--i: 2">
                                <a href="https://github.com/sakunifonseka29"><i class="fa-brands fa-github"></i></i></a>
                            </li>
                            <li style="--i: 3">
                                <a href="#"><i class="fa-brands fa-linkedin-in"></i></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
                </main>
    </body>
</html>