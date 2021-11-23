
package Conexion;


import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    Connection con;

    public Conexion() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/mundomarinow", "", "");

        } catch (Exception e) {
            System.err.println("error" + e);

        }

    }

    public Connection getConnection() {
        return con;
    }

}