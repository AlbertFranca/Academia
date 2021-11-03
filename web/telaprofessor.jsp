<%-- 
    Document   : telaprofessor
    Created on : 22 de set. de 2021, 20:44:50
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
                <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastroaluno.jsp">Cadastro Aluno</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/WebAcademia/cadastrofuncionario.jsp">Cadastro Funcionario</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/WebAcademia/telausuario.jsp">Area do Aluno</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="http://localhost:8080/WebAcademia/telaprofessor.jsp">Area do Professor</a>
            </li>
        </ul>
    </nav>
        <style>
            p{text-align: center; font-size: 20px;}
        </style>
        <form action="processar.jsp">
            
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-2">
                        <label for="matricula">Numero de matricula:</label>
                        <input type="text" class="form-control" id="matricula" name="matricula">  
                    </div> 
                    <div class="col-sm-10">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="ex. nome">
                    </div>
                </div>
            </div>
                <div class="container bg-dark text-white" style= "">
                    <p>Medidas do aluno </p>
                    <div class="form-row">
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="numero">Altura em metros:</label>
                                <input type="double" class="form-control" id="altura" name="altura">
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Peso:</label>
                                <input type="double" class="form-control" id="peso" name="peso"> 
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Imc:</label>
                                <input type="double" class="form-control" id="peso" name="peso" disabled> 
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Pescoço:</label>
                                <input type="double" class="form-control" id="pescoco" name="pescoco"> 
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="numero">Tórax:</label>
                                <input type="double" class="form-control" id="torax" name="torax"> 
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Cintura:</label>
                                <input type="double" class="form-control" id="cintura" name="cintura">
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Abdome:</label>
                                <input type="double" class="form-control" id="abdome" name="abdome">
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Quadril:</label>
                                <input type="double" class="form-control" id="quadril" name="quadril">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="numero">Antebraço:</label>
                                <input type="double" class="form-control" id="antebraco" name="antebraco">
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Braço:</label>
                                <input type="double" class="form-control" id="braco" name="braco">
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Coxa:</label>
                                <input type="double" class="form-control" id="coxa" name="coxa">
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Panturrilha:</label>
                                <input type="double" class="form-control" id="panturrilha" name="pantorrilha"><br>
                            </div>
                        </div>
                    </div>
                    <p>Tabela de treino</p>
                    <table class="table table-dark table-striped">
                        <tr> 
                            <th>treino A,B,C</th>
                            <th>exercicios</th>
                            <th>ser.</th>
                            <th>rep.</th>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo"></td>
                            <td><select id="exercicio" name="exercicio" class="custom-select">
                                    <option value="selecione exercicio">Selecione exercicio</option>
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
                                </select></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                            <td>   <input type="text" class="form-control" id="repeticao"name="repeticao"</td>
                        </tr>
                    </table>
                    <button type="submit" class="btn btn-primary">Cadasatrar</button>
                </div>
        </form>
    </body>
</html>
