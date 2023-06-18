<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">
        <title>Area de Amnistracion de Usuarios</title>
    </head>
<body>
    <nav class="navbar navbar-expand-sm bg-danger navbar-dark">
        <div class="container-fluid">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Area de Administracion de Usuarios</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="p-3 mb-2">
        <body style="background-color:black">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover" id="example">
                            <thead>
                                <tr>
                                    <th class="text-primary"></th>
                                    <th class="text-primary">Código</th>
                                    <th class="text-primary">Nombre</th>
                                    <th class="text-primary">Correo </th>
                                    <th class="text-primary">Estatus</th>
                                    <th class="text-primary">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="i" value="1" scope="page" />
                                <c:forEach items="${cuenta}" var="user"> 
                                    <tr>
                                        <td>
                                            <c:out value="${i}" />
                                        </td>

                                        <td>
                                            <c:out value="${user.id} " />
                                            
                                        </td>

                                        <td>
                                            <c:out value="${user.nombre} ${user.apellido}" />
                                        </td>

                                        <td>
                                            <c:out value="${user.correo} " />
                                        </td>

                                        <td>
                                            <c:out value="${user.premium} " />
                                        </td>

                                        <td>
                                            <div class="col-lg-10 d-flex">
                                                <button
                                                    class="btn btn-outline-danger botonEliminarUsuario"
                                                    data-id="${user.id}"
                                                    
                                                    >
                                                    Eliminar
                                                </button>
                                            </div>


                                            <div class="col-lg-10 d-flex">
                                            <form method="post" action="<c:url value="editarUsuarioMod.do" />"class="pr-1">
                                                <input type="hidden" name="editarUsuarioID" id="editarUsuarioID" value="${user.id}" />
                                                <button
                                                    class="btn btn-outline-success botonEditarPelicula"
                                                    data-id="${user.id}">
                                                    Editar
                                                </button>
                                            </form>    
                                            </div>
                                        </td>
                                    </tr>

                                    <c:set var="i" value="${i + 1}" scope="page" />
                                </c:forEach>

                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div><!-- card-body -->
            </div><!-- card -->
            
            
            <div id="modalBorrarUsuario" class="modal fade" tabindex="-1"
                 role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title"> 
                                Atención
                            </h5>
                        </div>
                        <div class="modal-body">
                            <p>¿Está seguro de eliminar a este usuario?
                            </p>
                        </div>
                        
                        <div class="modal-footer">
                            <input type="hidden" id="idUsuarioBorrar" name="prueba" value="" />
                            
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                Cancelar
                            </button>
                            
                            <button id="borrandoUsuario" type="button" class="btn btn-danger">
                                Eliminar
                            </button>
                        </div>
                        
                    </div>
                </div>
            </div>
            
    <script
        src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="crossorigin="anonymous">

    </script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="<c:url value="/public/js/master/listadoUsuarios.js"/>"></script> 
                                
   </body>
</html>
