/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Course;
import Modelo.CourseDAO;
import Config.Conexion;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "CourseInfoServlet", urlPatterns = {"/CourseInfoServlet"})
public class CourseInfoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (Connection con = Conexion.getConnection()) {
            CourseDAO courseDAO = new CourseDAO(con);

            // Obtener el Curso 1 por su ID (1)
            Course course1 = courseDAO.getCourseById(1);

            // Verificar si el Curso 1 existe
            if (course1 != null) {
                // Enviar los datos del Curso 1 al JSP para mostrarlos en su lugar correspondiente
                request.setAttribute("courseTitle1", course1.getTitle());
                request.setAttribute("courseDescription1", course1.getDescription());
            } else {
                // Manejar la situación si el Curso 1 no existe
                request.setAttribute("courseTitle1", "Curso no encontrado");
                request.setAttribute("courseDescription1", "");
            }

            // Obtener el Curso 2 por su ID (2)
            Course course2 = courseDAO.getCourseById(2);

            // Verificar si el Curso 2 existe
            if (course2 != null) {
                // Enviar los datos del Curso 2 al JSP para mostrarlos en su lugar correspondiente
                request.setAttribute("courseTitle2", course2.getTitle());
                request.setAttribute("courseDescription2", course2.getDescription());
            } else {
                // Manejar la situación si el Curso 2 no existe
                request.setAttribute("courseTitle2", "Curso no encontrado");
                request.setAttribute("courseDescription2", "");
            }

            // Redirigir al JSP para mostrar la información de los cursos
            request.getRequestDispatcher("inicio.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            // Manejar la excepción, redirigir a una página de error o mostrar un mensaje al usuario
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Course Information Servlet";
    }
}
