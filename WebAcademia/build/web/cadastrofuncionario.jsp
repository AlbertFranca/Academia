<%-- 
    Document   : cadastrofuncionario
    Created on : 8 de set. de 2021, 16:13:48
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
        <form method="post" action=""> 
          <h1>Cadastro</h1> 
           
          <p> 
            <label for="nome_cad">Seu nome</label>
            <input id="nome_cad" name="nome_cad" type="text" placeholder="nome" required="required" />
          </p>
           
          <p> 
            <label for="email_cad">Seu e-mail</label>
            <input id="email_cad" name="email_cad" type="email" placeholder="contato@htmlecsspro.com" required="required"/> 
          </p>
           
          <p> 
            <label for="senha_cad">Sua senha</label>
            <input id="senha_cad" name="senha_cad" type="password" placeholder="ex. 1234" required="required"/>
          </p>
          
          <p><strong>Selecione Função
            <input type="radio" id="funcao" name="funcao" value="recepcao" required="required">
            <label for="recepcao">Recepção</label>
            <input type="radio" id="funcao" name="funcao" value="professor"required="required">
            <label for="professor">prodessor</label>
          </p>
          
          <p> 
            <input type="submit" value="Cadastrar"/> 
          </p>
           
          <p>  
            Já tem conta?
            <a href="http://localhost:8080/WebAcademia/telainicial.jsp"> Ir para Login </a>
          </p>
        </form>
      </div>
    </div>
  </div>  
</body>
</html>
    </body>
</html>
