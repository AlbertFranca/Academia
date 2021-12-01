<%-- 
    Document   : processar
    Created on : 3 de set. de 2021, 18:54:08
    Author     : islad
--%>
<%@page import="util.Utils"%>
<%@page import="funcionario.FuncionarioCRUD"%>
<%@page import="funcionario.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page funcionario</title>
    </head>
    <body>
         <% try {
            //receber dados do formulario
           
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String celular = request.getParameter("celular");
            String cpf = request.getParameter("cpf");
            String rua = request.getParameter("rua");
            String numero = request.getParameter("numero");
            String cep = request.getParameter("cep");
            String estado = request.getParameter("estado");
            String cidade = request.getParameter("cidade");
            String bairro = request.getParameter("bairro");
            String senha = request.getParameter("senha");
            String nascimento = request.getParameter("nascimento");
            String funcao = request.getParameter("funcao");
            //criar objeto
            Funcionario funcionario = new Funcionario();
            //repassar dados do formulario para o objeto
           
            funcionario.setNome(nome);
            funcionario.setEmail(email);
            funcionario.setCelular(celular);
            funcionario.setCpf(cpf);
            funcionario.setRua(rua);
            funcionario.setNumero(numero);
            funcionario.setCep(cep);
            funcionario.setEstado(estado);
            funcionario.setCidade(cidade);
            funcionario.setBairro(bairro);
            funcionario.setSenha(senha);
            funcionario.setNascimento(Utils.convertStringToDate(nascimento));
            funcionario.setFuncao(funcao);
            //enviar objeto para o referido metodo
            FuncionarioCRUD dados = new FuncionarioCRUD();
            dados.cadastrarFuncionario(funcionario); 
            out.print("Funcionario Cadastrado com sucesso");
            response.sendRedirect("telagestao.jsp");
        }catch (Exception ex){
            out.println(ex.getMessage());
        }
        %>
        
    </body>
</html>

