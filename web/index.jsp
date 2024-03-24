<%-- 
    Document   : index
    Created on : 15 mar 2024, 20:02:42
    Author     : MIGUEL
--%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>COLD ENGLISH</title>
        <style>
            /* Estilos CSS */
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
            #header {
                background-color: #333;
                color: #fff;
                text-align: center;
                padding: 10px 0;
            }
            #content {
                display: flex;
                width: 100%;
            }
            #left-section {
                width: 50%;
                padding: 20px;
                box-sizing: border-box;
                overflow: hidden; /* Evita que el video se salga del contenedor */
            }
            #right-section {
                width: 50%;
                text-align: center;
                padding: 20px;
                box-sizing: border-box;
                background-image: url('http://localhost/yui.png'); /* Ruta de la imagen */
                background-size: cover; /* Cubrir todo el contenedor */
                background-position: center; /* Centrar la imagen */
                background-repeat: no-repeat; /* No repetir la imagen */
            }
            #left-section video {
                width: 440px; /* Ancho del video */
                margin-left: 100px;
                height: auto;
            }
            #right-section-content {
                background-color: rgba(255, 255, 255, 0.8); /* Color de fondo con transparencia */
                padding: 20px;
                margin-top: 200px;
                border-radius: 10px; /* Bordes redondeados */
            }
            #right-section-content h2, #right-section-content p {
                color: #333; /* Color del texto */
                margin-bottom: 20px; /* Espacio entre el texto y los botones */
            }
            .button, .button.login, .button.register {
                border-radius: 30px; /* Bordes redondeados */
                padding: 20px 20px; /* Padding vertical y horizontal */
                border: 2px solid transparent; /* Borde transparente */
                cursor: pointer;
                margin-bottom: 30px; /* Espacio entre los botones */
                display: inline-block; /* Hace que los botones estén uno al lado del otro */
                width: 150px; /* Ancho de los botones */
                margin-right: 20px; /* Espacio entre los botones */
                font-size: 18px; /* Tamaño del texto */
                font-weight: bold; /* Grosor del texto */
                text-decoration: none; /* Elimina subrayado */
                transition: all 0.3s ease; /* Transición suave */
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5); /* Sombra */
                transform: translateY(0); /* Efecto tridimensional */
            }

            .button:hover, .button.login:hover {
                background-color: whitesmoke; /* Cambio de color al pasar el ratón */
                color: black; /* Cambio de color del texto al pasar el ratón */
                border-color: blue;
                border-width: 4px; /* Cambia el ancho del borde al pasar el ratón */
                transform: translateY(-2px); /* Efecto tridimensional al pasar el ratón */
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Sombra al pasar el ratón */
            }
            .button:hover,.button.register:hover {
                background-color: whitesmoke; /* Cambio de color al pasar el ratón */
                color: black; /* Cambio de color del texto al pasar el ratón */
                border-color: orange; /* Cambio de color del borde al pasar el ratón */
                border-width: 4px;
                transform: translateY(-2px); /* Efecto tridimensional al pasar el ratón */
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Sombra al pasar el ratón */
            }
            .button.login {
                background-color: #007bff; /* Color azul */
                color: #fff; /* Color del texto */
            }

            .button.register {
                background-color: orangered;
                color: #fff; /* Color del texto */
            }
        </style>
    </head>
    <body>
        <div id="header">
            <!-- Barra superior -->
            <marquee behavior="" direction="" ></marque><h1>COLD ENGLISH</h1></marquee>
        </div>
        <div id="content">            
            <!-- Mitad izquierda - Video -->
            <div id="left-section">
                <!-- Video -->
                <video width="300" autoplay loop muted>
                    <source src="http://localhost/MainPessi.mp4" type="video/mp4">
                </video>
            </div>
            <!-- Mitad derecha - Texto y botones -->
            <div id="right-section">
                <!-- Contenido de la sección derecha -->
                <div id="right-section-content">
                    <h2>¡Aprende inglés con Pessi y Camellonaldo!</h2>
                    <p>Que no se te congele el cerebro con nuestros cursos</p>
                    <!-- Botones -->
                    <a href="Login.jsp" class="button login">Iniciar sesión</a>
                    <a href="Registro.jsp" class="button register">Registrarme</a>
                </div>
            </div>
        </div>
    </body>
</html>



