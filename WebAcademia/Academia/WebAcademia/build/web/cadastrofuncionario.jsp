<%-- 
    Document   : cadastrofuncionario
    Created on : 8 de set. de 2021, 16:13:48
    Author     : islad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <title>Cadastro de funcionario</title>
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
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-12">
                        <h1>Cadastro de funcionario</h1> 

                        <p> 
                            <label for="nome_cad">Seu nome</label>
                            <input id="nome_cad" name="nome_cad" type="text" class="form-control" placeholder="ex. nome" required="required" />
                        </p>

                        <p> 
                            <label for="email_cad">Seu e-mail</label>
                            <input id="email_cad" name="email_cad" type="email" class="form-control" placeholder="ex. contato@htmlecsspro.com" required="required"/> 
                        </p>

                        <p> 
                            <label for="senha_cad">Sua senha</label>
                            <input id="senha_cad" name="senha_cad" type="password" class="form-control" placeholder="ex. 1234" required="required"/>
                        </p>

                        <p><strong>Selecione Função</strong></p>
                        <div class="form-check-inline">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="funcao">Recepcionista
                            </label>
                        </div>
                        <div class="form-check-inline">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="funcao">Professor
                            </label>
                        </div>
                        <p> 
                            <input type="submit" value="Cadastrar"/> 
                        </p>

                        <p>  
                            Já tem conta?
                            <a href="http://localhost:8080/WebAcademia/telainicial.jsp"> Ir para Login </a>
                        </p>
                    </div>
                </div>
            </div> 
        </form>
    </body>
</html>
</body>
</html>
