<%-- 
    Document   : Login
    Created on : 17 mar 2024, 15:30:42
    Author     : MIGUEL
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <!-- Importar Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            /* Estilos globales */
            body {
                font-family: Arial, sans-serif;
                background: linear-gradient(135deg, #00bfff, #ff00ff, #ff6347, #00ced1); /* Degradado multicolor holográfico */
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }
            /* Estilos del contenedor principal */
            .container {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                max-width: 90%;
            }

            /* Estilos del lado izquierdo (sección de bienvenida) */
            .left {
                flex: 1;
                text-align: center;
                padding: 40px 20px;
                margin-right: 30px;
                background: linear-gradient(135deg, #666 0%, rgba(0,0,0,0) 100%); /* Degradado desvanecido */
            }

            /* Estilos del lado derecho (sección de login) */
            .right {
                flex: 1;
                padding: 20px;
                margin-left: 40px;
                background: linear-gradient(45deg, #666 0%, rgba(0,0,0,0) 100%); /* Degradado desvanecido */
            }

            /* Estilos de los campos de entrada */
            input[type="text"], input[type="password"], input[type="submit"] {
                background-color: linear-gradient(135deg, #333, #000); /* Degradado oscuro */
                width: 100%;
                max-width: 250px;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding-left: 40px; /* Espacio para el icono */
                color: rgba(0, 0, 0, 0.5); /* Color desvanecido */
            }
            /* Estilos para cuando los campos de entrada están enfocados */
            input[type="text"]:focus, input[type="password"]:focus {
                color: #000; /* Cuando está enfocado, restaurar color normal */
            }
            /* Estilos para el botón de login */
            input[type="submit"] {
                background-color: #007bff;
                color: #fff;
                border: none;
                cursor: pointer;
                transition: background-color 0.3s ease, transform 0.3s ease; /* Agregar transición al color de fondo y a la transformación */
                width: 100%;
                max-width: 300px;
                padding: 10px;
                border-radius: 5px;
            }
            /* Estilos para cuando el cursor pasa sobre el botón */
            input[type="submit"]:hover {
                background-color: #0056b3;
                transform: scale(1.1); /* Aumentar ligeramente el tamaño del botón al pasar el mouse sobre él */
            }
            /* Estilos para los iconos */
            .icon {
                position: absolute;
                margin: 13px 0 0 10px; /* Alinear el icono verticalmente */
                color: rgba(0, 0, 0, 0.5); /* Color desvanecido */
            }
            /* Estilos para el contenedor de bienvenida */
            .welcome-container {
                text-align: center;
                margin-top: 5px;
                padding: 80px 30px;
                border-radius: 5px;
                background-color: #f0f0f0;
                max-width: 90%;
                overflow: hidden;
            }
            /* Estilos para el contenedor de video */
            .video-container {
                position: relative;
                overflow: hidden;
                width: 100%;
                padding-top: 57%; /* Proporción de aspecto 16:9 (para un video de 16:9) */
            }
            /* Estilos para el video */
            .video-container video {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }
            /* Estilos para las imágenes */
            img {
                max-width: 100%;
                height: auto;
                display: block;
                margin: 0 auto;
                padding-bottom: 20px;
            }
            /* Estilos para el contenedor del formulario */
            .form-container {
                width: 100%;
                max-width: 300px;
                margin: 0 auto;
            }
            /* Estilos para los enlaces dentro del formulario */
            .form-container a {
                font-size: 14px;
            }
            /* Estilos para el contenedor de los enlaces "Remember me" y "Forgot Password?" */
            .remember-forgot {
                display: flex;
                justify-content: space-between;
                align-items: center;
                font-size: 14px;
                margin-bottom: 15px;
            }
            /* Estilos para el contenedor del enlace de creación de cuenta */
            .create-account {
                text-align: center;
                margin-top: 20px;
            }
            .password-toggle {
                position: relative;
            }
            .password-toggle .toggle-icon {
                position: absolute;
                right: 10px;
                top: 50%;
                transform: translateY(-80%);
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <!-- Contenedor principal -->
        <div class="container">
            <!-- Lado izquierdo (sección de bienvenida) -->
            <div class="left">
                <div class="welcome-container">
                    <h2>Welcome to Pessi's Website!</h2>
                    <h3>Learn English with Pessi</h3>
                    <div class="video-container">
                        <video autoplay loop muted>
                            <source src="http://localhost/jump_rope.mp4" type="video/mp4">
                        </video>
                    </div>
                </div>
            </div>
            <!-- Lado derecho (sección de login) -->
            <div class="right">
                <img src="http://localhost/4.png" alt="Imagen de Login">
                <div class="form-container">
                    <form action="http://localhost:8080/English1/LoginServlet" method="post">
                        <!-- Icono de usuario -->
                        <i class="fas fa-user icon"></i>
                        <!-- Campo de entrada de usuario -->
                        <input type="text" id="username" name="username" placeholder="Username">
                        <br>
                        <div class="password-toggle">
                            <!-- Icono de candado -->
                            <i class="fas fa-lock icon"></i>
                            <!-- Campo de entrada de contraseña -->
                            <input type="password" id="password" name="password" placeholder="Password">
                            <i class="fas fa-eye-slash toggle-icon" id="toggleIcon" onclick="togglePasswordVisibility()"></i>
                        </div>
                        <!-- Contenedor para "Remember me" y "Forgot Password?" -->
                        <div class="remember-forgot">
                            <!-- Remember me -->
                            <div>
                                <input type="checkbox" id="remember" name="remember">
                                <label for="remember">Remember me</label>
                            </div>
                            <!-- Forgot Password? -->
                            <div>
                                <a href="#">Forgot Password?</a>
                            </div>
                        </div>
                        <!-- Botón de login -->
                        <input type="submit" value="Login">
                        <!-- Enlace para crear cuenta -->
                        <p class="create-account">No tienes cuenta? <a href="Registro.jsp">Registrarme</a></p>
                    </form>
                </div>
            </div>
        </div>
        <script>
            function togglePasswordVisibility() {
                var password = document.getElementById("password");
                var toggleIcon = document.getElementById("toggleIcon");

                if (password.type === "password") {
                    password.type = "text";
                    toggleIcon.classList.remove("fa-eye-slash");
                    toggleIcon.classList.add("fa-eye");
                } else {
                    password.type = "password";
                    toggleIcon.classList.remove("fa-eye");
                    toggleIcon.classList.add("fa-eye-slash");
                }
            }
        </script>
    </body>
</html>
