package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.admin;
import model.home;
import model.utilities;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class adminController 
{

    @RequestMapping("admin.do") 
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

        admin c = new admin();
        List cuenta = c.obtenerDatosAdmin(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("cuenta", cuenta);
        mav.setViewName("admin");
        return mav;

    }

    @RequestMapping("listadoPeliculas.do")
    public ModelAndView listadoPeliculas(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {
        /// Validar Acceso
        utilities u = new utilities();
        Object acceso = u.checkSession(request);
        if (acceso == null) 
        {
            response.sendRedirect("../index.do");
            return null;
        }

        String pruebas = request.getParameter("prueba");
        admin c = new admin();
        List peliculas = c.listadoPeliculas(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("peliculas", peliculas);
        mav.setViewName("listadoPeliculas"); // nombre del jsp
        return mav;

    }

    @RequestMapping("listadoUsuarios.do")
    public ModelAndView listadoUsuarios(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        /// Validar Acceso
        utilities u = new utilities();
        Object acceso = u.checkSession(request);
        if (acceso == null) {
            response.sendRedirect("../index.do");
            return null;
        }

        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        admin c = new admin();
        List cuenta = c.listadoUsuarios(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("id", id);
        mav.addObject("cuenta", cuenta);
        mav.setViewName("listadoUsuarios"); // nombre del jsp
        return mav;

    }

}
