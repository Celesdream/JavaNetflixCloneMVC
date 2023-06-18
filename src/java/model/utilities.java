package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class utilities 
{

    public void destroySession(HttpServletRequest request)
     {
        HttpSession session = request.getSession();
        session.invalidate();
    }

    public Object checkSession(HttpServletRequest request) 
    {

        HttpSession session = request.getSession();
        return session.getAttribute("id");
    }
}
