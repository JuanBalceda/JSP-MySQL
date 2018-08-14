/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libreria;

import java.sql.*;

/**
 *
 * @author jbalceda
 */
public class Libreria {

    String driver = "com.mysql.jdbc.Driver";
    String cadena = "jdbc:mysql://localhost:3306/inventario?"
            + "useUnicode=true&"
            + "useJDBCCompliantTimezoneShift=true&"
            + "useLegacyDatetimeCode=false&"
            + "serverTimezone=UTC";
    String usuario = "root";
    String clave = "";
    Connection conexion;

    public Connection conexion() {
        try {
            Class.forName(driver);
            conexion = DriverManager.getConnection(cadena, usuario, clave);
        } catch (ClassNotFoundException e) {
            System.out.println("No se encontró el driver...");
        } catch (SQLException e) {
            System.out.println("No se pudo conectar con la base de datos...");
        }
        return conexion;
    }
}
