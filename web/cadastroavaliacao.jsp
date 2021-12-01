<%-- 
    Document   : telaprofessor
    Created on : 22 de set. de 2021, 20:44:50
    Author     : islad
--%>
<%@page import="java.util.ArrayList"%>
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
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telainicial.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telarecepcao.jsp">Cadastros de Alunos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telagestao.jsp">Cadastro Funcionario</a>
                </li>
                
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telaavaliacao.jsp">Avaliações</a>
                </li>
            </ul>
        </nav>
        <style>
            p{
                text-align: center;
                font-size: 20px;
            }
        </style>

        <form id="cadastrar_avaliacao" name="cadastrar_avaliacao" action="processaravaliacao.jsp">

            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-2">
                        <label for="matricula_funcionario">Funcionario:</label>
                        <select class="form-control" id="matricula_funcionario" name="matricula_funcionario">
                            <option value="-1">Selecione</option>
                            <%                         
                            FuncionarioCRUD dados = new FuncionarioCRUD();
                            ArrayList<Funcionario> lista = dados.selectFuncionario();
                            for (Funcionario fun : lista) {   
                                out.print("<option value='" + fun.getMatricula_funcionario() + "' >");
                                out.print(fun.getMatricula_funcionario());
                                out.print("</option>");
                            }
                            %>
                        </select>
                    </div> 
                    <div class="col-sm-10">
                        <label for="matricula_aluno">Aluno:</label>
                        <select class="form-control" id="matricula_aluno" name="matricula_aluno">
                            <option value="-1">Selecione</option>
                            <%
                               AlunoCRUD dado = new AlunoCRUD();
                               ArrayList<Aluno> listar = dado.selectAluno();
                               for (Aluno a : listar) {
                                   out.print("<option value='"+a.getMatricula_aluno()+"'>");
                                   out.print(a.getNome());
                                   out.print("</option>");
                               }
                            %>
                        </select>
                    </div>
                </div>
            </div>
            <div class="container bg-dark text-white" style= "">
                <p>Medidas do aluno </p>
                <div class="form-row">
                    <div class="form-row">
                        <div class="col-sm-3">
                            <label for="altura">Altura em metros:</label>
                            <input type="text" class="form-control" id="altura" name="altura">
                        </div>
                        <div class="col-sm-3">
                            <label for="peso">Peso:</label>
                            <input type="text" class="form-control" id="peso" name="peso"> 
                        </div>
                        <%--<div class="col-sm-3">
                            <label for="imc">Imc:</label>
                            <input type="text" class="form-control" id="imc" name="imc" disabled> 
                        </div>--%>
                        <div class="col-sm-3">
                            <label for="pescoco">Pescoço:</label>
                            <input type="text" class="form-control" id="pescoco" name="pescoco"> 
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-3">
                            <label for="torax">Tórax:</label>
                            <input type="text" class="form-control" id="torax" name="torax"> 
                        </div>
                        <div class="col-sm-3">
                            <label for="cintura">Cintura:</label>
                            <input type="text" class="form-control" id="cintura" name="cintura">
                        </div>
                        <div class="col-sm-3">
                            <label for="abdome">Abdomem:</label>
                            <input type="text" class="form-control" id="abdomem" name="abdomem">
                        </div>
                        <div class="col-sm-3">
                            <label for="quadril">Quadril:</label>
                            <input type="text" class="form-control" id="quadril" name="quadril">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-3">
                            <label for="antebraco">Antebraço:</label>
                            <input type="text" class="form-control" id="antebraco" name="antebraco">
                        </div>
                        <div class="col-sm-3">
                            <label for="braco">Braço:</label>
                            <input type="text" class="form-control" id="braco" name="braco">
                        </div>
                        <div class="col-sm-3">
                            <label for="coxa">Coxa:</label>
                            <input type="text" class="form-control" id="coxa" name="coxa">
                        </div>
                        <div class="col-sm-3">
                            <label for="panturrilha">Panturrilha:</label>
                            <input type="text" class="form-control" id="panturrilha" name="panturrilha"><br>
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

                <%-- <td><select multiple id="exercicio" name="exercicio" class="custom-select">
                        <option value="Selecione exercicios">Selecione exercicios</option>
                        <option value="Rosca Concentrada">Rosca Concentrada</option>
                        <option value="Rosca Martelo">Rosca Martelo</option>
                        <option value="Rosca Direta">Rosca Direta</option>
                        <option value="Rosca Alternada">Rosca Alternada</option>
                        <option value="Russian Twist">Russian Twist</option>
                        <option value="Elevação de Pernas">Elevação de Pernas</option>
                        <option value="Frontal">Frontal</option>
                        <option value="Com Inversão">Com Inversão</option>
                        <option value="Remada Unilateral">Remada Unilateral</option>
                        <option value="Puxada na Frente com Triângulo e Polia Alta">Puxada na Frente com Triângulo e Polia Alta</option>
                        <option value="Puxada na Frente com Polia Alta">Puxada na Frente com Polia Alta</option>
                        <option value="Puxada Alta com Braços Estendidos">Puxada Alta com Braços Estendidos</option>
                        <option value="Remada Alta">Remada Alta</option>
                        <option value="Desenvolvimento com Halteres">Desenvolvimento com Halteres</option>
                        <option value="Elevação Frontal">Elevação Frontal</option>
                        <option value="Elevação Lateral">Elevação Lateral/option>
                        <option value="Flexão de braços Push-up">Flexão de braços Push-up</option>
                        <option value="Crucifixo ou Fly">Crucifixo ou Fly</option>
                        <option value="Crossover ou Pulley Cruzado">Crossover ou Pulley Cruzado</option>
                        <option value="Supino Inclinado">Supino Inclinado</option>
                        <option value="Supino Reto">Supino Reto</option>
                        <option value="Panturrilha">Panturrilha</option>
                        <option value="Agachamento com Salto">Agachamento com Salto</option>
                        <option value="Lunge Reverso">Lunge Reverso</option>
                        <option value="Lunge Avanço">Lunge Avanço</option>
                        <option value="Agachamento Livre">Agachamento Livre</option>
                        <option value="Glúteos Quatro Apoios e Perna Estendida">Glúteos Quatro Apoios e Perna Estendida</option>
                        <option value="Abdução de Quadril">Abdução de Quadril</option>
                        <option value="Mesa Flexora">Mesa Flexora</option>
                        <option value="Cadeira Extensora">Cadeira Extensora</option>
                        <option value="Gêmeos Sentado">Gêmeos Sentado</option>
                        <option value="Tríceps Banco">Tríceps Banco</option>
                        <option value="Francês">Francês</option>
                        <option value="Kick Back">Kick Back</option>
                        <option value="Corda">Corda</option>
                        <option value="Pulley">Pulley</option>
                    </select></td> --%>

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
                document.getElementById('cadastrar_avaliacao').submit();
            }
        </script>
    </body>
</html>
