/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mantenimiento;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import libreria.Libreria;

/**
 *
 * @author jbalceda
 */
public class Mantenimiento extends Libreria {

    PreparedStatement ps;
    ResultSet rs;

    public boolean insertar(int codigo, String nombre, int cantidad, double precio)
            throws SQLException {
        String sql = "INSERT INTO articulos(codigo, nombre, stock, precio) VALUES(?, ?, ?, ?)";
        ps = conexion().prepareStatement(sql);
        ps.setInt(1, codigo);
        ps.setString(2, nombre);
        ps.setInt(3, cantidad);
        ps.setDouble(4, precio);
        ps.executeUpdate();
        return true;
    }

    public ResultSet consulta(String sql) throws SQLException {
        ps = conexion().prepareStatement(sql);
        rs = ps.executeQuery();
        return rs;
    }
}
