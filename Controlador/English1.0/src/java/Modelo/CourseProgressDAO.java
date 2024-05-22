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

public class CourseProgressDAO {

    private final Connection connection;

    public CourseProgressDAO(Connection connection) {
        this.connection = connection;
    }

    // Método para verificar si un usuario está registrado en un curso
    public boolean isUserRegistered(int userId, int courseId) throws SQLException {
        String query = "SELECT COUNT(*) FROM course_progress WHERE user_id = ? AND course_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, courseId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int count = resultSet.getInt(1);
                return count > 0;
            }
        }
        return false;
    }

    // Método para registrar un usuario en un curso
    public void registerUserToCourse(int userId, int courseId) throws SQLException {
        String query = "INSERT INTO course_progress (user_id, course_id) VALUES (?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, courseId);
            preparedStatement.executeUpdate();
        }
    }

    // Otros métodos relacionados con el progreso del curso podrían ir aquí
}

