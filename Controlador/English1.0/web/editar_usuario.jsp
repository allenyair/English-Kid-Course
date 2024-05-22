<%-- 
    Document   : editar_usuario
    Created on : 2 may 2024, 18:31:35
    Author     : MIGUEL
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Editar Usuario</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            h2 {
                color: #333;
            }

            form {
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                width: 400px;
                margin: 0 auto;
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"], select {
                width: calc(100% - 12px);
                padding: 8px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                box-sizing: border-box;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                margin-top: 10px;
            }

            button:hover {
                background-color: #45a049;
            }

            .button-container {
                text-align: center;
                margin-top: 20px;
            }

            .button-container a {
                text-decoration: none;
                color: #333;
            }

            .button-container a button {
                background-color: #f44336;
            }

            .button-container a button:hover {
                background-color: #d32f2f;
            }
        </style>
    </head>
    <body>
        <h2>Editar Usuario</h2>

        <%-- Manejo de errores y éxito --%>
        <% if (request.getAttribute("error") != null) { %>
        <div style="color: red;">
            <p><strong>Error:</strong> <%= request.getAttribute("error") %></p>
        </div>
        <% } else if (request.getAttribute("exito") != null) { %>
        <div style="color: green;">
            <p><strong>Éxito:</strong> <%= request.getAttribute("exito") %></p>
        </div>
        <% } %>

        <%-- Formulario para editar el usuario --%>
        <form action="ActualizarUsuarioServlet" method="POST">
            <%-- Obtener el objeto User del atributo "usuario" --%>
            <c:if test="${not empty usuario}">
                <%-- Campos de entrada para los datos del usuario --%>
                <input type="hidden" name="id" value="${usuario.id}">
                <label for="username">Nombre de Usuario:</label>
                <input type="text" id="username" name="username" value="${usuario.username}"><br>
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" value="${usuario.email}"><br>
                <label for="phoneNumber">Teléfono:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" value="${usuario.phoneNumber}"><br>
                <label for="status">Estado:</label>
                <select id="status" name="status">
                    <option value="active" ${usuario.status eq 'active' ? 'selected' : ''}>Activo</option>
                    <option value="inactive" ${usuario.status eq 'inactive' ? 'selected' : ''}>Inactivo</option>
                </select><br>
                <label for="userRol">Rol de Usuario:</label>
                <input type="text" id="userRol" name="userRol" value="${usuario.userRol}"><br>
                <div class="button-container">
                    <button type="submit">Guardar Cambios</button>

                    <!-- Botón para regresar a la página de administración de usuarios -->
                    <a href="AdminUsersServlet"><button type="button">Regresar</button></a>
                </div>
            </c:if>
        </form>
    </body>
</html>



