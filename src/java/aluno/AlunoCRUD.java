/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aluno;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AlunoCRUD {

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

    public void cadastrarAluno(Aluno a) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "INSERT INTO aluno (matricula_aluno, nome, cpf, sexo, estado, cidade, bairro, cep, rua, numero, email, celular, senha, nascimento) ";
        sql += " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        preparedStatement.setInt(1, a.getMatricula_aluno());
        preparedStatement.setString(2, a.getNome());
        preparedStatement.setString(3, a.getCpf());
        preparedStatement.setString(4, a.getSexo());
        preparedStatement.setString(5, a.getEstado());
        preparedStatement.setString(6, a.getCidade());
        preparedStatement.setString(7, a.getBairro());
        preparedStatement.setString(8, a.getCep());
        preparedStatement.setString(9, a.getRua());
        preparedStatement.setString(10, a.getNumero());
        preparedStatement.setString(11, a.getEmail());
        preparedStatement.setString(12, a.getCelular());
        preparedStatement.setString(13, a.getSenha());
        preparedStatement.setDate(14, (Date) a.getNascimento());
        // execute insert SQL stetement   
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public void removerAluno(Aluno a) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "DELETE FROM aluno WHERE matricula_aluno = ? ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        preparedStatement.setInt(1, a.getMatricula_aluno());
        // execute insert SQL stetement
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public void atualizarAluno(Aluno a) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "UPDATE aluno SET Nome = ?, Cpf = ?, Sexo = ?, Estado = ?, Cidade = ?, Bairro = ?, Cep = ?, Rua = ?, Numero = ?, Email = ?, Celular = ?, Senha = ?, Nascimento = ?  WHERE matricula_aluno = ? ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        //
        preparedStatement.setString(1, a.getNome());
        preparedStatement.setString(2, a.getCpf());
        preparedStatement.setString(3, a.getSexo());
        preparedStatement.setString(4, a.getEstado());
        preparedStatement.setString(5, a.getCidade());
        preparedStatement.setString(6, a.getBairro());
        preparedStatement.setString(7, a.getCep());
        preparedStatement.setString(8, a.getRua());
        preparedStatement.setString(9, a.getNumero());
        preparedStatement.setString(10, a.getEmail());
        preparedStatement.setString(11, a.getCelular());
        preparedStatement.setString(12, a.getSenha());
        preparedStatement.setDate(13, (Date) a.getNascimento());
        preparedStatement.setInt(14, a.getMatricula_aluno());
        
        // execute insert SQL stetement
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public ArrayList<Aluno> selectAluno() throws Exception {
        ArrayList<Aluno> retorno = new ArrayList<>();

        //instrução sql correspondente a inserção do aluno
        String sql = " select a.Matricula_aluno, a.Nome, a.Cpf, a.Sexo, a.Estado, a.Cidade, a.Bairro, a.Cep, a.Rua, a.Numero, a.Email, a.Celular, a.Senha, a.Nascimento ";
        sql += " from aluno as a ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            Aluno a = new Aluno();
            a.setMatricula_aluno(leitor.getInt("matricula_aluno"));
            a.setNome(leitor.getString("Nome"));
            a.setCpf(leitor.getString("Cpf"));
            a.setSexo(leitor.getString("Sexo"));
            a.setEstado(leitor.getString("Estado"));
            a.setCidade(leitor.getString("Cidade"));
            a.setBairro(leitor.getString("Bairro"));
            a.setCep(leitor.getString("Cep"));
            a.setRua(leitor.getString("Rua"));
            a.setNumero(leitor.getString("Numero"));
            a.setEmail(leitor.getString("Email"));
            a.setCelular(leitor.getString("Celular"));
            a.setSenha(leitor.getString("Senha"));
            a.setNascimento(leitor.getDate("Nascimento"));
            retorno.add(a);
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }

    public Aluno getAluno(int matricula_aluno) throws Exception {
        Aluno retorno = new Aluno();
        //instrução sql correspondente a inserção do aluno
        String sql = " select a.Matricula_aluno, a.Nome, a.Cpf, a.Sexo, a.Estado, a.Cidade, a.Bairro, a.Cep, a.Rua, a.Numero, a.Email, a.Celular, a.Senha, a.Nascimento ";
        sql += " from aluno as a ";
        sql += " where a.matricula_aluno = " + matricula_aluno;
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            retorno.setMatricula_aluno(leitor.getInt("matricula_aluno"));
            retorno.setNome(leitor.getString("Nome"));
            retorno.setCpf(leitor.getString("Cpf"));
            retorno.setSexo(leitor.getString("Sexo"));
            retorno.setEstado(leitor.getString("Estado"));
            retorno.setCidade(leitor.getString("Cidade"));
            retorno.setBairro(leitor.getString("Bairro"));
            retorno.setCep(leitor.getString("Cep"));
            retorno.setRua(leitor.getString("Rua"));
            retorno.setNumero(leitor.getString("Numero"));
            retorno.setEmail(leitor.getString("Email"));
            retorno.setCelular(leitor.getString("Celular"));
            retorno.setSenha(leitor.getString("Senha"));
            retorno.setNascimento(leitor.getDate("Nascimento"));
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }
}
