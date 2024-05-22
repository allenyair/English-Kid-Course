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

@WebServlet(name = "EditarUsuarioServlet", urlPatterns = {"/EditarUsuarioServlet"})
public class EditarUsuarioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int userId = Integer.parseInt(request.getParameter("id"));
            UserDAO userDao = new UserDAO();
            User user = userDao.obtenerUsuarioPorId(userId);

            // Verificar si el usuario tiene el rol 3
            if (user.getUserRol() == 3) {
                // Si el usuario tiene el rol 3, enviar un mensaje de error y redirigir a la página de administración de usuarios
                request.setAttribute("error", "No puedes modificar a este usuario.");
                request.getRequestDispatcher("AdminUsersServlet").forward(request, response);
            } else {
                // Si el usuario no tiene el rol 3, enviarlo a la página de edición
                request.setAttribute("usuario", user);
                request.getRequestDispatcher("editar_usuario.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            request.setAttribute("error", "Error al obtener el usuario para edición: " + e.getMessage());
            request.getRequestDispatcher("administrar_usuarios.jsp").forward(request, response);
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
