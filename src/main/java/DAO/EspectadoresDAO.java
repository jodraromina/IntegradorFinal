/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Modelo.Espectador;
import Util.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MAIN
 */
public class EspectadoresDAO {
    public void agregarEspectador(Espectador p) {
        String sql = "INSERT INTO espectadores2 (nombre, apellido,correo) VALUES (?, ?, ?)";
        //bloque try-with-resources
        //asegura que los recursos abiertos en su declaración (dentro de los paréntesis) se cierren automáticamente al final del bloque try 
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, p.getNombre());
            pstmt.setString(2, p.getApellido());
            pstmt.setString(3, p.getCorreo());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        public Espectador obtenerEspectador (){
        String sql = "SELECT max(id),nombre,apellido,correo from espectadores2;";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                Espectador p = new Espectador();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setApellido(rs.getString("apellido"));
                p.setCorreo(rs.getString("correo"));                
                return p;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
         public void actualizarEspectador(Espectador p) {
        String sql = "UPDATE espectadores2 SET nombre = ?, apellido = ?, correo = ? WHERE id =(select max(id) from espectadores2)";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, p.getNombre());
            pstmt.setString(2, p.getApellido());
            pstmt.setString(3, p.getCorreo());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
         }
     public void eliminarEspectador() {
        String sql = "DELETE FROM espectadores2 WHERE id =(select max(id) from espectadores2) ";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
     }  
         
     }

     
    
    

