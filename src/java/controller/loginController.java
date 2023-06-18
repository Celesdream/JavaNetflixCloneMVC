package controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.login;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class loginController 
{
    @RequestMapping("clock/login.do")
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        login l = new login();
        boolean acceso = l.login(request);

        if (acceso) 
        {
            response.sendRedirect("../home.do");
        } 
        else 
        {
            System.out.println("ERROR");
            response.sendRedirect("../index.do");
        }

    }
    
    
        @RequestMapping("admin/login.do")
    public void adminlogin(HttpServletRequest request, HttpServletResponse response) throws IOException 
    {

        login l = new login();
        boolean acceso = l.loginAdmin(request);

        if (acceso) 
        {
            System.out.println("HO;LAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
            response.sendRedirect("../admin.do");
        } 
        else 
        {
            System.out.println("ERROR");
            response.sendRedirect("../index.do");
        }

    }
}
