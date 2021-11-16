<%-- 
    Document   : telarecepcao
    Created on : 22 de set. de 2021, 20:43:06
    Author     : islad
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="avaliacao.Avaliacao"%>
<%@page import="avaliacao.AvaliacaoCRUD"%>
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
            p{
                text-align: center;
                font-size: 20px;
                color: white;
                font-weight: bold;
            }
        </style>  
        <p>Avaliações cadastradas</p>
    <center><a class="btn btn-primary" href="cadastroavaliacao.jsp">Nova Avaliação</a></center>
    <table class="table table-dark table-striped " style=" width: 100%;" >
        <thead>
            <tr>
                <th>IdAvaliação</th>
                <th>Aluno</th>
                <th>Tipo</th>
                <th>Exercicio</th>
                <th>Serie</th>
                <th>Repetição</th>
                <th>Peso do aluno</th>
                <th>Funções</th>
            </tr>
        </thead>
        <tbody>
            <%
                AvaliacaoCRUD dados = new AvaliacaoCRUD();
                        ArrayList<Avaliacao> lista = dados.selectAvaliacao();
                        for (Avaliacao a : lista) {
                            out.print("<tr>");
                            out.print("<td>" + a.getIdAvaliacao() + "</td>");
                            out.print("<td>" + a.getAluno().getNome() + "</td>");
                            out.print("<td>" + a.getTipo() + "</td>");
                            out.print("<td>" + a.getExercicio() + "</td>");
                            out.print("<td>" + a.getSerie() + "</td>");
                            out.print("<td>" + a.getRepeticao() + "</td>");
                            out.print("<td>" + a.getPeso() + "</td>");
                            out.print("<td>");
                            out.print("<a class='btn btn-warning' href='alteraravaliacao.jsp?idAvaliacao=" + a.getIdAvaliacao()+ "' >Alterar</a>");
                            out.print("<a class='btn btn-danger' href='#' onclick='abrirMensagemRemocao(" + a.getIdAvaliacao() + ")');'>Remover</a>");
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
                Deseja realmente remover a avaliação?
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" onclick="removerAvaliacao();">Remover</button>
            </div>

        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
                let idAvaliacaoSelecionada;
                abrirMensagemRemocao = function (idAvaliacao) {
                    idAvaliacaoSelecionada = idAvaliacao;
                    $("#myModal").modal();
                }
                removerAvaliacao = function (idAvaliacao) {
                    window.location.href = "processadeleteavaliacao.jsp?idAvaliacao="+idAvaliacaoSelecionada;
                }

            });
</script>
</body>
</html>
