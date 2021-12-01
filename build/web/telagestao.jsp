<%-- 
    Document   : telarecepcao
    Created on : 22 de set. de 2021, 20:43:06
    Author     : islad
--%>
<%@page import="java.util.ArrayList"%>
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
        <title>Tela do recepcionista</title>
   <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telainicial.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telarecepcao.jsp">Cadastros de Alunos</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telagestao.jsp">Cadastro Funcionario</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telaavaliacao.jsp">Avaliações</a>
                </li>
            </ul>
        </nav>
       <style>
            p{text-align: center; font-size: 20px; color: white; font-weight: bold;}
        </style>  
            <p>Funcionarios Cadastrados</p>
   <center><a class="btn btn-primary" href="cadastrofuncionario.jsp">Novo Funcionario</a></center>
                    <table class="table table-dark table-striped " style=" width: 100%;" >
                        <thead>
                            <tr>
                                <th>Matricula</th>
                                <th>Cargo</th>
                                <th>Nome</th>
                                <th>CPF</th>
                                <th>Nascimento</th>
                                <th>Endereço</th>
                                <th>Cep</th>
                                <th>Email</th>
                                <th>Celular</th>
                                <th>Senha</th>
                                <th>Funções</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                FuncionarioCRUD dados = new FuncionarioCRUD();
                                ArrayList<Funcionario> lista = dados.selectFuncionario();
                                for (Funcionario a : lista) {
                                    out.print("<tr>");
                                    out.print("<td>" + a.getMatricula_funcionario() + "</td>");
                                    out.print("<td>" + a.getFuncao() + "</td>");
                                    out.print("<td>" + a.getNome() + "</td>");
                                    out.print("<td>" + a.getCpf() + "</td>");
                                    out.print("<td>" + a.getNascimento() + "</td>");
                                    out.print("<td>" +"Rua: "+ a.getRua() +" "+ a.getCidade() +" "+ a.getBairro() +" "+ a.getEstado() +" Nº "+ a.getNumero() +"</td>");
                                    out.print("<td>" + a.getCep() + "</td>");
                                    out.print("<td>" + a.getEmail() + "</td>");
                                    out.print("<td>" + a.getCelular() + "</td>");
                                    out.print("<td>" + a.getSenha() + "</td>");
                                    out.print("<td>");
                                    out.print("<a class='btn btn-warning' href='alterarfuncionario.jsp?matricula_funcionario=" + a.getMatricula_funcionario() + "' >Alterar</a>");
                                    out.print("<a class='btn btn-danger' href='#' onclick='abrirMensagemRemocao(" + a.getMatricula_funcionario() + ")');'>Remover</a>");
                                    out.print("</td>");
                                    out.print("</tr>");
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer"></div>
            </div>
        </div>

        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Atenção</h4>
                        <button type="button" class="close" data-dismiss="modal">×</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        Deseja realmente remover o funcionario?
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" onclick="removerFuncionario();">Remover</button>
                    </div>

                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                let matricula_funcionarioSelecionada;
                abrirMensagemRemocao = function (matricula_funcionario) {
                    matricula_funcionarioSelecionada = matricula_funcionario;
                    $("#myModal").modal();
                }
                removerFuncionario = function (matricula_funcionario) {
                    window.location.href = "processardeletarfuncionario.jsp?matricula_funcionario=" + matricula_funcionarioSelecionada;
                }
            });
        </script>
    </body>
</html>

