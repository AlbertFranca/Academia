<%-- 
    Document   : telaprofessor
    Created on : 22 de set. de 2021, 20:44:50
    Author     : islad
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="avaliacao.Avaliacao"%>
<%@page import="avaliacao.AvaliacaoCRUD"%>
<%@page import="aluno.Aluno"%>
<%@page import="aluno.AlunoCRUD"%>
<%@page import="funcionario.Funcionario"%>
<%@page import="funcionario.FuncionarioCRUD"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">7
        <link rel="stylesheet" href="css/globalcss.css">

        <title>Tela do professor/Instrutor</title>
    </head>
    <body>
        <%
            AvaliacaoCRUD dadosAv = new AvaliacaoCRUD();
            String idAvaliacao = request.getParameter("idAvaliacao");
            Avaliacao avaliacao = dadosAv.getAvaliacao(Integer.parseInt(idAvaliacao));
        %>

        <style>
            p{
                text-align: center;
                font-size: 20px;
            }
        </style>

        <form id="alterar_avaliacao" name="alterar_avaliacao" action="processarupdateavaliacao.jsp">

            <div class="container bg-dark text-white" style= "margin-top: 100px;">

                <div class="col-sm-2">
                    <input type="hidden" class="form-control" id="idAvaliacao" name="idAvaliacao" value="<%=avaliacao.getIdAvaliacao()%>" >
                    <input type="hidden" class="form-control" id="matricula_aluno" name="matricula_aluno" value="<%=avaliacao.getAluno().getMatricula_aluno()%>"> 
                </div>
                <div class="form-row">
                    <div class="col-sm-2">
                        <label for="matricula_funcionario">Funcionario:</label>
                        <select class="form-control" id="matricula_funcionario" name="matricula_funcionario">
                            <option value="-1">Selecione</option>
                            <%                         
                     FuncionarioCRUD dados = new FuncionarioCRUD();
                     ArrayList<Funcionario> lista = dados.selectFuncionario();
                     for (Funcionario a : lista) {
                         String selected = "";
                         if(a.getMatricula_funcionario() == avaliacao.getFuncionario().getMatricula_funcionario()){
                             selected = "selected";
                         }
                         out.print("<option "+selected+" value='" + a.getMatricula_funcionario() + "' >");
                         out.print(a.getMatricula_funcionario());
                         out.print("</option>");
                     }
                            %>
                        </select>
                    </div> 
                    <div class="col-sm-10">
                        <label for="matricula_aluno">Aluno:</label>
                        <input type="text" class="form-control" id="nome" name="nome" readonly value="<%=avaliacao.getAluno().getNome()%>"> 
                    </div>
                </div>
            </div>
            <div class="container bg-dark text-white" style= "">
                <p>Medidas do aluno </p>
                <div class="form-row">
                    <div class="form-row">
                        <div class="col-sm-3">
                            <label for="altura">Altura em metros:</label>
                            <input type="text" class="form-control" id="altura" name="altura" value="<%=avaliacao.getAltura()%>">
                        </div>
                        <div class="col-sm-3">
                            <label for="peso">Peso:</label>
                            <input type="text" class="form-control" id="peso" name="peso" value="<%=avaliacao.getPeso()%>"> 
                        </div>
                       <%-- <div class="col-sm-3">
                            <label for="imc">Imc:</label>    
                            <input type="text" class="form-control" id="imc" name="imc" disabled value= imc> 
                        </div> --%>
                        <div class="col-sm-3">
                            <label for="pescoco">Pescoço:</label>
                            <input type="text" class="form-control" id="pescoco" name="pescoco" value="<%=avaliacao.getPescoco()%>"> 
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-3">
                            <label for="torax">Tórax:</label>
                            <input type="text" class="form-control" id="torax" name="torax" value="<%=avaliacao.getTorax()%>"> 
                        </div>
                        <div class="col-sm-3">
                            <label for="cintura">Cintura:</label>
                            <input type="text" class="form-control" id="cintura" name="cintura" value="<%=avaliacao.getCintura()%>">
                        </div>
                        <div class="col-sm-3">
                            <label for="abdome">Abdomem:</label>
                            <input type="text" class="form-control" id="abdomem" name="abdomem" value="<%=avaliacao.getAbdomem()%>">
                        </div>
                        <div class="col-sm-3">
                            <label for="quadril">Quadril:</label>
                            <input type="text" class="form-control" id="quadril" name="quadril" value="<%=avaliacao.getQuadril()%>">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-3">
                            <label for="antebraco">Antebraço:</label>
                            <input type="text" class="form-control" id="antebraco" name="antebraco" value="<%=avaliacao.getAntebraco()%>">
                        </div>
                        <div class="col-sm-3">
                            <label for="braco">Braço:</label>
                            <input type="text" class="form-control" id="braco" name="braco" value="<%=avaliacao.getBraco()%>">
                        </div>
                        <div class="col-sm-3">
                            <label for="coxa">Coxa:</label>
                            <input type="text" class="form-control" id="coxa" name="coxa" value="<%=avaliacao.getCoxa()%>">
                        </div>
                        <div class="col-sm-3">
                            <label for="panturrilha">Panturrilha:</label>
                            <input type="text" class="form-control" id="panturrilha" name="panturrilha" value="<%=avaliacao.getPanturrilha()%>"><br>
                        </div>
                    </div>   
                </div>
            </div>
            <div class="container bg-dark text-white" style= "">
                        <p>Tabela de treino</p>
                        <div class="form-row">
                            <div class="col-sm-3">
                                <input type="checkbox" id="exercicio" name="exercicio" value="Rosca Concentrada">
                                <label for="exercicio"> Rosca Concentrada</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Rosca Martelo">
                                <label for="exercicio"> Rosca Martelo</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Rosca Direta">
                                <label for="exercicio"> Rosca Direta</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Rosca Alternada">
                                <label for="exercicio"> Rosca Alternada</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Russian Twist">
                                <label for="exercicio"> Russian Twist</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Elevação de Pernas">
                                <label for="exercicio"> Elevação de Pernas</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Frontal">
                                <label for="exercicio"> Frontal</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Remada Alta">
                                <label for="exercicio"> Remada Alta</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Desenvolvimento com Halteres">
                                <label for="exercicio"> Desenvolvimento com Halteres</label><br>
                            </div>   
                            <div class="col-sm-3">
                                <input type="checkbox" id="exercicio" name="exercicio" value="Elevação Frontal">
                                <label for="exercicio"> Elevação Frontal</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Elevação Lateral">
                                <label for="exercicio"> Elevação Lateral</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Flexão de braços Push-up">
                                <label for="exercicio"> Flexão de braços Push-up</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Crucifixo ou Fly">
                                <label for="exercicio"> Crucifixo ou Fly</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Crossover ou Pulley Cruzado">
                                <label for="exercicio"> Crossover ou Pulley Cruzado</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Supino Inclinado">
                                <label for="exercicio"> Supino Inclinado</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Com Inversão">
                                <label for="exercicio"> Com Inversão</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Remada Unilateral">
                                <label for="exercicio"> Remada Unilateral</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Puxada Frente com Triângulo">
                                <label for="exercicio"> Puxada Frente com Triângulo</label><br>
                            </div> 
                            <div class="col-sm-3">
                                <input type="checkbox" id="exercicio" name="exercicio" value="Puxada Frente com Polia Alta">
                                <label for="exercicio"> Puxada Frente com Polia Alta</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Puxada Alta com Braços">
                                <label for="exercicio"> Puxada Alta com Braços</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Supino Reto">
                                <label for="exercicio"> Supino Reto</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Panturrilha">
                                <label for="exercicio"> Panturrilha</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Agachamento com Salto">
                                <label for="exercicio"> Agachamento com Salto</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Lunge Reverso">
                                <label for="exercicio"> Lunge Reverso</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Lunge Avanço">
                                <label for="exercicio"> Lunge Avanço</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Glúteos Quatro Apoios">
                                <label for="exercicio"> Glúteos Quatro Apoios</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Abdução de Quadril">
                                <label for="exercicio"> Abdução de Quadril</label><br>
                            </div>
                            <div class="col-sm-3">
                                <input type="checkbox" id="exercicio" name="exercicio" value="Mesa Flexora">
                                <label for="exercicio"> Mesa Flexora</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Cadeira Extensora">
                                <label for="exercicio"> Cadeira Extensora</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Gêmeos Sentado">
                                <label for="exercicio"> Gêmeos Sentado</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Tríceps Banco">
                                <label for="exercicio"> Tríceps Banco</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Francês">
                                <label for="exercicio"> Francês</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Kick Back">
                                <label for="exercicio"> Kick Back</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Corda">
                                <label for="exercicio"> Corda</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Pulley">
                                <label for="exercicio"> Pulley</label><br>
                                <input type="checkbox" id="exercicio" name="exercicio" value="Agachamento Livre">
                                <label for="exercicio"> Agachamento Livre</label><br>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="coxa">Serie:</label>
                                <input type="text" class="form-control" id="serie"name="serie">
                            </div>
                            <div class="col-sm-3">
                                <label for="panturrilha">repeticao:</label>
                                <input type="text" class="form-control" id="repeticao"name="repeticao">
                            </div>
                            <div class="col-sm-3">
                                <label for="panturrilha">tipo:</label>
                                <input type="text" class="form-control" id="tipo"name="tipo">
                            </div>
                            <div class="col-sm-3">
                                <br><button type="button" class="btn btn-primary" onclick="validarFormularioAvaliacao();">Cadastrar</button>                   
                                <button type="button" class="btn btn-info" onclick="voltar();">Voltar</button>
                            </div>
                        </div>
                        <div class="form-row">
                            <p></p>
                        </div>
                    </div>
            </div>
        </form>
        <script>
            $(document).ready(function () {
                voltar = function () {
                    window.location.href = "telaavaliacao.jsp";//tenho que colocar para onde voltar
                }
            });
              
            validarFormularioAvaliacao = function () {
                var altura = document.getElementById('altura').value;
                var peso = document.getElementById('peso').value;
                var pescoco = document.getElementById('pescoco').value;
                var torax = document.getElementById('torax').value;
                var cintura = document.getElementById('cintura').value;
                var abdomem = document.getElementById('abdomem').value;
                var quadril = document.getElementById('quadril').value;
                var antebraco = document.getElementById('antebraco').value;
                var braco = document.getElementById('braco').value;
                var coxa = document.getElementById('coxa').value;
                var panturrilha = document.getElementById('panturrilha').value;

                if (!altura.match(/^\d+/)) {
                    alert('Informe um altura inteiro');
                    return;
                }
                if (!peso.match(/^\d+/)) {
                    alert('Informe um peso inteiro');
                    return;
                }
                if (!pescoco.match(/^\d+/)) {
                    alert('Informe um pescoco inteiro');
                    return;
                }
                if (!torax.match(/^\d+/)) {
                    alert('Informe um torax inteiro');
                    return;
                }
                if (!cintura.match(/^\d+/)) {
                    alert('Informe um cintura inteiro');
                    return;
                }
                if (!abdomem.match(/^\d+/)) {
                    alert('Informe um abdomem inteiro');
                    return;
                }
                if (!quadril.match(/^\d+/)) {
                    alert('Informe um quadril inteiro');
                    return;
                }
                if (!antebraco.match(/^\d+/)) {
                    alert('Informe um antebraco inteiro');
                    return;
                }
                if (!braco.match(/^\d+/)) {
                    alert('Informe um braco inteiro');
                    return;
                }
                if (!coxa.match(/^\d+/)) {
                    alert('Informe um coxa inteiro');
                    return;
                }
                if (!panturrilha.match(/^\d+/)) {
                    alert('Informe um panturrilha inteiro');
                    return;
                }
                document.getElementById('alterar_avaliacao').submit();
            }
        </script>
    </body>
</html>
