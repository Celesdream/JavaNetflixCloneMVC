$(document).on('click', '#final', function ()
{
    var nombre = $("#nombrePelicula").val();
    var cover = $("#portada").val();
    var video = $("#enlace").val();
    var sinop = $("#sinopsis").val();
    var anio = $("#year").val();
    var gener = $("#genero").val();
    var tipos = $("#tipo").val();
    var trending = $("#popular").val();
    var peli = $("#peliculaID").val();
    
    $.ajax({
        url: "servlet-pelicula/editar.do",
        type: "POST",
        data: {
            nombrePelicula: nombre,
            portada:cover,
            enlace:video,
            sinopsis:sinop,
            year:anio,
            genero:gener,
            tipo:tipos,
            popular:trending,
            peliculaID:peli
            
        
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