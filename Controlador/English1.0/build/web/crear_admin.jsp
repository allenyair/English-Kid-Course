<%-- 
    Document   : crear_admin
    Created on : 3 may 2024, 18:38:15
    Author     : MIGUEL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Crear Usuario</title>
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
            form {
                margin-top: 20px;
            }
            label {
                display: block;
                margin-bottom: 5px;
                color: #333;
            }
            input[type="text"],
            input[type="email"],
            input[type="password"],
            input[type="tel"],
            select {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            button[type="submit"] {
                background-color: #007bff;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
            button[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Crear Nuevo Usuario</h2>

            <%-- Formulario para crear un nuevo usuario --%>
            <form action="RegisterAdminServlet" method="POST">
                <label for="username">Nombre de Usuario:</label>
                <input type="text" id="username" name="username" required><br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required><br>
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required><br>
                <label for="phoneNumber">Teléfono:</label>
                <input type="tel" id="phoneNumber" name="phoneNumber"><br>
                <label for="userRole">Rol de Usuario:</label>
                <select id="userRole" name="userRole" required>
                    <option value="2">Administrador</option>
                    <option value="3">Superadministrador</option>
                </select><br>
                <button type="submit">Crear Usuario</button>
            </form>
        </div>
    </body>
</html>

