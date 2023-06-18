<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>CC</title>
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

    <div style="background:#ffe6e6 !important" class="jumbotron jumbotron-fluid">

      <div class="container">
          
        <div class="row">
            
          <div class="col-12 col-sm-8 col-md-6 col-lg-4 offset-sm-2 offset-md-3 offset-lg-4">

            <h1 class="mb-3 text-center">Bienvenido al Registro de Nuevas Tarjetas de Credito</h1>
                                  

            <p class="lead">
              Añade tu metodo de pago
            </p>
                  
                                
            <form class="mb-3">
                
              <div class="row">
                <div class="form-group col-6 col-sm-12">
                  <label for="nombre">Nombre</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Nickname de la tarjeta de credito"
                    id="nombreTarjeta"
                    name="nombreTarjeta"
                    required
                  />
                </div>

              </div>
                
                 <div class="form-group">
                <label for="portada">Numero</label>
                <input
                  type="password"
                  class="form-control"
                  placeholder="Numero de la tarjeta de credito"
                  id="codigoCC"
                  name="codigoCC"
                  required
                />
              </div>
                
              <div class="form-group">
                <label for="cvv">CVV</label>
                <input
                  type="password"
                  class="form-control"
                  placeholder="Codigo de Seguridad"
                  id="cvv"
                  name="cvv"
                  required
                />
              </div>
                
                
              <label></label>
              
              <div class="row no-gutters">
                  
                <div class="form-group col-4">
                    
                  <label for="formulario" class="sr-only"> </label>
                  <select class="form-control" id="year" name="year">
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                    <option value="2030">2030</option>
                  </select>
                </div>
                <div class="form-group col-4">
                  <label for="mes" class="sr-only"
                    >MES</label
                  >
                  <select class="form-control" id="mes" name="mes">
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                  </select>
                </div>
                <div class="form-group col-4">
                  <label for="tipo" class="sr-only"
                    >Tipo</label
                  >
                  <select class="form-control" id="dia" name="dia">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                  </select>
                </div>
              </div>


              <button type="submit" class="btn btn-primary btn-block mb-3" id="final">
                Guardar Tarjeta
              </button>
              
              <div class="alert alert-info small" role="alert">
                Favor de rellenar los datos completamente y de forma responsable
                <a href="#" class="alert-link">Consulta nuestros terminos y condiciones</a> Y
                nuestra <a href="#" class="alert-link">Politica de Privacidad</a>.
              </div>
              
            </form>

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
    <script src="<c:url value="/public/js/master/nuevoCC.js"/>"></script>
  </body>
                    

</html>