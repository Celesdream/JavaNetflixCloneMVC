package model;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class home 
{

    public List obtenerPeliculas(HttpServletRequest request) 
    {
        List datos = null;

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        String sql = "select * FROM peliculas ";
        conexion con = new conexion();

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }

    public List obtenerDatosUsuario(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        String id_ur = (String) session.getAttribute("id_ur");
        String id_usuario = (String) session.getAttribute("id");
        conexion con = new conexion();

        String sql = "select * FROM usuarios WHERE id = " + id_usuario + " ";

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
    public List obtenerDatocCC(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        String id_ur = (String) session.getAttribute("id_ur");
        String id_usuario = (String) session.getAttribute("id");
        conexion con = new conexion();

        String sql = "select * FROM tarjetas WHERE tarjetas.\"id_Usuario\" = " + id_usuario + " ";

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }

    public List reproducirPelicula(HttpServletRequest request) 
    {
        List datos = null;
        String pelicula = request.getParameter("pelicula");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        String sql = "select * FROM peliculas WHERE id = " + pelicula + " ";
        conexion con = new conexion();

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }

    public List registroNuevo(HttpServletRequest request) 
    {
        List datos = null;
        String nom = request.getParameter("nombre");
        String ape = request.getParameter("apellido");
        String correo = request.getParameter("mail");
        String pass = request.getParameter("password");
        String dia = request.getParameter("birthdayDay");
        String mes = request.getParameter("birthdayMonth");
        String anio = request.getParameter("birthdayYear");
        
        String sql = "INSERT INTO usuarios (correo,pass,nivel,nombre,apellido,fecha_nacimiento,premium,estado) VALUES('" + correo + "', crypt('" + pass + "', gen_salt('bf')),'1','" + nom + "','" + ape + "','" + anio+"-"+mes+"-"+dia+ "','1','1');";
        conexion con = new conexion();
        

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
    
        public List cargarelicula(HttpServletRequest request) 
    {
        List datos = null;
        
        String pelicula = request.getParameter("editarPeliculaId");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        String sql = "select * FROM peliculas WHERE id = " + pelicula + " ";
        conexion con = new conexion();

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
        
    public List editarUsuarioVi(HttpServletRequest request) 
    {
        List datos = null;
        
        String usuario = request.getParameter("editarUsuarioID");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        String sql = "select * FROM usuarios WHERE id = " + usuario + " ";
        conexion con = new conexion();

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
        
        
        
        
    public List registroPelicula(HttpServletRequest request) 
    {
        List datos = null;
        String nom = request.getParameter("nombrePelicula");
        String porta = request.getParameter("portada");
        String link = request.getParameter("enlace");
        String sinops = request.getParameter("sinopsis");
        String anio = request.getParameter("year");
        String genre = request.getParameter("genero");
        String tipe = request.getParameter("tipo");
        
        String sql = "INSERT INTO peliculas (nombre,genero,year,tipo,img,enlace,sinopsis,popular,estado) "
                + "VALUES('" + nom + "','" + genre + "','" + anio + "','" + tipe + "','" + porta + "','" + link + "','" + sinops + "','0','1');";
        conexion con = new conexion();

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
    
    
        public List edicionPelicula(HttpServletRequest request) 
    {
        List datos = null;
        String pelicula = request.getParameter("peliculaID");
        HttpSession session = request.getSession();
        String nom = request.getParameter("nombrePelicula");
        String porta = request.getParameter("portada");
        String link = request.getParameter("enlace");
        String sinops = request.getParameter("sinopsis");
        String anio = request.getParameter("year");
        String genre = request.getParameter("genero");
        String tipe = request.getParameter("tipo");
        String trend = request.getParameter("popular");
        
        //String sql = "select * FROM peliculas WHERE id = " + pelicula + " ";
        
        String sql = "UPDATE peliculas SET nombre = '" + nom + "', genero = '" + genre + "', year = '" + anio + "', tipo = '" + tipe + "', img = '" + porta + "', enlace = '" + link + "', sinopsis = '" + sinops + "', popular = '" + trend + "' WHERE id = '" + pelicula + "'";
        conexion con = new conexion();

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
        
        
        
        
        
     public List edicionUsuario(HttpServletRequest request) 
    {
        List datos = null;
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
         conexion con = new conexion();

        if(nombre.equals("") || apellido.equals("") || correo.equals(""))
        {
            System.out.println("ERRROR");
            String sql ="";
            
        }
        else
        {
        //String sql = "UPDATE peliculas SET nombre = '" + nom + "', genero = '" + genre + "', year = '" + anio + "', tipo = '" + tipe + "', img = '" + porta + "', enlace = '" + link + "', sinopsis = '" + sinops + "', popular = '" + trend + "' WHERE id = '" + pelicula + "'";
       
        String sql = "UPDATE usuarios SET correo = '" + correo + "', nombre = '" + nombre + "', apellido = '" + apellido + "'  WHERE id = '" + id + "' ";
        

        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        }
        return datos;

    }
    
     
     
     
     
         public List registroCC(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        String codigoCC = request.getParameter("codigoCC");
        String cvv = request.getParameter("cvv");
        String nombreTarjeta = request.getParameter("nombreTarjeta");
        String anio = request.getParameter("year");
        String mes = request.getParameter("mes");
        String dia = request.getParameter("dia");
        
        conexion con = new conexion();
        String sql = "INSERT INTO \"public\".tarjetas (\"id_Usuario\",numero,fecha,codigo,nombre) VALUES ('" + id + "','" + codigoCC + "','" + anio+"-"+mes+"-"+dia+ "','" + cvv + "','" + nombreTarjeta + "')";
        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
    
    
         
     public List eliminarCC(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        //String id = (String) session.getAttribute("id");
        String id = request.getParameter("idCCborrar");
        
        conexion con = new conexion();
        //String sql = "INSERT INTO \"public\".tarjetas (\"id_Usuario\",numero,fecha,codigo,nombre) VALUES ('" + id + "','" + codigoCC + "','" + anio+"-"+mes+"-"+dia+ "','" + cvv + "','" + nombreTarjeta + "')";
        String sql = "DELETE FROM tarjetas WHERE id = '" + id + "' ";
        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
     
     
     
          public List eliminarFav(HttpServletRequest request) 
    {
        List datos = null;
        HttpSession session = request.getSession();
        String id = request.getParameter("idFavBorrar");
        
        conexion con = new conexion();
        //String sql = "INSERT INTO \"public\".tarjetas (\"id_Usuario\",numero,fecha,codigo,nombre) VALUES ('" + id + "','" + codigoCC + "','" + anio+"-"+mes+"-"+dia+ "','" + cvv + "','" + nombreTarjeta + "')";
        String sql = "DELETE FROM public.\"misFavoritos\" WHERE id = '" + id + "' ";
        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;

    }
     
     
     public List cargaFavoritos(HttpServletRequest request)
     {
         List datos = null;
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        conexion con = new conexion();
        
        String sql = "SELECT \"misFavoritos\".id_pelicula, \"misFavoritos\".id_usuario, peliculas.nombre, \"misFavoritos\".\"id\" FROM peliculas INNER JOIN \"misFavoritos\" ON  peliculas.\"id\" = \"misFavoritos\".id_pelicula WHERE \"misFavoritos\".id_usuario = '" + id + "' ";
        
        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;
         
     }
     
     
          public List nuevoFavorito(HttpServletRequest request)
     {
         List datos = null;
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        String idPelicula = request.getParameter("favoritosPeli");
        conexion con = new conexion();
        
        String sql = "INSERT INTO \"misFavoritos\" (id_pelicula,\"id_usuario\") VALUES ('" + idPelicula + "','" + id + "')";
        
        try 
        {
            datos = con.getQuery(sql);

        } catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
        return datos;
         
     }
     
    

}
