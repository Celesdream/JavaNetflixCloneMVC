$(document).ready(function () {
    $('#example').DataTable();
});


$(document).on('click', '.botonEliminarPelicula', function ()
{
    var idPelicula = $(this).data('id');
    $("#idPeliculaBorrar").val(idPelicula);
    $("#modalEliminarPelicula").modal('show');
});


$(document).on('click', '#borrandoPelicula', function ()
{

    var idPeliculaBorrar = $("#idPeliculaBorrar").val();
    $("#modalEliminarPelicula").modal('hide');
    //loading(); 
    
    $.ajax({
        url: "servlet-usuario/borrarPeliculas.do",
        type: "POST",
        data: {prueba: idPeliculaBorrar},
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