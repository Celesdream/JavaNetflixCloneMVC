$(document).ready(function () {
    $('#example').DataTable();
});


$(document).on('click', '.botonEliminarFav', function ()
{
    var idFav = $(this).data('id');
    $("#idFavBorrar").val(idFav);
    $("#borrandoFav").modal('show');
});



$(document).on('click', '#borrandoFav', function ()
{
    var idFavBorrar = $("#idFavBorrar").val();
    $("#borrandoFav").modal('hide');
    
        $.ajax({
        url: "servlet-usuario/eliminarFav.do",
        type: "POST",
        data: {idFavBorrar: idFavBorrar},
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


