<%-- 
    Document   : processarupdatealuno
    Created on : 27 de out. de 2021, 16:45:36
    Author     : islad
--%>
<%@page import="util.Utils"%>
<%@page import="funcionario.FuncionarioCRUD"%>
<%@page import="funcionario.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <% try {
            //receber dados do formulario
            String matricula_funcionario = request.getParameter("matricula_funcionario");
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
            
            funcionario.setMatricula_funcionario(Integer.parseInt(matricula_funcionario));
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
            dados.atualizarFuncionario(funcionario);  
            //out.print("Funcionario alterado com sucesso");
            response.sendRedirect("telagestao.jsp");
        }catch (Exception ex){
            out.println(ex.getMessage());
        }
        %>