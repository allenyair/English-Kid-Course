<%-- 
    Document   : Leccion1
    Created on : 13 abr 2024, 20:23:59
    Author     : MIGUEL
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leccion 1</title>
        <style>
            body, html {
                height: 100%;
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif; /* Cambia la fuente si lo deseas */
            }

            .container {
                display: flex;
                height: 100vh; /* Usamos vh para que el contenedor ocupe el 100% del viewport */
            }

            .section {
                border-left: 1px solid blue; /* A�ade un borde izquierdo para distinguir las secciones */
                border-right: 1px solid blue; /* A�ade un borde derecho para distinguir las secciones */
                border-top: none; /* Elimina el borde superior */
                border-bottom: none; /* Elimina el borde inferior */
                display: flex;
                flex-direction: column; /* Coloca los elementos en columna */
                align-items: flex-start; /* Alinea los elementos a la izquierda */
                padding: 10px; /* A�ade espacio interno para los botones */
            }


            /* Ajustamos el tama�o de las secciones */
            .section:nth-child(1) {
                flex: 0 0 15%; /* 15% de la pantalla */
            }


            .section:nth-child(2) {
                flex: 0 0 57%; /* 60% de la pantalla */
            }


            .section:nth-child(3) {
                flex: 0 0 25%; /* 25% de la pantalla */
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .section:nth-child(3) .content {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .section:nth-child(3) img {
                max-width: 100px;
            }

            .section:nth-child(3) p {
                margin-top: 10px;
                font-size: 1.2em;
            }

            .section:nth-child(3) .friends {
                margin-top: 20px;
                text-align: center;
            }

            .section:nth-child(3) .friends input[type="text"] {
                margin-bottom: 10px;
                padding: 5px;
                width: 150px;
            }

            .section:nth-child(3) .friends button {
                padding: 5px 10px;
                background-color: #cce6ff;
                border: 1px solid #fff;
                cursor: pointer;
                border-radius: 5px;
                transition: background-color 0.3s, border-color 0.3s;
            }

            .section:nth-child(3) .friends button:hover {
                background-color: #fff;
                border-color: #cce6ff;
            }

            .section:nth-child(3) .chat {
                margin-top: 20px;
                width: 80%;
                height: 150px;
                border: 1px solid #ccc;
                overflow-y: auto;
            }


            /* Estilos para el t�tulo "Cold English" en la primera secci�n */
            .section:nth-child(1) h2 {
                font-size: 2em; /* Tama�o de la fuente */
                color: #000; /* Color del texto (negro en este caso) */
                margin-bottom: 30px; /* Aumenta el espacio inferior para separar el t�tulo de los botones */
                margin-top: 0; /* Elimina el margen superior para que el t�tulo est� m�s arriba */
                text-align: center; /* Centra el texto horizontalmente */
            }

            /* Estilos para los botones */
            .section:nth-child(1) button {
                margin-bottom: 10px; /* A�ade espacio entre los botones */
                padding: 10px; /* Ajusta el relleno del bot�n */
                font-size: 1em; /* Tama�o de la fuente */
                width: 170px; /* Ancho fijo para los botones */
                height: 40px; /* Altura fija para los botones */
                text-align: center; /* Centra el texto horizontalmente */
                background-color: #cce6ff; /* Fondo azul claro */
                border: 1px solid #fff; /* Borde blanco */
                cursor: pointer; /* Cambia el cursor al pasar sobre el bot�n */
                display: flex; /* A�ade display flex para alinear el icono */
                align-items: center; /* Centra verticalmente el contenido del bot�n */
                border-radius: 10px; /* Bordes redondeados */
                transition: background-color 0.3s, border-color 0.3s; /* Transici�n suave para el cambio de color */
            }

            /* Estilos para los iconos */
            .section:nth-child(1) button img {
                margin-right: 10px; /* Espacio entre el icono y el texto */
                max-width: 20px; /* Establece un ancho m�ximo para el icono */
            }

            /* Estilo al pasar el mouse sobre el bot�n */
            .section:nth-child(1) button:hover {
                background-color: #fff; /* Fondo blanco al pasar el mouse */
                border-color: #cce6ff; /* Borde azul claro al pasar el mouse */
                color: #007bff; /* Color del texto al pasar el mouse (azul claro) */
                transform: scale(1.1); /* Aumenta el tama�o al pasar el mouse */
                box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* A�ade una sombra suave */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="section">
                <!-- T�tulo "Cold English" -->
                <h2>COLD ENGLISH</h2>

                <!-- Formulario para redirecci�n -->
                <form id="form_redireccion" method="post" action="">

                    <!-- Botones -->
                    <button formaction="inicio.jsp">
                        <img src="http://localhost/leccion-en-linea.png" alt="Icono Lecciones"> Lecciones
                    </button>
                    <button formaction="">
                        <img src="http://localhost/pESSI-removebg-preview.png" alt="Icono Perfil"> Perfil
                    </button>
                    <button formaction="mas.jsp">
                        <img src="http://localhost/herramientas.png" alt="Icono M�s"> M�s
                    </button>
                    <button formaction="Login.jsp">
                        <img src="http://localhost/salida.png" alt="Icono Exit"> Exit
                    </button>
                </form>

                <!-- Video -->
                <video autoplay loop muted width="100%">
                    <source src="http://localhost/vce.mp4" type="video/mp4">
                    Tu navegador no soporta el elemento de video.
                </video>
            </div>

            <div class="section">
                <!-- Contenido de la segunda secci�n -->
                <h2>Secci�n 2</h2>
            </div>
            <div class="section">
                <!-- Contenido de la tercera secci�n -->
                <h2>Secci�n 3</h2>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg" alt="Flag of USA">
                    <p>English</p>
                    <div class="friends">
                        <h3>Amigos</h3>
                        <!-- funcionalidad para agregar amigos -->
                        <input type="text" placeholder="Nombre de amigo">
                        <button>Agregar amigo</button>
                        <!-- �rea para chatear -->
                        <div class="chat">
                            <!-- Aqu� se mostrar�an los mensajes de chat -->
                        </div>
                    </div>
                </div>
            </div>

