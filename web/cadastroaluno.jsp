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
        <link rel="stylesheet" href="css/globalcss.css">
        <title>Cadastro Aluno</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telainicial.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="http://localhost:8080/WebAcademia/cadastroaluno.jsp">Cadastro Aluno</a>
                </li>
                <%
                    int x=0;//verificar se usuario tem permissão
                    if (x==0){
                %>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastrofuncionario.jsp">Cadastro Funcionario</a>
                </li>
                <%}%>
               
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telaavaliacao.jsp">Avaliações</a>
                </li>
            </ul>
        </nav>
        <form id="cadastrar_aluno" name="cadastrar_aluno" action="processaraluno.jsp">
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-2">
                        <label for="matricula_aluno">Numero de matricula:</label>
                        <input type="text" class="form-control" id="matricula_aluno" name="matricula_aluno" disabled>  
                    </div> 
                    <div class="col-sm-10">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="ex. nome" >
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-3">
                        <label for="email">Email(login):</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="ex. contato@contato.com" required="required">
                    </div>
                    <div class="col-sm-3">
                        <label for="celular">celular/zap:</label>
                        <input type="text" class="form-control" id="celular" name="celular" placeholder="ex. (xx)xxxxx-xxxx"required="required">
                    </div>    
                    <div class="col-sm-3">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" name="cpf" placeholder="ex. xxx.xxx.xxx-xx" pattern="[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}"required="required">
                    </div>
                    <div class="col-sm-3">
                        <label for="nascimento">Data de Nascimento:</label>
                        <input type="date" class="form-control" id="nascimento" name="nascimento" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" title="dd/mm/aaaa" required="required">
                        <span class="validity"></span> 
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-8">
                        <label for="rua">Rua:</label>
                        <input type="text" class="form-control" id="rua" name="rua" placeholder="ex. rua sdafea" required="required">
                    </div>            
                    <div class="col-sm-4">
                        <label for="numero">Nº:</label>
                        <input type="text" class="form-control" id="numero" name="numero" placeholder="ex. 123" required="required">  
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
                        <input type="text" class="form-control" id="cidade" name="cidade" placeholder="ex. Recife" required="required">
                    </div>
                    <div class="col-sm-3">
                        <label for="bairro">Bairro:</label>
                        <input type="text" class="form-control" id="bairro" name="bairro" placeholder="ex. Centro" required="required">
                    </div>
                </div>

                <div>
                    <p><strong>Selecione o sexo</strong></p>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="sexo" value="masculino">Masculino
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="sexo" value=" feminino">Feminino
                        </label>
                    </div>
                </div>
                <div class="col-sm-3">
                    <label for="senha">Sua senha</label>
                    <input id="senha" name="senha" type="password" class="form-control" placeholder="ex. 1234" pattern="[^. ][A-Za-z0-9.]*[^. ][@][A-Za-z0-9.]*[^. ]" required="required"/><br>
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-primary" id="btn-salvar" name="btn-salvar" onclick="validarFormularioAluno()">Cadastrar</button>
                    <button type="button" class="btn btn-info" onclick="voltar();">Voltar</button>
                </div>
            </div> 
        </form>
        <script>
            $(document).ready(function () {
                voltar = function () {
                    window.location.href = "telarecepcao.jsp";
                }
            });
            validarFormularioAluno = function () {
              

                var nome = document.getElementById('nome').value;
                var email = document.getElementById('email').value;
                var cpf = document.getElementById('cpf').value;
                var rua = document.getElementById('rua').value;
                var numero = document.getElementById('numero').value;
                var cep = document.getElementById('cep').value;
                var estado = document.getElementById('estado').value;
                var cidade = document.getElementById('cidade').value;
                var bairro = document.getElementById('bairro').value;
                var senha = document.getElementById('senha').value;

                if (nome.trim() == "") {
                    alert('Informe o nome do aluno');
                    return;
                } else if (nome.length < 10) {
                    alert('O nome do aluno deverá ter mais de 10 caracteres');
                    return;
                }
                if (email.indexOf("@") == -1 || email.indexOf(".") == -1 || email.trim() == "") {
                    alert('Por favor, indique um e-mail válido.');
                    return;
                }
                cpf = cpf.replace(/[^\d]+/g, '')
                if (cpf.trim().length != 11) {
                    alert('Informe cpf valido');
                    return;
                }
                if (rua.trim() == "") {
                    alert('Informe nome da rua');
                    return;
                }
                if (numero.trim() == "") {
                    alert('Informe numero da casa');
                    return;
                }
                cep = cep.replace(/[^\d]+/g, '')
                if (cep.trim().length != 8) {
                    alert('Informe CEP valido');
                    return;
                }
                if (estado.trim() == "") {
                    alert('Informe estado');
                    return;
                } else if (estado.length != 2) {
                    alert('informe abreviação do estado');
                    return;
                }
                if (cidade.trim() == "") {
                    alert('Informe a cidade');
                    return;
                }
                if (bairro.trim() == "") {
                    alert('Informe bairro');
                    return;
                }
                if (senha.trim() == "") {
                    alert('Informe senha');
                    return;
                }

                document.getElementById('cadastrar_aluno').submit();
            }

        </script>
    </body>
</html>
