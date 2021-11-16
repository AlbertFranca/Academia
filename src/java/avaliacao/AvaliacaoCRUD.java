/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package avaliacao;

import aluno.Aluno;
import funcionario.Funcionario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AvaliacaoCRUD {

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

    public void cadastrarAvaliacao(Avaliacao avaliacao) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "INSERT INTO avaliacao (pescoco, antebraco, braco, abdomem, torax, cintura, quadril, coxa, panturrilha, altura, peso, tipo, exercicio, repeticao, serie, matricula_aluno, matricula_funcionario)";
        sql += " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros

        preparedStatement.setInt(1, avaliacao.getPescoco());
        preparedStatement.setInt(2, avaliacao.getAntebraco());
        preparedStatement.setInt(3, avaliacao.getBraco());
        preparedStatement.setInt(4, avaliacao.getAbdomem());
        preparedStatement.setInt(5, avaliacao.getTorax());
        preparedStatement.setInt(6, avaliacao.getCintura());
        preparedStatement.setInt(7, avaliacao.getQuadril());
        preparedStatement.setInt(8, avaliacao.getCoxa());
        preparedStatement.setInt(9, avaliacao.getPanturrilha());
        preparedStatement.setInt(10, avaliacao.getAltura());
        preparedStatement.setInt(11, avaliacao.getPeso());
        preparedStatement.setString(12, avaliacao.getTipo());
        preparedStatement.setString(13, avaliacao.getExercicio());
        preparedStatement.setString(14, avaliacao.getRepeticao());
        preparedStatement.setString(15, avaliacao.getSerie());
        preparedStatement.setInt(16, avaliacao.getAluno().getMatricula_aluno());
        preparedStatement.setInt(17, avaliacao.getFuncionario().getMatricula_funcionario());
        // execute insert SQL stetement    
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public void atualizarAvaliacao(Avaliacao avaliacao) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "UPDATE avaliacao SET pescoco = ?, antebraco = ?, braco = ?, abdomem = ?, torax = ?, cintura = ?, quadril = ?, coxa = ?, panturrilha = ?, altura = ?, peso = ?, tipo = ?, exercicio = ?, repeticao = ?, serie = ?, matricula_aluno = ?, matricula_funcionario = ?";
        sql += " WHERE idAvaliacao = ?";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        preparedStatement.setInt(1, avaliacao.getPescoco());
        preparedStatement.setInt(2, avaliacao.getAntebraco());
        preparedStatement.setInt(3, avaliacao.getBraco());
        preparedStatement.setInt(4, avaliacao.getAbdomem());
        preparedStatement.setInt(5, avaliacao.getTorax());
        preparedStatement.setInt(6, avaliacao.getCintura());
        preparedStatement.setInt(7, avaliacao.getQuadril());
        preparedStatement.setInt(8, avaliacao.getCoxa());
        preparedStatement.setInt(9, avaliacao.getPanturrilha());
        preparedStatement.setInt(10, avaliacao.getAltura());
        preparedStatement.setInt(11, avaliacao.getPeso());
        preparedStatement.setString(12, avaliacao.getTipo());
        preparedStatement.setString(13, avaliacao.getExercicio());
        preparedStatement.setString(14, avaliacao.getRepeticao());
        preparedStatement.setString(15, avaliacao.getSerie());
        preparedStatement.setInt(16, avaliacao.getAluno().getMatricula_aluno());
        preparedStatement.setInt(17, avaliacao.getFuncionario().getMatricula_funcionario());
        preparedStatement.setInt(18, avaliacao.getIdAvaliacao());
        // execute insert SQL stetement
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }

    public ArrayList<Avaliacao> selectAvaliacao() throws Exception {
        ArrayList<Avaliacao> retorno = new ArrayList<>();

        //instrução sql correspondente a inserção do aluno
        String sql = " SELECT ";
        sql += " av.idAvaliacao, av.pescoco, av.antebraco, av.braco, av.abdomem, av.torax, av.cintura, av.quadril, av.coxa, av.panturrilha, av.altura, av.peso, av.tipo, av.exercicio, av.repeticao, av.serie,";
        sql += " a.Matricula_aluno, a.Nome, a.Cpf, a.Sexo, a.Estado, a.Cidade, a.Bairro, a.Cep, a.Rua, a.Numero, a.Email, a.Celular, a.Senha, a.Nascimento  ";
        //sql += "  a.Matricula_funcionario, a.Cpf, a.Nome, a.Email, a.Celular, a.Nascimento, a.Rua, a.Numero, a.Cep, a.Estado, a.Cidade, a.Bairro, a.Senha, a.Funcao ";
        sql += " FROM avaliacao as av inner join aluno as a on av.matricula_aluno = a.matricula_aluno ";
        //sql += " FROM avaliacao as av inner join funcionario as a on av.matricula_funcionario = a.matricula_funcionario ";
        sql += " ORDER BY a.nome; ";

        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            Avaliacao a = new Avaliacao();
            a.setIdAvaliacao(leitor.getInt("idAvaliacao"));
            a.setPescoco(leitor.getInt("Pescoco"));
            a.setAntebraco(leitor.getInt("Antebraco"));
            a.setBraco(leitor.getInt("Braco"));
            a.setAbdomem(leitor.getInt("Abdomem"));
            a.setTorax(leitor.getInt("Torax"));
            a.setCintura(leitor.getInt("Cintura"));
            a.setQuadril(leitor.getInt("Quadril"));
            a.setCoxa(leitor.getInt("Coxa"));
            a.setPanturrilha(leitor.getInt("Panturrilha"));
            a.setAltura(leitor.getInt("Altura"));
            a.setPeso(leitor.getInt("Peso"));
            a.setTipo(leitor.getString("Tipo"));
            a.setExercicio(leitor.getString("Exercicio"));
            a.setRepeticao(leitor.getString("Repeticao"));
            a.setSerie(leitor.getString("Serie"));
            a.getAluno().setMatricula_aluno(leitor.getInt("matricula_aluno"));
            a.getAluno().setNome(leitor.getString("Nome"));
            a.getAluno().setCpf(leitor.getString("Cpf"));
            a.getAluno().setSexo(leitor.getString("Sexo"));
            a.getAluno().setEstado(leitor.getString("Estado"));
            a.getAluno().setCidade(leitor.getString("Cidade"));
            a.getAluno().setBairro(leitor.getString("Bairro"));
            a.getAluno().setCep(leitor.getString("Cep"));
            a.getAluno().setRua(leitor.getString("Rua"));
            a.getAluno().setNumero(leitor.getString("Numero"));
            a.getAluno().setEmail(leitor.getString("Email"));
            a.getAluno().setCelular(leitor.getString("Celular"));
            a.getAluno().setSenha(leitor.getString("Senha"));
            a.getAluno().setNascimento(leitor.getDate("Nascimento"));
            /*a.getFuncionario().setMatricula_funcionario(leitor.getInt("matricula_funcionario"));
            a.getFuncionario().setCpf(leitor.getString("Cpf"));
            a.getFuncionario().setNome(leitor.getString("Nome"));
            a.getFuncionario().setEmail(leitor.getString("Email"));
            a.getFuncionario().setCelular(leitor.getString("Celular"));
            a.getFuncionario().setNascimento(leitor.getDate("Nascimento"));
            a.getFuncionario().setRua(leitor.getString("Rua"));
            a.getFuncionario().setNumero(leitor.getString("Numero"));
            a.getFuncionario().setCep(leitor.getString("Cep"));
            a.getFuncionario().setEstado(leitor.getString("Estado"));
            a.getFuncionario().setCidade(leitor.getString("Cidade"));
            a.getFuncionario().setBairro(leitor.getString("Bairro"));
            a.getFuncionario().setSenha(leitor.getString("Senha"));
            a.getFuncionario().setFuncao(leitor.getString("Funcao")); */
            retorno.add(a);
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }

    public Avaliacao getAvaliacao(int idAvaliacao) throws Exception {
        Avaliacao retorno = new Avaliacao();

        //instrução sql correspondente a inserção do aluno
        String sql = " SELECT ";
        sql += " av.idAvaliacao, av.pescoco, av.antebraco, av.braco, av.abdomem, av.torax, av.cintura, av.quadril, av.coxa, av.panturrilha, av.altura, av.peso, av.tipo, av.exercicio, av.repeticao, av.serie,";
        sql += " a.Matricula_aluno, a.Nome, a.Cpf, a.Sexo, a.Estado, a.Cidade, a.Bairro, a.Cep, a.Rua, a.Numero, a.Email, a.Celular, a.Senha, a.Nascimento  ";
        //sql += "  a.Matricula_funcionario, a.Cpf, a.Nome, a.Email, a.Celular, a.Nascimento, a.Rua, a.Numero, a.Cep, a.Estado, a.Cidade, a.Bairro, a.Senha, a.Funcao ";
        sql += " FROM avaliacao as av inner join aluno as a on av.matricula_aluno = a.matricula_aluno ";
        //sql += " FROM avaliacao as av inner join funcionario as a on av.matricula_funcionario = a.matricula_funcionario ";
        sql += " WHERE av.idAvaliacao = ? ";

        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        preparedStatement.setInt(1, idAvaliacao);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            retorno.setIdAvaliacao(leitor.getInt("idAvaliacao"));
            retorno.setPescoco(leitor.getInt("Pescoco"));
            retorno.setAntebraco(leitor.getInt("Antebraco"));
            retorno.setBraco(leitor.getInt("Braco"));
            retorno.setAbdomem(leitor.getInt("Abdomem"));
            retorno.setTorax(leitor.getInt("Torax"));
            retorno.setCintura(leitor.getInt("Cintura"));
            retorno.setQuadril(leitor.getInt("Quadril"));
            retorno.setCoxa(leitor.getInt("Coxa"));
            retorno.setPanturrilha(leitor.getInt("Panturrilha"));
            retorno.setAltura(leitor.getInt("Altura"));
            retorno.setPeso(leitor.getInt("Peso"));
            retorno.setTipo(leitor.getString("Tipo"));
            retorno.setExercicio(leitor.getString("Exercicio"));
            retorno.setRepeticao(leitor.getString("Repeticao"));
            retorno.setSerie(leitor.getString("Serie"));
            retorno.getAluno().setMatricula_aluno(leitor.getInt("matricula_aluno"));
            retorno.getAluno().setNome(leitor.getString("Nome"));
            retorno.getAluno().setCpf(leitor.getString("Cpf"));
            retorno.getAluno().setSexo(leitor.getString("Sexo"));
            retorno.getAluno().setEstado(leitor.getString("Estado"));
            retorno.getAluno().setCidade(leitor.getString("Cidade"));
            retorno.getAluno().setBairro(leitor.getString("Bairro"));
            retorno.getAluno().setCep(leitor.getString("Cep"));
            retorno.getAluno().setRua(leitor.getString("Rua"));
            retorno.getAluno().setNumero(leitor.getString("Numero"));
            retorno.getAluno().setEmail(leitor.getString("Email"));
            retorno.getAluno().setCelular(leitor.getString("Celular"));
            retorno.getAluno().setSenha(leitor.getString("Senha"));
            retorno.getAluno().setNascimento(leitor.getDate("Nascimento"));
            /*retorno.getFuncionario().setMatricula_funcionario(leitor.getInt("matricula_funcionario"));
            retorno.getFuncionario().setCpf(leitor.getString("Cpf"));
            retorno.getFuncionario().setNome(leitor.getString("Nome"));
            retorno.getFuncionario().setEmail(leitor.getString("Email"));
            retorno.getFuncionario().setCelular(leitor.getString("Celular"));
            retorno.getFuncionario().setNascimento(leitor.getDate("Nascimento"));
            retorno.getFuncionario().setRua(leitor.getString("Rua"));
            retorno.getFuncionario().setNumero(leitor.getString("Numero"));
            retorno.getFuncionario().setCep(leitor.getString("Cep"));
            retorno.getFuncionario().setEstado(leitor.getString("Estado"));
            retorno.getFuncionario().setCidade(leitor.getString("Cidade"));
            retorno.getFuncionario().setBairro(leitor.getString("Bairro"));
            retorno.getFuncionario().setSenha(leitor.getString("Senha"));
            retorno.getFuncionario().setFuncao(leitor.getString("Funcao")); */
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }

    public void removerAvaliacao(Avaliacao avaliacao) throws SQLException, Exception {
        //instrucao a ser executada
        String sql = "DELETE FROM avaliacao WHERE idAvaliacao = ? ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //passando os valores para os parametros
        preparedStatement.setInt(1, avaliacao.getIdAvaliacao());
        // execute insert SQL stetement
        preparedStatement.executeUpdate();
        //fechando a conexão com o banco de dados
        this.fecharConexao();
    }
}
