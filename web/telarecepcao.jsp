<%-- 
    Document   : telarecepcao
    Created on : 22 de set. de 2021, 20:43:06
    Author     : islad
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="aluno.Aluno"%>
<%@page import="aluno.AlunoCRUD"%>
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
       <style>
            p{text-align: center; font-size: 20px; color: white; font-weight: bold;}
        </style>  
            <p>Alunos Cadastrados</p>
   <center><a class="btn btn-primary" href="cadastroaluno.jsp">Novo Aluno</a></center>
                    <table class="table table-dark table-striped " style=" width: 100%;" >
                        <thead>
                            <tr>
                                <th>Matricula</th>
                                <th>Nome</th>
                                <th>CPF</th>
                                <th>Nascimento</th>
                                <th>Sexo</th>
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
                                AlunoCRUD dados = new AlunoCRUD();
                                ArrayList<Aluno> lista = dados.selectAluno();
                                for (Aluno a : lista) {
                                    out.print("<tr>");
                                    out.print("<td>" + a.getMatricula_aluno() + "</td>");
                                    out.print("<td>" + a.getNome() + "</td>");
                                    out.print("<td>" + a.getCpf() + "</td>");
                                    out.print("<td>" + a.getNascimento() + "</td>");
                                    out.print("<td>" + a.getSexo() + "</td>");
                                    out.print("<td>" +"Rua: "+ a.getRua() +" "+ a.getCidade() +" "+ a.getBairro() +" "+ a.getEstado() +" Nº "+ a.getNumero() +"</td>");
                                    out.print("<td>" + a.getCep() + "</td>");
                                    out.print("<td>" + a.getEmail() + "</td>");
                                    out.print("<td>" + a.getCelular() + "</td>");
                                    out.print("<td>" + a.getSenha() + "</td>");
                                    out.print("<td>");
                                    out.print("<a class='btn btn-warning' href='alteraraluno.jsp?matricula_aluno=" + a.getMatricula_aluno() + "' >Alterar</a>");
                                    out.print("<a class='btn btn-danger' href='#' onclick='abrirMensagemRemocao(" + a.getMatricula_aluno() + ")');'>Remover</a>");
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
                        Deseja realmente remover o aluno?
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" onclick="removerAluno();">Remover</button>
                    </div>

                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                let matricula_alunoSelecionada;
                abrirMensagemRemocao = function (matricula_aluno) {
                    matricula_alunoSelecionada = matricula_aluno;
                    $("#myModal").modal();
                }
                removerAluno = function (matricula_aluno) {
                    window.location.href = "processardeletaraluno.jsp?matricula_aluno=" + matricula_alunoSelecionada;
                }
            });
        </script>
    </body>
</html>
