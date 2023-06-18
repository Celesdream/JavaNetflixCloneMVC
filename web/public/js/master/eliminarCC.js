$(document).ready(function () {
    $('#example').DataTable();
});
 
$(document).on('click', '.botonEliminarCC', function ()
{
    var idCC = $(this).data('id');
    $("#idCCborrar").val(idCC);
    $("#modalBorrarCC").modal('show');
});


$(document).on('click', '#borrandoCC', function ()
{
    var idCCborrar = $("#idCCborrar").val();
    $("#modalBorrarCC").modal('hide');
    
        $.ajax({
        url: "servlet-usuario/eliminarCC.do",
        type: "POST",
        data: {idCCborrar: idCCborrar},
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

