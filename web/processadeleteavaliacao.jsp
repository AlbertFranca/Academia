<%-- 
    Document   : processadeleteavaliacao
    Created on : 13 de nov. de 2021, 20:01:52
    Author     : islad
--%>

<%@page import="avaliacao.AvaliacaoCRUD"%>
<%@page import="avaliacao.Avaliacao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        //recebendo os dados do formulário
        String idAvaliacao = request.getParameter("idAvaliacao");
        //crio o Objeto
        Avaliacao avaliacao = new Avaliacao();
        //repassando os dados do form para o Objeto
        avaliacao.setIdAvaliacao(Integer.parseInt(idAvaliacao));
        //envio o Objeto para o referido método
        AvaliacaoCRUD dados = new AvaliacaoCRUD();
        dados.removerAvaliacao(avaliacao);
        response.sendRedirect("telaavaliacao.jsp");
    } catch (Exception ex) {
        out.println(ex.getMessage());
    }
%>
