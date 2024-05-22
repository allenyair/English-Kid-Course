/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.UserDAO;
import Modelo.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ActualizarEstadoUsuarioServlet", urlPatterns = {"/ActualizarEstadoUsuarioServlet"})
public class ActualizarEstadoUsuarioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener el ID del usuario y el nuevo estado enviado desde el cliente
        int userId = Integer.parseInt(request.getParameter("userId"));
        String newStatus = request.getParameter("newStatus");

        // Actualizar el estado del usuario en la base de datos utilizando UserDAO
        UserDAO userDAO = new UserDAO();
        boolean success = userDAO.actualizarEstadoUsuario(userId, newStatus);

        if (success) {
            // Si la actualización fue exitosa, redirigir a la página principal o realizar alguna otra acción
            response.sendRedirect("index.jsp"); // Cambia "index.jsp" por la página a la que quieras redirigir
        } else {
            // Si la actualización falló, mostrar algún mensaje de error o manejar la situación de otra manera
            response.getWriter().println("Error al actualizar el estado del usuario.");
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
}
