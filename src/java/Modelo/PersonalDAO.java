package Modelo;

import Conexion.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import Interface.Interfaz;

public class PersonalDAO implements Interfaz {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Personal p = new Personal();
    
    @Override
    public List listar() {

        String sql = "SELECT * FROM `empleados`";
        List<Personal> list = new ArrayList();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Personal per = new Personal();
                per.setId(rs.getInt("ID"));
                per.setNombre(rs.getString("NOMBRE"));
                per.setDireccion(rs.getString(3));
                per.setTlf(rs.getString("TELEFONO"));
                per.setFecha(rs.getString("FECHAIN"));
                per.setCargo(rs.getString("CARGO"));
                per.setZ_i(rs.getString("Z_I"));
                list.add(per);
            }

        } catch (Exception e) {

        }

        return list;

    }

    @Override
    public boolean add(Personal per) {
       
        String sql = "INSERT INTO `empleados` (`ID`, `NOMBRE`, `DIRECCION`, `TELEFONO`, `FECHAIN`, `CARGO`, `Z_I`) "
                + "VALUES (NULL, '" + per.getNombre() + "', '" + per.getDireccion() + "', '" + per.getTlf() + "', '" + per.getFecha() + "', '" + per.getCargo() + "', '" + per.getZ_i() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {

        }
        
        return false;

    }

    @Override
    public boolean eliminar(int id) {

        String sql = "DELETE FROM empleados WHERE ID =" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public int validar(Usuario per) {
        String sql = "SELECT * FROM `empleados` WHERE NOMBRE=? AND CARGO=?";
        try {
            int r = 0;
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getNom());
            ps.setString(2, per.getPass());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                per.setNom(rs.getString("NOMBRE"));
                per.setPass(rs.getString("CARGO"));

            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }
    }

}
