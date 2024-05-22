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

@WebServlet(name = "ActualizarUsuarioServlet", urlPatterns = {"/ActualizarUsuarioServlet"})
public class ActualizarUsuarioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Obtener los parámetros del formulario
            int userId = Integer.parseInt(request.getParameter("id"));
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phoneNumber");
            String status = request.getParameter("status");
            int userRol = Integer.parseInt(request.getParameter("userRol"));

            // Verificar si el nuevo valor de userRol es 3
            if (userRol == 3) {
                request.setAttribute("error", "No es posible cambiar este usuario a Super Administrador");
                request.getRequestDispatcher("editar_usuario.jsp").forward(request, response);
                return; // Detener el proceso
            }

            // Crear un objeto User con los datos actualizados
            User user = new User();
            user.setId(userId);
            user.setUsername(username);
            user.setEmail(email);
            user.setPhoneNumber(phoneNumber);
            user.setStatus(status);
            user.setUserRol(userRol);

            // Actualizar el usuario en la base de datos
            UserDAO userDao = new UserDAO();
            boolean actualizado = userDao.actualizar(user);

            // Verificar si se actualizó correctamente y establecer un mensaje
            if (actualizado) {
                request.setAttribute("exito", "Usuario actualizado exitosamente");
            } else {
                request.setAttribute("error", "Error al actualizar el usuario");
            }
        } catch (Exception e) {
            // Manejar la excepción de manera apropiada, por ejemplo, lanzando una excepción o registrándola
            request.setAttribute("error", "Error al procesar la solicitud: " + e.getMessage());
        }

        // Redireccionar a la página de edición de usuario
        request.getRequestDispatcher("editar_usuario.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
