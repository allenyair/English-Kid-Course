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
import java.io.PrintWriter;

@WebServlet(name = "PerfilServlet", urlPatterns = {"/PerfilServlet"})
public class PerfilServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Obtiene el nombre de usuario de la solicitud
            String username = request.getParameter("username");

            // Llama al método del DAO para obtener los datos del usuario
            UserDAO userDAO = new UserDAO();
            User user = userDAO.validar(username, null); // Se pasa null como contraseña porque no se necesita para obtener el perfil

            // Muestra los datos del usuario en la respuesta
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Perfil de Usuario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Perfil de Usuario</h1>");
            out.println("<p>Username: " + user.getUsername() + "</p>");
            out.println("<p>Email: " + user.getEmail() + "</p>");
            out.println("<p>PhoneNumber: " + user.getPhoneNumber() + "</p>");
            out.println("</body>");
            out.println("</html>");
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
