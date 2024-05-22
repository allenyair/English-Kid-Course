/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    private Conexion cn = new Conexion();

    public User validar(String username, String password) {
        User user = null;
        String sql = "SELECT ID, Username, Email, Password, phoneNumber, Status, UserRole FROM users WHERE Username = ? AND Password = ?";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("ID"));
                    user.setUsername(rs.getString("Username"));
                    user.setEmail(rs.getString("Email"));
                    user.setPassword(rs.getString("Password"));
                    user.setPhoneNumber(rs.getString("phoneNumber"));
                    user.setStatus(rs.getString("Status"));
                    user.setUserRol(rs.getInt("UserRole"));
                }
            }
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al validar el usuario: " + e.getMessage());
        }
        return user;
    }

    public boolean insertar(User user) {
        String sql = "INSERT INTO users (Username, Email, Password, phoneNumber, Status, UserRole) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getPhoneNumber());
            ps.setString(5, user.getStatus());
            ps.setInt(6, user.getUserRol());
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al insertar el usuario: " + e.getMessage());
            return false;
        }
    }

    public List<User> obtenerTodosLosUsuarios() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT ID, Username, Email, Password, phoneNumber, Status, UserRole FROM users";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("ID"));
                user.setUsername(rs.getString("Username"));
                user.setEmail(rs.getString("Email"));
                user.setPassword(rs.getString("Password"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setStatus(rs.getString("Status"));
                user.setUserRol(rs.getInt("UserRole"));
                users.add(user);
            }
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al obtener todos los usuarios: " + e.getMessage());
        }
        return users;
    }

    public boolean actualizarEstadoUsuario(int userId, String newStatus) {
        String sql = "UPDATE users SET Status = ? WHERE ID = ?";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, newStatus);
            ps.setInt(2, userId);
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al actualizar el estado del usuario: " + e.getMessage());
            return false;
        }
    }

    public User obtenerUsuarioPorId(int userId) {
        User user = null;
        String sql = "SELECT ID, Username, Email, Password, phoneNumber, Status, UserRole FROM users WHERE ID = ?";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("ID"));
                    user.setUsername(rs.getString("Username"));
                    user.setEmail(rs.getString("Email"));
                    user.setPassword(rs.getString("Password"));
                    user.setPhoneNumber(rs.getString("phoneNumber"));
                    user.setStatus(rs.getString("Status"));
                    user.setUserRol(rs.getInt("UserRole"));
                }
            }
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al obtener el usuario por ID: " + e.getMessage());
        }
        return user;
    }

    public boolean actualizar(User user) {
        String sql = "UPDATE users SET Username = ?, Email = ?, phoneNumber = ?, Status = ?, UserRole = ? WHERE ID = ?";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhoneNumber());
            ps.setString(4, user.getStatus());
            ps.setInt(5, user.getUserRol());
            ps.setInt(6, user.getId());
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al actualizar el usuario: " + e.getMessage());
            return false;
        }
    }

    public void eliminarUsuario(int userId) {
        String sql = "DELETE FROM users WHERE ID = ?";
        try (Connection con = cn.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, userId);
            int resultado = ps.executeUpdate();
            if (resultado == 0) {
                System.out.println("No se encontró ningún usuario con el ID especificado.");
            } else {
                System.out.println("Usuario eliminado correctamente.");
            }
        } catch (SQLException e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            System.err.println("Error al eliminar el usuario: " + e.getMessage());
        }
    }

}
