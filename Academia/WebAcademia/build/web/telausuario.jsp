<%-- 
    Document   : telausuario
    Created on : 17 de set. de 2021, 18:06:54
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
        <title>Tela de Usuario</title>
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
                    <a class="nav-link active" href="http://localhost:8080/WebAcademia/telausuario.jsp">Area do Aluno</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/WebAcademia/telaprofessor.jsp">Area do Professor</a>
                </li>
            </ul>
        </nav>
        <h1>Lista de exercicios</h1>
        <style>
            p{text-align: center; font-size: 20px;}
        </style>
        <form action="processar.jsp">
            
            <div class="container bg-dark text-white" style= "margin-top: 100px;">
                <div class="form-row">
                    <div class="col-sm-2">
                        <label for="matricula">Numero de matricula:</label>
                        <input type="text" class="form-control" id="matricula" name="matricula" disabled>  
                    </div> 
                    <div class="col-sm-10">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="ex. nome" disabled>
                    </div>
                </div>
            </div>
                <div class="container bg-dark text-white" style= "">
                    <p>Medidas do aluno </p>
                    <div class="form-row">
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="numero">Altura em metros:</label>
                                <input type="double" class="form-control" id="altura" name="altura" disabled>
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Peso:</label>
                                <input type="double" class="form-control" id="peso" name="peso" disabled> 
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Imc:</label>
                                <input type="double" class="form-control" id="peso" name="peso" disabled> 
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Pescoço:</label>
                                <input type="double" class="form-control" id="pescoco" name="pescoco" disabled> 
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="numero">Tórax:</label>
                                <input type="double" class="form-control" id="torax" name="torax" disabled> 
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Cintura:</label>
                                <input type="double" class="form-control" id="cintura" name="cintura" disabled>
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Abdome:</label>
                                <input type="double" class="form-control" id="abdome" name="abdome" disabled>
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Quadril:</label>
                                <input type="double" class="form-control" id="quadril" name="quadril" disabled>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="numero">Antebraço:</label>
                                <input type="double" class="form-control" id="antebraco" name="antebraco" disabled>
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Braço:</label>
                                <input type="double" class="form-control" id="braco" name="braco" disabled>
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Coxa:</label>
                                <input type="double" class="form-control" id="coxa" name="coxa" disabled>
                            </div>
                            <div class="col-sm-3">
                                <label for="numero">Panturrilha:</label>
                                <input type="double" class="form-control" id="panturrilha" name="pantorrilha" disabled><br>
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
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td>   <input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                        <tr>
                            <td>   <input type="text" class="form-control" id="tipo"name="tipo" disabled></td>
                            <td><input type="text" class="form-control" id="exercicio"name="exercicio" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                            <td>   <input type="text" class="form-control" id="serie"name="serie" disabled></td>
                        </tr>
                    </table>
                    <input type="submit">
                </div>
        </form>
    </body>
</html>
