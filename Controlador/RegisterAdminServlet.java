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

@WebServlet(name = "RegisterAdminServlet", urlPatterns = {"/RegisterAdminServlet"})
public class RegisterAdminServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener parámetros de la solicitud
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phoneNumber");
        int userRole = Integer.parseInt(request.getParameter("userRole")); // Obtener el rol del usuario desde el formulario

        // Crear una instancia de User con los datos proporcionados
        User newUser = new User(username, email, password, phoneNumber, "active", userRole);

        // Crear una instancia de UserDAO para acceder a la base de datos
        UserDAO userDAO = new UserDAO();

        // Insertar el nuevo usuario en la base de datos
        boolean registroExitoso = userDAO.insertar(newUser);

        PrintWriter out = response.getWriter();
        if (registroExitoso) {
            // Registro exitoso, mostrar mensaje de éxito
            String message = "";
            if (userRole == 2) {
                message = "Administrador creado con éxito";
            } else if (userRole == 3) {
                message = "Super Administrador creado con éxito";
            }
            out.println("<h2>" + message + "</h2>");
        } else {
            // Error al registrar, mostrar mensaje de error
            out.println("<h2>Error al registrar usuario. Inténtalo de nuevo.</h2>");
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
