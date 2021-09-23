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

        <title>JSP Page</title>
    </head>
    <body>
        <form action="processar.jsp">
            <div class="container bg-dark text-white" style= "">
                <table class="table table-dark table-striped">
                    <tr> 
                        <th>tipo</th>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
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
                        <td>   <input type="text" class="form-control" id="serie"name="serie"></td>
                    </tr>
                </table>
                <input type="submit">
            </div>
        </form>
    </body>
</html>
