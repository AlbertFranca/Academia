//Class search no DataBase o User 
package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class User {

    private Connection conn;
    private String DRIVER_MYSQL = "com.mysql.jdbc.Driver";
    private String LOCAL_SERVIDOR = "localhost";
    private String BANCO_DE_DADOS = "academia";
    private String PORTA_BANCO = "3306";
    private String USUARIO = "root";
    private String SENHA = "";

    public Connection conectarBD() {
        Connection conn = null;
        try {
            Class.forName(DRIVER_MYSQL).newInstance();
            String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
            this.conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);
        } catch (Exception e) {
        }
        return conn;
    }

    public String email = "";
    public boolean result = false;

    public boolean verificarFuncionario(String email, String senha) throws SQLException {
        String sql = "";
        Connection conn = conectarBD();

        // instruction SQL
        sql += "SELECT email, funcao FROM Funcionario ";
        sql += "WHERE email = " + "'" + email + "'";
        sql += " AND senha = " + "'" + senha + "'";

        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);

        ResultSet leitor = preparedStatement.executeQuery();
        try {
            if (leitor.next()) {
                result = true;
                email = leitor.getString("email");
            }
        } catch (Exception e) {
        }
        return result;
    }
}
