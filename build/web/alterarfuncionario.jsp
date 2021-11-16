<%-- 
    Document   : alterarfuncionario
    Created on : 27 de out. de 2021, 16:51:07
    Author     : islad
--%>
<%@page import="funcionario.FuncionarioCRUD"%>
<%@page import="funcionario.Funcionario"%>
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
        <title>Alterar funcionario</title>
    </head>
    <body>
        <%
            FuncionarioCRUD dados = new FuncionarioCRUD();
            String matricula_funcionario = request.getParameter("matricula_funcionario");
            Funcionario a = dados.getFuncionario(Integer.parseInt(matricula_funcionario));

        %>
 
        <form id="alterar_funcionario" name="alterar_funcionario" action="processarupdatefuncionario.jsp">  
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-2">     
                        <label for="matricula">Numero de matricula:<%out.print(a.getMatricula_funcionario());%></label>
                        <input readonly="true" type="hidden" class="form-control" id="matricula_funcionario" name="matricula_funcionario" value="<%=a.getMatricula_funcionario()%>" >  
                    </div> 
                    <div class="col-sm-12">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="ex. nome" required="required" value="<%=a.getNome()%>">
                    </div>
                </div>           
            <div class="form-row">
                <div class="col-sm-3">
                    <label for="email">Email(login):</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="ex. contato@contato.com" value="<%=a.getEmail()%>">
                </div>
                <div class="col-sm-3">
                    <label for="celular">celular/zap:</label>
                    <input type="text" class="form-control" id="celular" name="celular" placeholder="ex. (xx)xxxxx-xxxx" value="<%=a.getCelular()%>">
                </div>
                <div class="col-sm-3">
                    <label for="cpf">CPF:</label>
                    <input type="text" class="form-control" id="cpf" name="cpf" placeholder="ex. xxx.xxx.xxx-xx" pattern="[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}" value="<%=a.getCpf()%>" >
                </div>
                <div class="col-sm-3">
                    <label for="nascimento">Nascimento:</label>
                    <input type="date" class="form-control" id="nascimento" name="nascimento" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" title="dd/mm/aaaa" value="<%=a.getNascimento()%>">
                    <span class="validity"></span>
                </div>
            </div>

            <div class="form-row">
                <div class="col-sm-8">
                    <label for="rua">Rua:</label>
                    <input type="text" class="form-control" id="rua" name="rua" placeholder="ex. rua sdafea" value="<%=a.getRua()%>">
                </div>            
                <div class="col-sm-4">
                    <label for="numero">Nº:</label>
                    <input type="text" class="form-control" id="numero" name="numero" placeholder="ex. 123" value="<%=a.getNumero()%>">  
                </div>           
            </div>

            <div class="form-row">
                <div class="col-sm-3">
                    <label for="cep">Cep:</label>
                    <input type="text" class="form-control" id="cep" name="cep" placeholder="ex. xxxxx-xx" value="<%=a.getCep()%>">  
                </div>
                <div class="col-sm-1">
                    <label for="estado">Estado:</label>
                    <input type="text" class="form-control" id="estado" name="estado" placeholder="ex. PE" value="<%=a.getEstado()%>"> 
                </div>
                <div class="col-sm-5">
                    <label for="cidade">Cidade:</label>
                    <input type="text" class="form-control" id="cidade" name="cidade" placeholder="ex. Recife" value="<%=a.getCidade()%>">
                </div>
                <div class="col-sm-3">
                    <label for="bairro">Bairro:</label>
                    <input type="text" class="form-control" id="bairro" name="bairro" placeholder="ex. Centro" value="<%=a.getBairro()%>">
                </div>
            </div>
                                <div>
                    <p><strong>Selecione Função</strong></p>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <% if(a.getFuncao().equals("recepcionista")){ %>
                            <input checked type="radio" class="form-check-input" name="funcao" value="recepcionista">Recepcionista
                            <% }else{%>
                                <input type="radio" class="form-check-input" name="funcao" value="recepcionista">Recepcionista
                            <%} %>
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <% if(a.getFuncao().equals("professor")){ %>
                            <input checked type="radio" class="form-check-input" name="funcao" value="professor">Professor
                            <% }else{%>
                                <input type="radio" class="form-check-input" name="funcao" value="professor">Professor
                            <%} %>
                            
                        </label>
                    </div>
                </div>
            <div class="col-sm-3">
                <label for="senha">Sua senha</label>
                <input id="senha" name="senha" type="password" class="form-control" placeholder="ex. 1234" pattern="[^. ][A-Za-z0-9.]*[^. ][@][A-Za-z0-9.]*[^. ]"/>
            </div>         
            <div class="form-group">
                <br><button type="button" class="btn btn-primary" id="btn-salvar" name="btn-salvar" onclick="validarFormularioFuncionario()">Alterar</button>
                <button type="button" class="btn btn-info" onclick="voltar();">Voltar</button>
            </div>
        </div>
    </div>
</div> 
</form>
<script>
    $(document).ready(function () {
                voltar = function () {
                    window.location.href = "telagestao.jsp";
                }
            });
    validarFormularioFuncionario = function () {
        //telefone_funcionario

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
        document.getElementById('alterar_funcionario').submit();
    }

</script>
</body>
</html>
