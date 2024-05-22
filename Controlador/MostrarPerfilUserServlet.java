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
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MostrarPerfilUserServlet", urlPatterns = {"/MostrarPerfilUserServlet"})
public class MostrarPerfilUserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener la sesión del usuario
        HttpSession session = request.getSession(false);
        if (session != null) {
            // Obtener el usuario de la sesión
            User user = (User) session.getAttribute("user");

            if (user != null) {
                // Usuario encontrado en la sesión, obtener su ID
                int userId = user.getId();

                // Crear una instancia de UserDAO para acceder a la base de datos
                UserDAO userDAO = new UserDAO();

                // Obtener los datos del usuario
                User userData = userDAO.obtenerUsuarioPorId(userId);

                // Pasar los datos del usuario al JSP
                request.setAttribute("usuario", userData);
                request.getRequestDispatcher("PerfilUser.jsp").forward(request, response);
            } else {
                // Usuario no encontrado en la sesión, redirigir al inicio de sesión
                response.sendRedirect("Login.jsp"); // Cambiar por la página de inicio de sesión
            }
        } else {
            // Sesión no encontrada, redirigir al inicio de sesión
            response.sendRedirect("Login.jsp"); // Cambiar por la página de inicio de sesión
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
        return "Short description";
    }
}
