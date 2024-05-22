/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {

    private Connection connection;

    // Constructor que recibe la conexión a la base de datos
    public CourseDAO(Connection connection) {
        this.connection = connection;
    }

    // Método para obtener todos los cursos
    public List<Course> getAllCourses() {
        List<Course> courses = new ArrayList<>();
        String query = "SELECT * FROM courses";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                String description = resultSet.getString("description");
                String level = resultSet.getString("level");
                String creationDate = resultSet.getString("creation_date");
                Course course = new Course(id, title, description, level, creationDate);
                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courses;
    }

    // Método para obtener un curso por su ID
    public Course getCourseById(int courseId) {
        Course course = null;
        String query = "SELECT * FROM courses WHERE id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, courseId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                String description = resultSet.getString("description");
                String level = resultSet.getString("level");
                String creationDate = resultSet.getString("creation_date");
                course = new Course(id, title, description, level, creationDate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return course;
    }

    // Método para insertar un nuevo curso
    public boolean insertCourse(Course course) {
        String query = "INSERT INTO courses (title, description, level) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, course.getTitle());
            preparedStatement.setString(2, course.getDescription());
            preparedStatement.setString(3, course.getLevel());
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para actualizar un curso existente
    public boolean updateCourse(Course course) {
        String query = "UPDATE courses SET title = ?, description = ?, level = ? WHERE id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, course.getTitle());
            preparedStatement.setString(2, course.getDescription());
            preparedStatement.setString(3, course.getLevel());
            preparedStatement.setInt(4, course.getId());
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para eliminar un curso por su ID
    public boolean deleteCourse(int courseId) {
        String query = "DELETE FROM courses WHERE id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, courseId);
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
