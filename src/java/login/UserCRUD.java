/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package login;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserCRUD {

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
    
    public ArrayList<Login> selectLogin() throws Exception {
        ArrayList<Login> retorno = new ArrayList<>();

        //instrução sql correspondente a inserção do aluno
        String sql = " select  l.Email, l.Senha, l.Funcao, l.Nome  ";
        sql += " from funcionario as l ";
        this.abrirConexao();
        //preparando a instrução
        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
        //executando a instrução sql
        ResultSet leitor = preparedStatement.executeQuery();
        //lendo os resultados
        while (leitor.next()) {
            Login l = new Login();
            
            l.setNome(leitor.getString("Nome"));
            l.setEmail(leitor.getString("Email"));
            l.setSenha(leitor.getString("Senha"));
            l.setFuncao(leitor.getString("funcao"));
            retorno.add(l);
        }
        //fechando a conexão com o banco de dados
        this.fecharConexao();
        return retorno;
    }
    
}
