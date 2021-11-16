<%-- 
    Document   : processarupdatealuno
    Created on : 27 de out. de 2021, 16:45:36
    Author     : islad
--%>
<%@page import="util.Utils"%>
<%@page import="aluno.AlunoCRUD"%>
<%@page import="aluno.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <% try {
            //receber dados do formulario
            String matricula_aluno = request.getParameter("matricula_aluno");
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String sexo = request.getParameter("sexo");
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
            //criar objeto
            Aluno aluno = new Aluno();
            //repassar dados do formulario para o objeto
             
            aluno.setMatricula_aluno(Integer.parseInt(matricula_aluno));
            aluno.setNome(nome);
            aluno.setEmail(email);
            aluno.setSexo(sexo);
            aluno.setCelular(celular);
            aluno.setCpf(cpf);
            aluno.setRua(rua);
            aluno.setNumero(numero);
            aluno.setCep(cep);
            aluno.setEstado(estado);
            aluno.setCidade(cidade);
            aluno.setBairro(bairro);
            aluno.setSenha(senha);
            aluno.setNascimento(Utils.convertStringToDate(nascimento));
            //enviar objeto para o referido metodo
            AlunoCRUD dados = new AlunoCRUD();
            dados.atualizarAluno(aluno); 
            //out.print("Aluno alterado com sucesso");
            response.sendRedirect("telarecepcao.jsp");
        }catch (Exception ex){
            out.println(ex.getMessage());
        }
        %>