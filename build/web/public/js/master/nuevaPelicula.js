


$(document).on('click', '#finala', function ()
{
    var nombre = $("#nombrePelicula").val();
    var portada = $("#portada").val();
    var enlace = $("#enlace").val();
    var sinopsis = $("#sinopsis").val();
    var anio = $("#year").val();
    var gener = $("#genero").val();
    var tipos = $("#tipo").val();
    
    $.ajax({
        url: "servlet-pelicula/registro.do",
        type: "POST",
        data: {
            nombrePelicula: nombre,
            portada:portada,
            enlace:enlace,
            sinopsis:sinopsis,
            year:anio,
            genero:gener,
            tipo:tipos
        
        },
        success: function (data)
        {
            //window.location.reload();
        },
        
        error: function (jqXHR, textStatus, errorThrown) 
        {
            console.log(jqXHR);
            console.log(textStatus);
            console.log(errorThrown);
           window.location.href= "/index.do";
            //window.location.reload();
            //error_db();
        }
    });
});