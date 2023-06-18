package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.utilities;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class viewController 
{
    
        @RequestMapping("index.do")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        //Validar Acceso
        utilities u = new utilities();
        u.destroySession(request);

        String error = request.getParameter("error");

        ModelAndView mav = new ModelAndView();
        mav.addObject("error", error);
        mav.setViewName("index");
        return mav;

    }
    
    
            @RequestMapping("adminLogin.do")
    public ModelAndView adminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        //Validar Acceso
        utilities u = new utilities();
        u.destroySession(request);

        String error = request.getParameter("error");

        ModelAndView mav = new ModelAndView();
        mav.addObject("error", error);
        mav.setViewName("adminLogin");
        return mav;
    }
    

    

    
}
