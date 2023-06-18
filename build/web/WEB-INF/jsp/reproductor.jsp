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


        <c:forEach items="${pelicula}" var="pelicula">  
            <title>${pelicula.nombre}</title>
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
                        <h3 class="titulo"></h3>

                        <h2 class="font-weight-normal">${pelicula.nombre} <td>
                                <br>
                                
                                
                            </td></h2>

                                <td>
                                    <small>${pelicula.sinopsis}</small>
                                    <br>
                                    Fecha de Estreno ${pelicula.year}
                                </td>
                        <iframe width="1280" height="720"
                                src="${pelicula.enlace}">
                        </iframe>



                        <p class="descricao"></p>
                        <input type="hidden" value="${pelicula.id}" name="favoritosPeli" id="favoritosPeli">
                    <div class="botoes">
                            
                            <button role="button" class="botao" id="favorito" name="favorito">
                                
                                <i class="fas fa-heart">
                                     
                                </i>
                                Añadir a mis favoritos
                            </button>
                    </div>
                </div>
            </div>
 </c:forEach>
        </main>


        <footer class="links">
        </footer>

        <script src="https://kit.fontawesome.com/7b8404dd25.js" crossorigin="anonymous"></script>
        <script src="<c:url value="/public/vendor/netflix/js/owl/jquery.min.js" />"></script>
        <script src="<c:url value="/public/vendor/netflix/js/owl/owl.carousel.min.js" />"></script>
        <script src="<c:url value="/public/vendor/netflix/js/main.js" />"></script>
        <script src="<c:url value="/public/js/master/nuevoFavorito.js"/>"></script> 

    </body>

</html>