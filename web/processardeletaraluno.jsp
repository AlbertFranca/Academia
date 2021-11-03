<%-- 
    Document   : processardeletaraluno
    Created on : 26 de out. de 2021, 19:36:48
    Author     : islad
--%>

<%@page import="aluno.AlunoCRUD"%>
<%@page import="aluno.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        //recebendo os dados do formulário
        String matricula = request.getParameter("matricula");
        //crio o Objeto
        Aluno aluno = new Aluno();
        //repassando os dados do form para o Objeto
        aluno.setMatricula(Integer.parseInt(matricula));
        //envio o Objeto para o referido método
        AlunoCRUD dados = new AlunoCRUD();
        dados.removerAluno(aluno);
        response.sendRedirect("telarecepcao.jsp");
    } catch (Exception ex) {
        out.println(ex.getMessage());
    }
%>
