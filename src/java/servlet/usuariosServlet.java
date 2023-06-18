
package servlet;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.admin;
import model.home;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class usuariosServlet 
{

    @RequestMapping("servlet-usuario/borrar-usuario.do")
    public ResponseEntity<String> borrar_Usuarios(HttpServletRequest request) 
    {
        admin c = new admin();
        List response = c.borrarUsuario(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("response", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }

    @RequestMapping("servlet-usuario/borrarPeliculas.do")
    public ResponseEntity<String> borrarPeliculas(HttpServletRequest request) 
    {
        admin c = new admin();
        List response = c.borrarPelicula(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }

    @RequestMapping("servlet-usuario/registro.do")
    public ResponseEntity<String> registro(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.registroNuevo(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
    
        @RequestMapping("servlet-pelicula/registro.do")
    public ResponseEntity<String> registroPeliculas(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.registroPelicula(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
    
            @RequestMapping("servlet-pelicula/editar.do")
    public ResponseEntity<String> edicionPeliculas(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.edicionPelicula(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
    @RequestMapping("servlet-usuario/editar.do")
    public ResponseEntity<String> edicionUsuario(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.edicionUsuario(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
    
        @RequestMapping("servlet-usuario/nuevoCC.do")
    public ResponseEntity<String> nuevoCC(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.registroCC(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
            @RequestMapping("servlet-usuario/eliminarCC.do")
    public ResponseEntity<String> eliminarCC(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.eliminarCC(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
            @RequestMapping("servlet-usuario/eliminarFav.do")
    public ResponseEntity<String> eliminarFav(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.eliminarFav(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }
    
    
                @RequestMapping("servlet-usuario/nuevoFav.do")
    public ResponseEntity<String> nuevoFav(HttpServletRequest request) 
    {
        home c = new home();
        List response = c.nuevoFavorito(request);
        org.json.simple.JSONObject jSONObject = new org.json.simple.JSONObject();
        jSONObject.put("prueba", response);
        return new ResponseEntity<>(jSONObject.toJSONString(), HttpStatus.OK);

    }

}
