<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Editar Pelicula</title>
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
 <c:forEach items="${pelicula}" var="movie"> 
            <h1 class="mb-3 text-center">Bienvenido al Editor de Peliculas</h1>
                                  

            <p class="lead">
              Edita  peliculas de nuestro catalogo
                              <input
                                  type="text"
                  class="form-control"
                  placeholder="URL del la pelicula"
                  id="peliculaID"
                  name="peliculaID"
                  value="${movie.id}"
                >
            </p>
                  
                                
            <form class="mb-3" novalidate>
                
              <div class="row">
                <div class="form-group col-6 col-sm-12">
                  <label for="nombre">Nombre</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Nombre de la pelicula"
                    id="nombrePelicula"
                    name="nombrePelicula"
                    value="${movie.nombre}"
                    required
                  >
                </div>

              </div>
                
                 <div class="form-group">
                <label for="portada">Portada</label>
                <input
                  type="text"
                  class="form-control"
                  placeholder="URL de la imagen"
                  id="portada"
                  name="portada"
                  value="${movie.img}"
                  required
                >
              </div>
                
              <div class="form-group">
                <label for="enlace">Enlace</label>
                <input
                  type="text"
                  class="form-control"
                  placeholder="URL del la pelicula"
                  id="enlace"
                  name="enlace"
                  value="${movie.enlace}"
                  required
                >
              </div>
                
                
                <div class="form-group">
                <label for="sinopsis">Sinopsis</label>
                <input
                  type="text"
                  class="form-control"
                  placeholder="Sinopsis de la Pelicula"
                  id="sinopsis"
                  name="sinopsis"
                  value="${movie.sinopsis}"
                  required
                >
              </div>
                
              <label></label>
              
              <div class="row no-gutters">
                  
                <div class="form-group col-4">
                    
                  <label for="formulario" class="sr-only"> </label>
                  <select class="form-control" id="year" name="year"  >
                    <option value="${movie.year}">${movie.year}</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                   
                  </select>
                </div>
                <div class="form-group col-4">
                  <label for="genero" class="sr-only"
                    >GENERO</label
                  >
                  <select class="form-control" id="genero" name="genero">
                    <option value="${movie.genero}">${movie.genero}</option>
                    <option value="Comedia">Comedia</option>
                    <option value="Drama">Drama</option>
                    <option value="Fantasia">Fantasia</option>
                    <option value="Accion">Accion</option>
                    <option value="Terror">Terror</option>
                    <option value="Animacion">Animacion</option>
                  </select>
                </div>
                <div class="form-group col-4">
                  <label for="tipo" class="sr-only"
                    >Tipo</label
                  >
                  <select class="form-control" id="tipo" name="tipo">
                      <option value="${movie.tipo}">${movie.tipo}</option>
                    <option value="0">Infantil</option>
                    <option value="1">Adultos</option>
                    <option value="2">Adolescentes</option>
                  </select>
                </div>

                 <div class="form-group col-4">
                 <label for="popular">TRENDING</label>
                  
                  <select class="form-control" id="popular" name="popular">
                      <option value="${movie.popular}">${movie.popular}</option>
                    <option value="0">NO</option>
                    <option value="1">SI</option>
                  </select>
                </div>
              </div>


                    <button type="button" class="btn btn-primary btn-block mb-3" id="final">
                Guardar Pelicula
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
    <script src="<c:url value="/public/js/master/editaPeliculas.js"/>"></script>
  </body>
                    

</html>