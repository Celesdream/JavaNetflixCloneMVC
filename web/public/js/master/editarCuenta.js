$(document).on('click', '#final', function ()
{
    var nombre = $("#nombre").val();
    var apellido = $("#apellido").val();
    var correo = $("#correo").val();
    var id = $("#id").val();
    
    $.ajax({
        url: "servlet-usuario/editar.do",
        type: "POST",
        data: {
            nombre: nombre,
            apellido:apellido,
            correo:correo,
            id:id
            
        
        },
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