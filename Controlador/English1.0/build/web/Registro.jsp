<%-- 
    Document   : RegisterUser
    Created on : 16 mar 2024, 00:12:40
    Author     : MIGUEL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .container {
            background-color: #3498db;
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            margin: auto;
            margin-top: 50px;
        }
        label {
            color: white;
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        label i {
            margin-right: 10px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            border-radius: 5px;
            border: none;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #2980b9;
            color: white;
            padding: 10px 0;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 style="color: white;">Registro de Usuario</h2>
    <form action="RegistroUsuarioServlet" method="post">
        <label for="username"><i class="fas fa-user"></i> Nombre de Usuario:</label>
        <input type="text" id="username" name="username" required>

        <label for="email"><i class="fas fa-envelope"></i> Correo Electrónico:</label>
        <input type="email" id="email" name="email" required>

        <label for="password"><i class="fas fa-lock"></i> Contraseña:</label>
        <input type="password" id="password" name="password" required>

        <label for="confirmPassword"><i class="fas fa-lock"></i> Confirmar Contraseña:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>

        <label for="phoneNumber"><i class="fas fa-phone"></i> Número de Teléfono:</label>
        <input type="tel" id="phoneNumber" name="phoneNumber">

        <input type="submit" value="Create Account">
    </form>

    <%
        // Mostrar mensaje de error si existe
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <p style="color: red;"><%= errorMessage %></p>
    <%
        }
    %>
</div>
</body>
</html>

