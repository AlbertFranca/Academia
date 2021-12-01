<%-- 
    Document   : processarlogin
    Created on : 25 de nov. de 2021, 16:45:50
    Author     : islad
--%>
<%@page import="login.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
	
        User us = new User();
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        boolean status = us.verificarFuncionario(email, senha);

        if (us.result == true) {
                response.sendRedirect("telagestao.jsp");
        } else {
    out.println("<script type=\"text/javascript\">");
    out.println("alert('Usuario ou senha invalido');");
    out.println("location='telainicial.jsp';");
    out.println("</script>");       
        }

        %>;

    </body>
</html>
