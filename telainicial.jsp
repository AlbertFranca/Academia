<%-- 
    Document   : telainicial
    Created on : 3 de set. de 2021, 18:56:50
    Author     : islad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Minha Academia</title>

    </head>
<style>
    body  
        
        {
        background-image: url('academia.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed; 
        background-size: 100% 100%
     }
        </style>
        
           <form>
               
          <h1>Login</h1>
          <p> 
            <label for="nome_login">Seu nome</label>
            <input id="nome_login" name="nome_login" type="text" placeholder="ex. contato@htmlecsspro.com" required="required"/>
          </p>
           
          <p> 
            <label for="email_login">Seu e-mail</label>
            <input id="email_login" name="email_login" type="password" placeholder="ex. senha" required="required" /> 
          </p>
           
          <p> 
            <input type="checkbox" name="manterlogado" id="manterlogado" value="" /> 
            <label for="manterlogado">Manter-me logado</label>
          </p>
           
          <p> 
            <input type="submit" value="Logar" /> 
          </p>
           
          <p>
            Ainda não tem conta?
            <a href="http://localhost:8080/WebAcademia/cadastrofuncionario.jsp">Cadastre-se</a>
          </p>
                    </form>

    </body>

</html>

