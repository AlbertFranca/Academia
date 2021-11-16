<%-- 
    Document   : processarupdateavaliacao
    Created on : 13 de nov. de 2021, 21:52:34
    Author     : islad
--%>

<%@page import="avaliacao.AvaliacaoCRUD"%>
<%@page import="avaliacao.Avaliacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    try {
        //tipo, nota, matricula_aluno
        //recebendo os dados do formulário
            String idAvaliacao = request.getParameter("idAvaliacao");
            String pescoco = request.getParameter("pescoco");
            String antebraco = request.getParameter("antebraco");
            String braco = request.getParameter("braco");
            String abdomem = request.getParameter("abdomem");
            String torax = request.getParameter("torax");
            String cintura = request.getParameter("cintura");
            String quadril = request.getParameter("quadril");
            String coxa = request.getParameter("coxa");
            String panturrilha = request.getParameter("panturrilha");
            String altura = request.getParameter("altura");
            String peso = request.getParameter("peso");
            String tipo = request.getParameter("tipo");
            String exercicio = request.getParameter("exercicio");
            String repeticao = request.getParameter("repeticao");
            String serie = request.getParameter("serie");
            String matricula_aluno = request.getParameter("matricula_aluno");
            String matricula_funcionario = request.getParameter("matricula_funcionario");
        //crio o Objeto
        Avaliacao avaliacao = new Avaliacao();
        //repassando os dados do form para o Objeto
            avaliacao.setIdAvaliacao(Integer.parseInt(idAvaliacao));
            avaliacao.setPescoco (Integer.parseInt(pescoco));
            avaliacao.setAntebraco (Integer.parseInt(antebraco));
            avaliacao.setBraco (Integer.parseInt(braco));
            avaliacao.setAbdomem (Integer.parseInt(abdomem));
            avaliacao.setTorax (Integer.parseInt(torax));
            avaliacao.setCintura (Integer.parseInt(cintura));
            avaliacao.setQuadril (Integer.parseInt(quadril));
            avaliacao.setCoxa (Integer.parseInt(coxa));
            avaliacao.setPanturrilha (Integer.parseInt(panturrilha));
            avaliacao.setAltura (Integer.parseInt(altura));
            avaliacao.setPeso (Integer.parseInt(peso));
            avaliacao.setTipo(tipo);
            avaliacao.setExercicio(exercicio);
            avaliacao.setRepeticao(repeticao);
            avaliacao.setSerie(serie);
            avaliacao.getAluno().setMatricula_aluno(Integer.parseInt(matricula_aluno));
            avaliacao.getFuncionario().setMatricula_funcionario(Integer.parseInt(matricula_funcionario));
        //envio o Objeto para o referido método
        AvaliacaoCRUD dados = new AvaliacaoCRUD();
        dados.atualizarAvaliacao(avaliacao);
        //out.print("Avaliação cadastrada com sucesso");
        response.sendRedirect("telaavaliacao.jsp");
    } catch (Exception ex) {
        out.println(ex.getMessage());
    }
%>
