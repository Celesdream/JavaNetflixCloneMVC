package model;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class admin 
{

    public List obtenerDatosAdmin(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        String id_ur = (String) session.getAttribute("id_ur");
        String id_usuario = (String) session.getAttribute("id");
        conexion con = new conexion();
        
        String sql = "select * FROM admin WHERE id = " + id_usuario + " ";

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }

    public List listadoUsuarios(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        conexion con = new conexion();

        String sql = "select * FROM usuarios WHERE estado = '1' ";

        try 
        {
            datos = con.getQuery(sql);

        } 
        catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }

    public List listadoPeliculas(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        conexion con = new conexion();

        String sql = "select * FROM peliculas WHERE estado = '1' ";

        try 
        {
            datos = con.getQuery(sql);

        } 
        catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
    

        
        
         public List<String>borrarUsuario(HttpServletRequest request)
    {
        conexion con = new conexion();
        String estatus_funcion = "true";
        String tipo_error;
        ArrayList response = new ArrayList();
        utilities u = new utilities();
        HttpSession session = request.getSession();
        String id_usuario = request.getParameter("prueba");
        System.out.println(id_usuario);
        String sql = "UPDATE usuarios SET estado = '0' WHERE id ='" + id_usuario + "'";

        try {
            con.query(sql);
            estatus_funcion = "true";
            response.add(estatus_funcion);
            } 
            catch (Exception e) 
            {
                System.out.println(e.getMessage());
                tipo_error = e.getMessage();
                estatus_funcion = "false";
                response.add(tipo_error);
            }
        return response;

    }
         
         
    public List<String>borrarPelicula(HttpServletRequest request)
    {
        conexion con = new conexion();
        String estatus_funcion = "true";
        String tipo_error;
        ArrayList response = new ArrayList();
        String idPeliculaBorrar = request.getParameter("prueba");
        System.out.println(idPeliculaBorrar);
        
        String sql = "UPDATE peliculas SET estado = '0' WHERE id ='" + idPeliculaBorrar + "'";

        try {
            con.query(sql);
            response.add(estatus_funcion);
            } 
            catch (Exception e) 
            {
                System.out.println(e.getMessage());
                tipo_error = e.getMessage();
                estatus_funcion = "false";
                response.add(tipo_error);
            }
        System.out.println("HOLASSSSSSSSSSSSSSS"+response);
        return response;

    }

}
