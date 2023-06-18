<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<c:url value="/public/vendor/netflix/style/main.css" />" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">

        <!-- Responsividade -->
        <link href="<c:url value="/public/vendor/netflix/style/responsive.css" />" rel="stylesheet">

        <!-- Arquivos OWL css -->

        <link href="<c:url value="/public/vendor/netflix/style/owl/owl.carousel.css" />" rel="stylesheet">
        <link href="<c:url value="/public/vendor/netflix/style/owl/owl.theme.default.css" />" rel="stylesheet">



        <title>Netflix</title>
    </head>

    <body  style="background-color:black">
        <header class="header nav  ">
            <div class="container">
                <a href="#">
                    <h2 class="logo"><img src="https://vectorified.com/images/netflix-icon-png-26.png" ></h2>
                </a>
                <nav>
                    <ul class="menu">



                        <li>
                            <form method="post" action="<c:url value="/account.do" />"
                                  class="pr-1">

                                <button
                                    class="btn btn-outline-danger"
                                    title="">

                                    Cuenta                  
                                </button>
                            </form>


                        </li>
                        <li>
                            <form method="post" action="<c:url value="/misFavoritos.do" />"
                                  class="pr-1">
                                <input type="hidden" name="usuarioID"
                                       id="usuarioID" value="${id}" />

                                <button
                                    class="btn btn-outline-danger"
                                    title="">

                                    Mis Favoritos                  
                                </button>
                            </form>


                        </li>

                        <li>
                          <form method="post" action="<c:url value="/salir.do" />"
                                  class="pr-1">
                                <input type="hidden" name="usuarioID"
                                       id="usuarioID" value="${id}" />

                                <button
                                    class="btn btn-outline-danger"
                                    title="">

                                    Salir                  
                                </button>
                            </form>
                                    
                           


                        </li>
                    </ul>
                </nav>
            </div>
        </header>

        <main>
            <!-- Filme principal -->
            <div class="filme-principal bg-dark text-white">
                <div class="container">
                    <h3 class="titulo">BIENVENIDO</h3>
                    <p class="descricao"></p>

                    <div class="botoes">
                        
                            <button role="button" class="botao">
                                <i class="fas fa-play"></i>
                                Reproducir Ahora
                            </button>
                    </div>
                </div>
            </div>

            <!-- Carroseis -->
            <div id="populares" class="container carousel-filmes">
                <h2 class="titulo-carousel" style="color: white">Populares en Netflix    </h2>
                <div class="owl-carousel owl-theme" bg-dark text-white>
                    <a href="<c:url value="/home.do" />"
                </a>

                <c:forEach items="${peliculas}" var="pelicula">
                    <c:if test="${pelicula.popular == '1'}">
                        <a
                            <li>
                                <form method="post" action="<c:url value="/reproductor.do" />"
                                      class="pr-1">
                                    <input type="hidden" name="pelicula"
                                           id="peliculaId" value="${pelicula.id}" />

                                    <button
                                        class="btn btn-outline-dark"
                                        title="">
                                        <img class="box-filme" src="${pelicula.img}" >

                                    </button>
                                </form>
                            </li>
                        </c:if>
                    </c:forEach>



            </div>

        </div>
        <div id="frontend" class="container carousel-filmes">
            <h2 class="titulo-carousel" style="color: white">Comedias</h2>
            <div class="owl-carousel owl-theme">
                <a href="<c:url value="/comedia.do"/>"
            </a>

            <c:forEach items="${peliculas}" var="pelicula">
                <c:if test="${pelicula.genero == 'Comedia'}">
                    <a 
                        <li>
                                <form method="post" action="<c:url value="/reproductor.do" />"
                                      class="pr-1">
                                    <input type="hidden" name="pelicula"
                                           id="peliculaId" value="${pelicula.id}" />

                                    <button
                                         class="btn btn-outline-dark"
                                        title="">
                                        <img class="box-filme" src="${pelicula.img}" >

                                    </button>
                                </form>


                        </li>
                    </c:if>
                </c:forEach>

        </div>
    </div>
    <div id="backend" class="container carousel-filmes">
        <h2 class="titulo-carousel" style="color: white">Fantasia</h2>
        <div class="owl-carousel owl-theme">
            <c:forEach items="${peliculas}" var="pelicula">
                <c:if test="${pelicula.genero == 'Fantasia'}">
                    <a                             <li>
                                <form method="post" action="<c:url value="/reproductor.do" />"
                                      class="pr-1">
                                    <input type="hidden" name="pelicula"
                                           id="peliculaId" value="${pelicula.id}" />

                                    <button
                                         class="btn btn-outline-dark"
                                        title="">
                                        <img class="box-filme" src="${pelicula.img}" >

                                    </button>
                                </form>


                        </li>
                    </c:if>
                </c:forEach>
        </div>
    </div>


    <div id="mobile" class="container carousel-filmes">
        <h2 class="titulo-carousel" style="color: white">Drama</h2>
        <div class="owl-carousel owl-theme">



            <c:forEach items="${peliculas}" var="pelicula">
                <c:if test="${pelicula.genero == 'Drama'}">
                    <a                             <li>
                                <form method="post" action="<c:url value="/reproductor.do" />"
                                      class="pr-1">
                                    <input type="hidden" name="pelicula"
                                           id="peliculaId" value="${pelicula.id}" />

                                    <button
                                         class="btn btn-outline-dark"
                                        title="">
                                        <img class="box-filme" src="${pelicula.img}" >

                                    </button>
                                </form>


                        </li>
                    </c:if>
                </c:forEach>
        </div>
    </div>



    <div id="bootcamps" class="container  carousel-filmes">
        <h2 class="titulo-carousel" style="color: white"></h2>
        <div class="owl-carousel owl-theme">
            <c:forEach items="${peliculas}" var="pelicula">
                <c:if test="${pelicula.genero == 'Infantiles'}">
                    <a href="${pelicula.enlace}">
                        <img class="box-filme" src="${pelicula.img}">
                    </c:if>
                </c:forEach>



                </div>
                </div>
                </main>


                <footer class="links">
                </footer>


                <!-- Font awesome -->
                <script src="https://kit.fontawesome.com/7b8404dd25.js" crossorigin="anonymous"></script>

                <!-- Arquivos OWL JS -->
                <script src="<c:url value="/public/vendor/netflix/js/owl/jquery.min.js" />"></script>
                <script src="<c:url value="/public/vendor/netflix/js/owl/owl.carousel.min.js" />"></script>

                <!-- Js principal -->
                <script src="<c:url value="/public/vendor/netflix/js/main.js" />"></script>

                </body>

                </html>