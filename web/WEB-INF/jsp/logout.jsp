<%-- 
    Document   : logout
    Created on : 26/07/2022, 07:54:53 PM
    Author     : pedma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
                                                <%
session.invalidate();
response.sendRedirect("index.do");
%>
    </body>
</html>
