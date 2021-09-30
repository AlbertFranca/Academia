<%-- 
    Document   : processar
    Created on : 3 de set. de 2021, 18:54:08
    Author     : islad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String celular = request.getParameter("celular");
            String cpf = request.getParameter("cpf");
            String nascimento = request.getParameter("nascimento");
            String rua = request.getParameter("rua");
            String complemento = request.getParameter("complemento");
            String cep = request.getParameter("cep");
            String estado = request.getParameter("estado");
            String cidade = request.getParameter("cidade");
            String bairro = request.getParameter("bairro");
            String senha = request.getParameter("senha");
            String funcao = request.getParameter("funcao");
            
            out.print(nome);
            out.print(email);
            out.print(celular);
            out.print(cpf);
            out.print(nascimento);
            out.print(rua);
            out.print(complemento);
            out.print(cep);
            out.print(estado);
            out.print(cidade);
            out.print(bairro);
            out.print(senha);
            out.print(funcao);

        %>
        
    </body>
</html>

