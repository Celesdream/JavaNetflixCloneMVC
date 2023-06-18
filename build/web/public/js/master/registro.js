/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).on('click', '#final', function ()
{
    var firstName = $("#firstName").val();
    var apellido = $("#lastName").val();
    var correo = $("#email").val();
    var pass = $("#password").val();
    var dia = $("#birthdayDay").val();
    var mes = $("#birthdayMonth").val();
    var anio = $("#birthdayYear").val();
    
    $.ajax({
        url: "servlet-usuario/registro.do",
        type: "POST",
        data: {
            nombre: firstName,
            apellido:apellido,
            mail:correo,
            password:pass,
            birthdayDay:dia,
            birthdayMonth:mes,
            birthdayYear:anio
        
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