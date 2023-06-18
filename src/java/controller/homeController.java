
package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.home;
import model.utilities;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homeController 
{
    
    @RequestMapping("home.do") // REQUESSSSSSTTTTTT
    public ModelAndView cotizaciones(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        /// Validar Acceso
        utilities u = new utilities();
        Object acceso = u.checkSession(request);
        if (acceso == null) 
        {
            response.sendRedirect("../index.do");
            return null;
        }

        HttpSession session = request.getSession();
        String clasificacion = (String) session.getAttribute("clasificacion");

        String id = request.getParameter("id");

        home c = new home();
        List peliculas = c.obtenerPeliculas(request);
        ModelAndView mav = new ModelAndView();
        String id_cotizacion = request.getParameter("invitacionCotizaID");
        mav.addObject("id", id);
        mav.addObject("peliculas", peliculas);
        mav.setViewName("home"); // nombre del jsp
        return mav;

    }
    
        // inicia el apartado de cotizaciones de la dependencia
    @RequestMapping("account.do") // REQUESSSSSSTTTTTT
    public ModelAndView account(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        /// Validar Acceso
        utilities u = new utilities();
        Object acceso = u.checkSession(request);
        if (acceso == null) 
        {
            response.sendRedirect("../index.do");
            return null;
        }

        HttpSession session = request.getSession();

        String id = request.getParameter("id");

        home c = new home();
        List cuenta = c.obtenerDatosUsuario(request);
        ModelAndView mav = new ModelAndView();
        String id_cotizacion = request.getParameter("invitacionCotizaID");
        mav.addObject("id", id);
        mav.addObject("cuenta", cuenta);
        mav.setViewName("account"); // nombre del jsp
        return mav;

    }
    
    
    
    
    
        @RequestMapping("reproductor.do") // REQUESSSSSSTTTTTT
    public ModelAndView reproductor(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        /// Validar Acceso
        utilities u = new utilities();
        Object acceso = u.checkSession(request);
        if (acceso == null) 
        {
            response.sendRedirect("../index.do");
            return null;
        }

        HttpSession session = request.getSession();

        String id = request.getParameter("id");

        home c = new home();
        List pelicula = c.reproducirPelicula(request);
        ModelAndView mav = new ModelAndView();
        String Pelicula = request.getParameter("pelicula");
        mav.addObject("id", id);
        mav.addObject("pelicula", pelicula);
        mav.setViewName("reproductor"); // nombre del jsp
        return mav;

    }
    
    
    
    
    
        @RequestMapping("registro.do") // REQUESSSSSSTTTTTT
    public ModelAndView registro(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        home c = new home();
        //List cuenta = c.obtenerDatosUsuario(request);
        ModelAndView mav = new ModelAndView();
        String nom = request.getParameter("nombre");
       // mav.addObject("id", id);
       // mav.addObject("cuenta", cuenta);
        mav.setViewName("registro"); // nombre del jsp
        return mav;

    }
    
    @RequestMapping("salir.do") // REQUESSSSSSTTTTTT
    public ModelAndView salir(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        String id = request.getParameter("id");
        home c = new home();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("logout"); // nombre del jsp
        return mav;
    }
    
    
    @RequestMapping("editarPelicula.do") // REQUESSSSSSTTTTTT
    public ModelAndView registroPeliculas(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        home c = new home();
       List pelicula = c.cargarelicula(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("pelicula", pelicula);
        mav.setViewName("editarPelicula"); // nombre del jsp
        return mav;
    }
    
    
    
        @RequestMapping("editarUsuarioMod.do") // REQUESSSSSSTTTTTT
    public ModelAndView editarUsuarioMod(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        home c = new home();
        List user = c.editarUsuarioVi(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("usuario", user);
        mav.setViewName("editarUsuarioMod"); // nombre del jsp
        return mav;
    }
    
    
    
            @RequestMapping("registrarPelicula.do")
    public ModelAndView registrarPelicula(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        home c = new home();
        //List cuenta = c.registroPelicula(request);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("registroPeliculas"); // nombre del jsp
        return mav;

    }
    
    
    
    @RequestMapping("editarCuenta.do")
    public ModelAndView editarCuenta(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        home c = new home();
        List cuenta = c.obtenerDatosUsuario(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("cuenta", cuenta);
        mav.setViewName("editarCuenta"); // nombre del jsp
        return mav;

    }
    

    
        @RequestMapping("listadoCC.do")
    public ModelAndView listadoCC(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        home c = new home();
        List cuenta = c.obtenerDatocCC(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("cuenta", cuenta);
        mav.setViewName("listadoCC"); // nombre del jsp
        return mav;

    }
    
    
    @RequestMapping("nuevoCC.do")
    public ModelAndView nuevoCC(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        home c = new home();
        ModelAndView mav = new ModelAndView();
        mav.addObject("id", id);
        mav.setViewName("nuevoCC"); // nombre del jsp
        return mav;

    }
    
    
        @RequestMapping("misFavoritos.do")
    public ModelAndView misFavoritos(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        home c = new home();
        List fav = c.cargaFavoritos(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("id", id);
        mav.addObject("fav", fav);
        mav.setViewName("favoritos"); // nombre del jsp
        return mav;

    }


}