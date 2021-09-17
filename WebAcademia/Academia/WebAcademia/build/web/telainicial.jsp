<%-- 
    Document   : telainicial
    Created on : 3 de set. de 2021, 18:56:50
    Author     : islad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Minha Academia</title>

</head>

<body>  
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="http://localhost:8080/WebAcademia/telainicial.jsp">Inicio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastroaluno.jsp">Cadastro Aluno</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastrofuncionario.jsp">Cadastro Funcionario</a>
            </li>
        </ul>
    </nav>
    <form>
        <div class="container col-sm-3 bg-dark text-white" style= "margin-top: 100px;">
            <div class="form-row">
                <div class="col-sm-12">
                    <h1>Login</h1>
                    <p> 
                        <label for="nome_login">Seu nome</label>
                        <input id="nome_login" name="nome_login" type="text" class="form-control" placeholder="ex. contato@htmlecsspro.com" required="required"/>
                    </p>

                    <p> 
                        <label for="email_login">Seu e-mail</label>
                        <input id="email_login" name="email_login" type="password" class="form-control" placeholder="ex. senha" required="required" /> 
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
                </div>
            </div>
        </div>
    </form>

</body>

</html>

