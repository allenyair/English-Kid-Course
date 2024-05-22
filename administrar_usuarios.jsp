<%-- 
    Document   : administrar_usuarios
    Created on : 1 may 2024, 22:10:24
    Author     : MIGUEL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> <!-- Importa la clase List -->
<%@ page import="Modelo.User" %>   <!-- Importa la clase User -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista de Usuarios</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f2f2f2;
            }

            h2 {
                margin-top: 20px;
                text-align: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th, td {
                padding: 12px 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #4CAF50;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .switch-button {
                display: inline-block;
            }

            .switch-button .switch-button__checkbox {
                display: none;
            }

            .switch-button .switch-button__label {
                background-color: #fe5e41;
                width: 5rem;
                height: 3rem;
                border-radius: 3rem;
                display: inline-block;
                position: relative;
                cursor: pointer;
            }

            .switch-button .switch-button__label:before {
                transition: .2s;
                display: block;
                position: absolute;
                width: 3rem;
                height: 3rem;
                background-color: #fdffff;
                content: '';
                border-radius: 50%;
                box-shadow: inset 0px 0px 0px 1px #000;
            }

            .switch-button .switch-button__checkbox:checked + .switch-button__label {
                background-color: #00a878;
            }

            .switch-button .switch-button__checkbox:checked + .switch-button__label:before {
                transform: translateX(2rem);
            }

            form {
                display: inline-block;
                margin-right: 5px;
            }

            button {
                padding: 8px 12px;
                border: none;
                cursor: pointer;
                border-radius: 4px;
                font-size: 14px;
                background-color: #4CAF50;
                color: white;
            }

            button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <h2>Lista de Usuarios</h2>

        <%-- Manejo de errores --%>
        <% if (request.getAttribute("error") != null) { %>
        <div style="color: red; text-align: center;">
            <p><strong>Error:</strong> <%= request.getAttribute("error") %></p>
        </div>
        <% } %>

        <%-- Mostrar lista de usuarios --%>
        <table>
            <tr>
                <th>ID</th>
                <th>Nombre de Usuario</th>
                <th>Email</th>
                <th>Teléfono</th>
                <th>Estado</th>
                <th>Rol</th>
                <th>Acciones</th> <!-- Nueva columna para acciones -->
            </tr>
            <% List<User> users = (List<User>) request.getAttribute("usuarios");
    for (User user : users) { %>
            <tr>
                <td><%= user.getId() %></td>
                <td><%= user.getUsername() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getPhoneNumber() %></td>
                <td>
                    <div class="switch-button">
                        <input type="checkbox" name="switch-button" id="switch-label-<%= user.getId() %>" class="switch-button__checkbox" <% if (user.getStatus().equals("active")) { %>checked<% } %>>
                        <label for="switch-label-<%= user.getId() %>" class="switch-button__label"></label>
                    </div>
                </td>
                <td><%= user.getUserRol() %></td>
                <td>
                    <!-- Botones de Editar y Eliminar -->
                    <form action="EditarUsuarioServlet" method="GET">
                        <input type="hidden" name="id" value="<%= user.getId() %>">
                        <button type="submit">Editar</button>
                    </form>
                    <form action="EliminarUsuarioServlet" method="POST" onsubmit="return confirm('¿Estás seguro de que deseas eliminar este usuario?')">
                        <input type="hidden" name="id" value="<%= user.getId() %>">
                        <button type="submit">Eliminar</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        <!-- Botón de Regresar -->
        <form action="superadmin.jsp">
            <button type="submit">Regresar</button>
        </form>


        <!-- Script para manejar el cambio del estado del usuario -->
        <script>
            // Obtener todos los elementos de conmutación
            var switchButtons = document.querySelectorAll('.switch-button__checkbox');
            // Agregar oyentes de eventos para manejar el cambio de estado
            switchButtons.forEach(function (button) {
                button.addEventListener('change', function () {
                    // Obtener el ID del usuario asociado a este botón
                    var userId = button.id.split('-').pop();
                    // Crear una solicitud XMLHttpRequest
                    var xhr = new XMLHttpRequest();
                    // Configurar la solicitud
                    xhr.open('POST', 'ActualizarEstadoUsuarioServlet', true);
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    // Enviar la solicitud con el ID del usuario y el nuevo estado
                    xhr.send('userId=' + userId + '&newStatus=' + (button.checked ? 'active' : 'inactive'));
                });
            });
        </script>
    </body>
</html>
