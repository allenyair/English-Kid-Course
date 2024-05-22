<%-- 
    Document   : PerfilUser
    Created on : 5 may 2024, 18:37:54
    Author     : MIGUEL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Perfil de Usuario</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 0;
                padding: 0;
            }
            .container {
                width: 50%;
                margin: 50px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            h2 {
                text-align: center;
                color: #333;
            }
            p {
                color: #333;
            }
            button {
                background-color: #007bff;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Perfil de Usuario</h2>

            <%-- Obtener los datos del usuario desde el atributo "usuario" --%>
            <%@ page import="Modelo.User" %>
            <% User user = (User) request.getAttribute("usuario"); %>

            <%-- Mostrar los datos del usuario --%>
            <p>Nombre de Usuario: <%= user.getUsername() %></p>
            <p>Email: <%= user.getEmail() %></p>
            <p>Teléfono: <%= user.getPhoneNumber() %></p>
            <%-- Condición para mostrar el rol del usuario --%>
            <%
                String rol;
                if (user.getUserRol() == 1) {
                    rol = "Estudiante";
                } else {
                    rol = String.valueOf(user.getUserRol());
                }
            %>
            <p>Rol: <%= rol %></p>

            <%-- Botón para regresar a Leccion1.jsp --%>
            <button onclick="window.location.href = 'Course1.jsp'">Regresar</button>
        </div>
    </body>
</html>

