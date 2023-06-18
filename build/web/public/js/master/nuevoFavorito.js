$(document).on('click', '#favorito', function ()
{
    var favoritosPeli = $("#favoritosPeli").val();

    
    $.ajax({
        url: "servlet-usuario/nuevoFav.do",
        type: "POST",
        data: {
            favoritosPeli: favoritosPeli
        
        },
        success: function (data)
        {
            window.location.href= "/MVCC/misFavoritos.do";
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