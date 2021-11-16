/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package funcionario;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FuncionarioCRUD {

    private Connection conn;
    private String DRIVER_MYSQL = "com.mysql.jdbc.Driver";
    private String LOCAL_SERVIDOR = "localhost";
    private String BANCO_DE_DADOS = "academia";
    private String PORTA_BANCO = "3306";
    private String USUARIO = "root";
    private String SENHA = "";

    private void abrirConexao() {
        try {
            Class.forName(DRIVER_MYSQL).newInstance();
            String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
            this.conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    private void fecharConexao() {
        try {
            if (this.conn != null) {
                this.conn.close();
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void cadastrarFuncionario(Funcionario a) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "INSERT INTO funcionario (matricula_funcionario, nome, email, celular, nascimento, rua, numero, cep, estado, cidade, bairro, senha, funcao, cpf) ";
        sql += " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        preparedStatement.setInt(1, a.getMatricula_funcionario());
        preparedStatement.setString(2, a.getNome());
        preparedStatement.setString(3, a.getEmail());
        preparedStatement.setString(4, a.getCelular());
        preparedStatement.setDate(5, (Date) a.getNascimento());  
        preparedStatement.setString(6, a.getRua());
        preparedStatement.setString(7, a.getNumero());
        preparedStatement.setString(8, a.getCep());
        preparedStatement.setString(9, a.getEstado());
        preparedStatement.setString(10, a.getCidade());
        preparedStatement.setString(11, a.getBairro());
        preparedStatement.setString(12, a.getSenha());
        preparedStatement.setString(13, a.getFuncao());
        preparedStatement.setString(14, a.getCpf());
        
        // execute insert SQL stetement   
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public void removerFuncionario(Funcionario a) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "DELETE FROM funcionario WHERE matricula_funcionario = ? ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        preparedStatement.setInt(1, a.getMatricula_funcionario());
        // execute insert SQL stetement
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public void atualizarFuncionario(Funcionario a) throws SQLException, Exception {
        //instrucao a ser executada 
        String sql = "UPDATE funcionario SET Nome = ?, Email = ?, Celular = ?, Nascimento = ?, Rua = ?, Numero = ?, Cep = ?, Estado = ?, Cidade = ?, Bairro = ?, Senha = ?, Funcao = ?, Cpf = ?  WHERE matricula_funcionario = ? ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
  
        preparedStatement.setString(1, a.getNome());
        preparedStatement.setString(2, a.getEmail());
        preparedStatement.setString(3, a.getCelular());
        preparedStatement.setDate(4, (Date) a.getNascimento());  
        preparedStatement.setString(5, a.getRua());
        preparedStatement.setString(6, a.getNumero());
        preparedStatement.setString(7, a.getCep());
        preparedStatement.setString(8, a.getEstado());
        preparedStatement.setString(9, a.getCidade());
        preparedStatement.setString(10, a.getBairro());
        preparedStatement.setString(11, a.getSenha());
        preparedStatement.setString(12, a.getFuncao());
        preparedStatement.setString(13, a.getCpf());
        preparedStatement.setInt(14, a.getMatricula_funcionario());
        // execute insert SQL stetement
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public ArrayList<Funcionario> selectFuncionario() throws Exception {
        ArrayList<Funcionario> retorno = new ArrayList<>();

        //instrução sql correspondente a inserção do aluno
        String sql = " select a.Matricula_funcionario, a.Cpf, a.Nome, a.Email, a.Celular, a.Nascimento, a.Rua, a.Numero, a.Cep, a.Estado, a.Cidade, a.Bairro, a.Senha, a.Funcao ";
        sql += " from funcionario as a ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            Funcionario a = new Funcionario();
            a.setMatricula_funcionario(leitor.getInt("Matricula_funcionario"));
            a.setCpf(leitor.getString("Cpf"));
            a.setNome(leitor.getString("Nome"));
            a.setEmail(leitor.getString("Email"));
            a.setCelular(leitor.getString("Celular"));
            a.setNascimento(leitor.getDate("Nascimento"));
            a.setRua(leitor.getString("Rua"));
            a.setNumero(leitor.getString("Numero"));
            a.setCep(leitor.getString("Cep"));
            a.setEstado(leitor.getString("Estado"));
            a.setCidade(leitor.getString("Cidade"));
            a.setBairro(leitor.getString("Bairro"));
            a.setSenha(leitor.getString("Senha"));
            a.setFuncao(leitor.getString("Funcao"));
            retorno.add(a);
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }

    public Funcionario getFuncionario(int matricula_funcionario) throws Exception {
        Funcionario retorno = new Funcionario();
        //instrução sql correspondente a inserção do aluno
        String sql = " select a.Matricula_funcionario, a.Cpf, a.Nome, a.Email, a.Celular, a.Nascimento, a.Rua, a.Numero, a.Cep, a.Estado, a.Cidade, a.Bairro, a.Senha, a.Funcao ";
        sql += " from funcionario as a ";
        sql += " where a.matricula_funcionario = " + matricula_funcionario;
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            retorno.setMatricula_funcionario(leitor.getInt("matricula_funcionario"));
            retorno.setCpf(leitor.getString("Cpf"));
            retorno.setNome(leitor.getString("Nome"));
            retorno.setEmail(leitor.getString("Email"));
            retorno.setCelular(leitor.getString("Celular"));
            retorno.setNascimento(leitor.getDate("Nascimento"));
            retorno.setRua(leitor.getString("Rua"));
            retorno.setNumero(leitor.getString("Numero"));
            retorno.setCep(leitor.getString("Cep"));
            retorno.setEstado(leitor.getString("Estado"));
            retorno.setCidade(leitor.getString("Cidade"));
            retorno.setBairro(leitor.getString("Bairro"));
            retorno.setSenha(leitor.getString("Senha"));
            retorno.setFuncao(leitor.getString("Funcao"));
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }
}

