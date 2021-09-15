<%-- 
    Document   : cadastroaluno
    Created on : 2 de set. de 2021, 22:25:17
    Author     : islad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <title>Cadastro Aluno</title>
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
        <form action="processar.jsp">
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-2">
                        <label for="matricula">Numero de matricula:</label>
                        <input type="text" class="form-control" id="matricula" name="matricula" disabled>  
                    </div> 
                    <div class="col-sm-10">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="ex. nome" required="required">
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-6">
                        <label for="email">Email(login):</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="ex. contato@htmlecsspro.com" required="required">
                    </div>              
                    <div class="col-sm-3">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" name="cpf" placeholder="ex. xxx.xxx.xxx-xx" pattern="[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}"required="required">
                    </div>            
                    <div class="col-sm-3">
                        <label for="nascimento">Nascimento:</label>
                        <input type="date" class="form-control" id="nascimento" name="nascimento" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" title="dd/mm/aaaa" required="required">
                        <span class="validity"></span>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-6">
                        <label for="rua">Rua:</label>
                        <input type="text" class="form-control" id="rua" name="rua" placeholder="ex. rua sdafea" required="required">
                    </div>            
                    <div class="col-sm-2">
                        <label for="numero">Nº:</label>
                        <input type="text" class="form-control" id="numero" name="numero" placeholder="ex. 123" required="required">  
                    </div>           
                    <div class="col-sm-4">
                        <label for="complemento">Complemento:</label>
                        <input type="text" class="form-control" id="complemento" name="complemento">
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-3">
                        <label for="cep">Cep:</label>
                        <input type="text" class="form-control" id="cep" name="cep" placeholder="ex. xxxxx-xx" pattern="[0-9]{5}-[0-9]{3}"required="required">  
                    </div>
                    <div class="col-sm-1">
                        <label for="estado">Estado:</label>
                        <input type="text" class="form-control" id="estado" name="estado" placeholder="ex. PE" required="required"> 
                    </div>
                    <div class="col-sm-5">
                        <label for="cidade">Cidade:</label>
                        <input type="text" class="form-control" id="cidade" name="cidade" placeholder="ex. Recife" required="required"><br>
                    </div>
                    <div class="col-sm-3">
                        <label for="bairro">Bairro:</label>
                        <input type="text" class="form-control" id="bairro" name="bairro" placeholder="ex. Centro" required="required"><br> 
                    </div>
                </div>

                <div>
                    <p><strong>Selecione o sexo</strong></p>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="sexo">Masculino
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="sexo">Feminino
                        </label>
                    </div>
                    <p><strong>Selecione Plano</strong></p>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="plano">Bronse
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="plano">Prata
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="plano">Ouro
                        </label>
                    </div>         
                </div>

                <div>
                    <textarea name="message" rows="10" cols="30">
Observações
                    </textarea><br> 
                </div>
                <input type="submit" value="Cadastrar" /> 
            </div> 
        </form>
    </div> 
</body>
</html>
