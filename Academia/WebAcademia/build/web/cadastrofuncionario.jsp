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
        <link rel="stylesheet" href="css/globalcss.css">
        <title>Cadastro de funcionario</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telainicial.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastroaluno.jsp">Cadastro Aluno</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastrofuncionario.jsp">Cadastro Funcionario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telausuario.jsp">Area do Aluno</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telaprofessor.jsp">Area do Professor</a>
                </li>
            </ul>
        </nav>
        <form id="cadastra_funcionario" name="cadastrar_funcionario" action="processarfuncionario.jsp">  
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div>
                        <p>Cadastro de Funcionario</p>
                    </div> 
                    <div class="col-sm-12">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome_funcionario" name="nome_funcionario" placeholder="ex. nome">
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-3">
                        <label for="email">Email(login):</label>
                        <input type="email" class="form-control" id="email_funcionario" name="email_funcionario" placeholder="ex. contato@contato.com">
                    </div>
                    <div class="col-sm-3">
                        <label for="celular">celular/zap:</label>
                        <input type="text" class="form-control" id="telefone_funcionario" name="telefone_funcionario" placeholder="ex. (xx)xxxxx-xxxx">
                    </div>    
                    <div class="col-sm-3">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" name="cpf" placeholder="ex. xxx.xxx.xxx-xx">
                    </div>            
                    <div class="col-sm-3">
                        <label for="nascimento">Nascimento:</label>
                        <input type="date" class="form-control" id="nascimento" name="nascimento" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" title="dd/mm/aaaa">
                        <span class="validity"></span>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-6">
                        <label for="rua">Rua:</label>
                        <input type="text" class="form-control" id="rua" name="rua" placeholder="ex. rua sdafea">
                    </div>            
                    <div class="col-sm-2">
                        <label for="numero">Nº:</label>
                        <input type="text" class="form-control" id="numero" name="numero" placeholder="ex. 123">  
                    </div>           
                    <div class="col-sm-4">
                        <label for="complemento">Complemento:</label>
                        <input type="text" class="form-control" id="complemento" name="complemento">
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-sm-3">
                        <label for="cep">Cep:</label>
                        <input type="text" class="form-control" id="cep" name="cep" placeholder="ex. xxxxx-xx">  
                    </div>
                    <div class="col-sm-1">
                        <label for="estado">Estado:</label>
                        <input type="text" class="form-control" id="estado" name="estado" placeholder="ex. PE"> 
                    </div>
                    <div class="col-sm-5">
                        <label for="cidade">Cidade:</label>
                        <input type="text" class="form-control" id="cidade" name="cidade" placeholder="ex. Recife">
                    </div>
                    <div class="col-sm-3">
                        <label for="bairro">Bairro:</label>
                        <input type="text" class="form-control" id="bairro" name="bairro" placeholder="ex. Centro">
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-sm-3">
                        <label for="senha">Sua senha</label>
                        <input id="senha" name="senha" type="password" class="form-control" placeholder="ex. 1234" pattern="[^. ][A-Za-z0-9.]*[^. ][@][A-Za-z0-9.]*[^. ]" onkeyup="autorizacao()"/>
                    </div>
                    <div class="col-sm-3">
                        <label for="senha">Senha de autorização</label>
                        <input id="senha_auto" name="senha_auto" type="password" class="form-control" placeholder="ex. 1234" pattern="[^. ][A-Za-z0-9.]*[^. ][@][A-Za-z0-9.]*[^. ]" />
                    </div>
                </div>

                <p><strong>Selecione Função</strong></p>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" id="funcao" class="form-check-input" name="funcao">Recepcionista
                    </label>
                </div>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" id="funcao" class="form-check-input" name="funcao">Professor
                    </label>
                </div>
                <p> 
                    <button type="button" class="btn btn-primary" id="btn-salvar" name="btn-salvar" onclick="validarFormulario()">Enviar</button>
                </p>

                <p>  
                    Já tem conta?
                    <a href="http://localhost:8080/WebAcademia/telainicial.jsp"> Ir para Login </a>
                </p>
            </div>
        </div>
    </div> 
</form>
<script>
    validarFormulario = function () {
        //telefone_funcionario

        var nome = document.getElementById('nome_funcionario').value;
        var email = document.getElementById('email_funcionario').value;
        var cpf = document.getElementById('cpf').value;
        var rua = document.getElementById('rua').value;
        var numero = document.getElementById('numero').value;
        var cep = document.getElementById('cep').value;
        var estado = document.getElementById('estado').value;
        var cidade = document.getElementById('cidade').value;
        var bairro = document.getElementById('bairro').value;
        var senha = document.getElementById('senha').value;
        var senha_auto = document.getElementById('senha_auto').value;

        if (nome.trim() == "") {
            alert('Informe o nome do funcionario');
            return;
        } else if (nome.length < 10) {
            alert('O nome do funcionario deverá ter mais de 10 caracteres');
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
        if (senha_auto.trim() == "") {
            alert('Informe senha de autorização');
            return;
        }
        document.getElementById('cadastra_funcionario').submit();
    }
    //function autorizacao() {
    //    let senha1 = document.getElementById("senha");
     //   let senha2 = document.getElementById("senha_auto");
     //   let s1 = "admin";
    //    let s2 = senha2.value;
    //    if (s1 == s2) {
     //       alert("Dados Cadastrados");
     //       return true;
     //   } else {
      //      alert("Senhas não batem. Verifique senha de autorização.");
     //       return false;
     //   }
   // }
</script>
</body>
</html>
</body>
</html>
