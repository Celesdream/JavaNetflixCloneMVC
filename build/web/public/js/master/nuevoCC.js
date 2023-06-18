$(document).on('click', '#final', function ()
{
    var nombreTarjeta = $("#nombreTarjeta").val();
    var codigoCC = $("#codigoCC").val();
    var cvv = $("#cvv").val();
    var year = $("#year").val();
    var mes = $("#mes").val();
    var dia = $("#dia").val();
    
    $.ajax({
        url: "servlet-usuario/nuevoCC.do",
        type: "POST",
        data: {
            nombreTarjeta: nombreTarjeta,
            codigoCC:codigoCC,
            cvv:cvv,
            year:year,
            mes:mes,
            dia:dia
        
        },
        success: function (data)
        {
            //window.location.href= "index.do";
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