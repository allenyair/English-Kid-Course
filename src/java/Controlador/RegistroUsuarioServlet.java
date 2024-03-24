/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.User;
import Modelo.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "RegistroUsuarioServlet", urlPatterns = {"/RegistroUsuarioServlet"})
public class RegistroUsuarioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener parámetros de la solicitud
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phoneNumber");

        // Crear una instancia de User con los datos proporcionados
        User newUser = new User(username, email, password, phoneNumber);

        // Crear una instancia de UserDAO para acceder a la base de datos
        UserDAO userDAO = new UserDAO();

        // Insertar el nuevo usuario en la base de datos
        boolean registroExitoso = userDAO.insertar(newUser);

        if (registroExitoso) {
            // Registro exitoso, redirigir a la página de inicio de sesión
            response.sendRedirect("index.jsp"); // Página de inicio de sesión
        } else {
            // Error al registrar, mostrar mensaje de error y redirigir a la página de registro nuevamente
            request.setAttribute("errorMessage", "Error al registrar usuario. Inténtalo de nuevo.");
            request.getRequestDispatcher("registro.jsp").forward(request, response); // Cambiar "registro.jsp" por la página de registro
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
