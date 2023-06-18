<%-- 
    Document   : index
    Created on : 24/06/2022, 02:26:27 AM
    Author     : pedma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link href="<c:url value="/public/vendor/bootstrap/custom-css/css.css" />" rel="stylesheet">
    <link rel="icon" href="https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-1024.png">
    <title>Netflix</title>
    
</head>
<body>
    <div class="upper">
        <div class="logo">
            <a href="#">
                <img src="https://dwglogo.com/wp-content/uploads/2019/02/Netflix_logo-300x169.png" class="img-logo"/>
            </a>
        </div>
        <div class="login-div">
            <form class="login" action="<c:url value="/clock/login.do" />" method="POST">
                <h1>Inicia sesión</h1>
                <div class="input-text">
                    <input type="text" id="inputEmail" name="email" placeholder="Email or phone number" onfocus="inputOnFocus(this)" onblur="inputOnBlur(this)"/>
                    <div class="warning-input" id="warningEmail">
                        Ingrese un correo Valido
                    </div>
                </div>
                
                <div class="input-text">
                    <input type="password" id="inputPassword" name="password" placeholder="Password" onfocus="inputOnFocus(this)" onblur="inputOnBlur(this)"/>
                    <div class="warning-input" id="warningPassword">
                        Ingrese una contrasena valida
                    </div>
                </div>
                
                <div>
                    <button class="signin-button">Inicia sesión</button>
                </div>
                <div class="remember-flex">
                    <div>
                        <input type="checkbox">
                        <label class="color_text">Recuerdame</label>
                    </div>
                    <div class="help">
                        <a class="color_text" href="#">Necesitas Ayuda?</a>
                    </div>
                </div>
                <div class="login-face">
                </div>
                <div class="new-members">
                    ¿Primera vez en Netflix?  <a href="<c:url value="/registro.do" />" class="signup-link">Suscríbete ahora</a>.
                </div>
                <div class="protection color_link help">
                    Esta página está protegida por Google reCAPTCHA para comprobar que no eres un robot. <a href="#">Más info.</a>
                </div>
            </form>
        </div>
    </div>
    <div class="bottom">
        <div class="bottom-width">
            Questions? Call <a href="tel:1-844-542-4813" class="tel-link">1-844-542-4813</a>
            <div>
                <ul class="bottom-flex">
                    <li class="list-bottom">
                        <a href="#" class="link-bottom">
                            FAQ
                        </a>
                    </li>
                    <li class="list-bottom">
                        <a href="#" class="link-bottom">
                            Help Center
                        </a>
                    </li>
                    <li class="list-bottom">
                        <a href="#" class="link-bottom">
                            Terms of Use
                        </a>
                    </li>
                    <li class="list-bottom">
                        <a href="#" class="link-bottom">
                            Privacy
                        </a>
                    </li>
                    <li class="list-bottom">
                        <a href="#" class="link-bottom">
                            Cookie Preferences
                        </a>
                    </li>
                    <li class="list-bottom">
                        <a href="#" class="link-bottom">
                            Corporate information
                        </a>
                    </li>
                </ul>
            </div>
            <div>
                <select class="fa select-language">
                    <option> &#xf0ac; &nbsp;&nbsp;&nbsp;English</option>
                    <option> &#xf0ac; &nbsp;&nbsp;&nbsp;Fran&ccedil;ais</option>
                </select>
            </div>
        </div>
    </div>
   <script src="<c:url value="/public/vendor/bootstrap/custom-js/login.js" />"></script>
</body>
</html>



    
