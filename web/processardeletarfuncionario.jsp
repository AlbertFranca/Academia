<%-- 
    Document   : processardeletaraluno
    Created on : 26 de out. de 2021, 19:36:48
    Author     : islad
--%>

<%@page import="funcionario.FuncionarioCRUD"%>
<%@page import="funcionario.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        //recebendo os dados do formulário
        String matricula_funcionario = request.getParameter("matricula_funcionario");
        //crio o Objeto
        Funcionario funcionario = new Funcionario();
        //repassando os dados do form para o Objeto
        funcionario.setMatricula_funcionario(Integer.parseInt(matricula_funcionario));
        //envio o Objeto para o referido método
        FuncionarioCRUD dados = new FuncionarioCRUD();
        dados.removerFuncionario(funcionario);
        response.sendRedirect("telagestao.jsp");
    } catch (Exception ex) {
        out.println(ex.getMessage());
    }
%>
