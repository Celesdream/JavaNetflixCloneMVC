package model;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class login 
{
        public boolean login(HttpServletRequest request) 
        {

            String email = request.getParameter("email");
            String pass = request.getParameter("password");

            conexion con = new conexion();

            try 
            {
                //Falta colocar la contraseña en la consulta para el acceso
                String sql = "select * FROM usuarios  WHERE correo = '" + email + "' AND pass = crypt('" + pass + "', pass) ";

                List datos = con.getQuery(sql);
                    for (int i = 0; i < datos.size(); i++) {
                    HashMap temp = (HashMap) datos.get(i);
                }
                if (datos.size() > 0)
                {
                    HttpSession session = request.getSession();
                    HashMap map = (HashMap) datos.get(0);
                    session.setAttribute("id", map.get("id").toString());
                    String nombre = "";
                    nombre = map.get("nombre").toString();
                    session.setAttribute("nombre", nombre);
                    return true;
                }
                
            } catch (Exception e) 
                
            {
                System.out.println(e.getMessage());
            }

            return false;
        }
        
        
        public boolean loginAdmin(HttpServletRequest request) 
        {

            String email = request.getParameter("email");
            String pass = request.getParameter("password");

            conexion con = new conexion();

            try 
            {
                //Falta colocar la contraseña en la consulta para el acceso
                //String sql = "select * FROM admin  WHERE correo = '" + email + "' AND pass = '" + pass + "' ";
                String sql = "select * FROM admin  WHERE correo = '" + email + "' AND pass = crypt('" + pass + "', pass) ";

                List datos = con.getQuery(sql);
                    for (int i = 0; i < datos.size(); i++) 
                    {
                        HashMap temp = (HashMap) datos.get(i);
                    }

                if (datos.size() > 0)
                {
                    HttpSession session = request.getSession();
                    HashMap map = (HashMap) datos.get(0);
                    session.setAttribute("id", map.get("id").toString());
                    String nombre = "";
                    nombre = map.get("nombre").toString();
                    session.setAttribute("nombre", nombre);
                    return true;
                }
                
            } catch (Exception e) 
            {
                 System.out.println(e.getMessage());
            }
            return false;
        }
        
}
