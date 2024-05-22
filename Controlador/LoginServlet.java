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

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener parámetros de la solicitud
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Crear una instancia de UserDAO para acceder a la base de datos
        UserDAO userDAO = new UserDAO();

        // Validar el usuario
        User user = userDAO.validar(username, password);

        if (user != null) {
            // Usuario válido, redirigir a la página correspondiente según el rol
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);

            // Obtener el rol del usuario
            int userRol = user.getUserRol();

            // Redirigir según el rol del usuario
            switch (userRol) {
                case 1:
                    response.sendRedirect("CourseInfoServlet");
                    break;
                case 2:
                    response.sendRedirect("admin.jsp");
                    break;
                case 3:
                    response.sendRedirect("superadmin.jsp");
                    break;
                default:
                    response.sendRedirect("inicio.jsp");
                    break;
            }
        } else {
            // Usuario inválido, mostrar mensaje de error y redirigir de nuevo a la página de inicio de sesión
            request.setAttribute("errorMessage", "Nombre de usuario o contraseña incorrectos");
            request.getRequestDispatcher("Login.jsp").forward(request, response); // Cambiar "login.jsp" por la página de inicio de sesión
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
