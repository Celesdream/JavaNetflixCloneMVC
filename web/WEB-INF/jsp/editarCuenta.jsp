<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Editar Cuenta</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />

        <!-- Bootstrap CSS -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
            integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
            crossorigin="anonymous"
            />
    </head>
    <body>

        <div class="jumbotron jumbotron-fluid">

            <div class="container">

                <div class="row">

                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 offset-sm-2 offset-md-3 offset-lg-4">
                        <c:forEach items="${cuenta}" var="movie"> 
                            <input type hidden="text" value="${movie.id}"
                                   id="id"
                                   name="id"
                                   required />
                            <h1 class="mb-3 text-center">Bienvenido al Editor de tu Cuenta</h1>


                            <form class="mb-3">

                                <div class="row">
                                    <div class="form-group col-6 col-sm-12">
                                        <label for="nombre">Nombre</label>
                                        <input
                                            type="text"
                                            class="form-control"
                                            placeholder="Nombre"
                                            id="nombre"
                                            name="nombre"
                                            value="${movie.nombre}"
                                            required
                                            />
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="apellido">Apellido</label>
                                    <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Apellido"
                                        id="apellido"
                                        name="apellido"
                                        value="${movie.apellido}"
                                        required
                                        />
                                </div>

                                <div class="form-group">
                                    <label for="correo">Correo</label>
                                    <input
                                        type="mail"
                                        class="form-control"
                                        placeholder="URL del la pelicula"
                                        id="correo"
                                        name="correo"
                                        value="${movie.correo}"
                                        required
                                        />
                                </div>
                                        
                                   <div class="form-group">
                                    <label for="apellido">Contrasena</label>
                                    <input
                                        type="password"
                                        class="form-control"
                                        placeholder="password"
                                        id="pass"
                                        name="pass"
                                        required
                                        />
                                </div>


                                <div class="form-group">
                                    <label for="sinopsis">Fecha Nacimiento</label>
                                    <input readonly=""
                                           type="date"
                                           class="form-control"
                                           placeholder="Fechha de Nacimiento"
                                           id="fecha"
                                           name="fecha"
                                           value="${movie.fecha_nacimiento}"

                                           />
                                </div>

                                <div class="form-group">
                                    <label for="premium">Estado</label>
                                    <input readonly
                                        type="text"
                                        class="form-control"
                                        placeholder="premium"
                                        id="premium"
                                        name="premium"
                                        value="${movie.premium}"
                                        required
                                        />
                                </div>

                                <label></label>




                                <button type="button" class="btn btn-primary btn-block mb-3" id="final">
                                    Guardar Cambios
                                </button>

                                <div class="alert alert-info small" role="alert">
                                    Favor de rellenar los datos completamente y de forma responsable
                                    <a href="#" class="alert-link">Consulta nuestros terminos y condiciones</a> Y
                                    nuestra <a href="#" class="alert-link">Politica de Privacidad</a>.
                                </div>

                            </form>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="crossorigin="anonymous">

        </script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
            integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
            integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
            crossorigin="anonymous"
        ></script>
        <script src="<c:url value="/public/js/master/editarCuenta.js"/>"></script>
    </body>


</html>