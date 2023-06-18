$(document).ready(function () {
    $('#example').DataTable();
});


$(document).on('click', '.botonEliminarUsuario', function() 
{
    var idUsuario = $(this).data('id');
    $("#idUsuarioBorrar").val(idUsuario);
    $("#modalBorrarUsuario").modal('show');
});



$(document).on('click', '#borrandoUsuario', function()
{
    
    var idUsuarioBorrar = $("#idUsuarioBorrar").val();
    
    
    $("#modalBorrarUsuario").modal('hide');
    //loading(); 
    
    console.log(idUsuarioBorrar);
    $.ajax({
        url: "servlet-usuario/borrar-usuario.do",
        type: "POST",
        data: {prueba: idUsuarioBorrar},
        success: function (data)
        {
             window.location.reload();
        },
        
        error: function (jqXHR, textStatus, errorThrown) 
        {
            console.log(jqXHR);
            console.log(textStatus);
            console.log(errorThrown);
            //error_db();
        }
    });
});