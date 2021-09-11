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
        <img src = "C:\Users\islad\Desktop\Projeto_Desenvolvimento_web\WebAcademia.png">
        <form action="processar.jsp">
        <div class="container">
            <div class="form-row">
                <div class="col-sm-2">
                    <label for="matricula">Numero de matricula:</label>
                    <input type="text" class="form-control" id="matricula" name="matricula" disabled>  
                </div> 
                <div class="col-sm-10">
                    <label for="nome">Nome:</label>
                    <input type="text" class="form-control" id="nome" name="nome" required="required">
                </div>
            </div>
            
            <div class="form-row">
                    <div class="col-sm-6">
                        <label for="email">Email(login):</label>
                        <input type="email" class="form-control" id="email" name="email" required="required">
                    </div>              
                    <div class="col-sm-3">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" name="cpf" pattern="[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}" title="xxx.xxx.xxx-xx" required="required">
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
                    <input type="text" class="form-control" id="rua" name="rua" required="required">
                </div>            
                <div class="col-sm-2">
                    <label for="numero">Nº:</label>
                    <input type="text" class="form-control" id="numero" name="numero" required="required">  
                </div>           
                    <div class="col-sm-4">
                    <label for="complemento">Complemento:</label>
                    <input type="text" class="form-control" id="complemento" name="complemento">
                </div>
            </div>
            
            <div class="form-row">
                <div class="col-sm-3">
                    <label for="cep">Cep:</label>
                    <input type="text" class="form-control" id="cep" name="cep" pattern="[0-9]{5}-[0-9]{3}" title="xxxxx-xx" required="required">  
                </div>
                <div class="col-sm-1">
                    <label for="estado">Estado:</label>
                    <input type="text" class="form-control" id="estado" name="estado" required="required"> 
                </div>
                <div class="col-sm-5">
                    <label for="cidade">Cidade:</label>
                    <input type="text" class="form-control" id="cidade" name="cidade" required="required"><br>
                </div>
                <div class="col-sm-3">
                    <label for="bairro">Bairro:</label>
                    <input type="text" class="form-control" id="bairro" name="bairro" required="required"><br> 
                </div>
            </div>
                
            <div>
                <p><strong>Selecione o sexo</strong></p>
            <input type="radio" class="form-control" id="sexo" name="sexo" value="Maculino" required="required">
            <label for="masculino">Masculino</label>
            <input type="radio" class="form-control" id="sexo" name="sexo" value="Feminino"required="required">
            <label for="feminino">Feminino</label>
            </div>
            
            <div>
              <p><strong>Selecione Seu Nivel</strong></p>
            <input type="radio" class="form-control" id="treino" name="treino" value="Inicial" required="required">
            <label for="inicial">Inicial</label>
            <input type="radio" class="form-control" id="treino" name="treino" value="Medium" required="required">
            <label for="medium">Medium</label>
            <input type="radio" class="form-control" id="treino" name="treino" value="Hard" required="required">
            <label for="hard">Hard</label><br><br>  
            </div>
      
            <div>
               <textarea name="message" rows="10" cols="30">
Observações
            </textarea><br> 
            </div>
            
           
           <input type="submit" value="Cadastrar" /> 
            
        </form>
        </div> 
    </body>
</html>
