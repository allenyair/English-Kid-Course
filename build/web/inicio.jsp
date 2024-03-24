<%-- 
    Document   : inicio
    Created on : 16 mar 2024, 13:42:54
    Author     : MIGUEL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página Principal</title>
        <style>
            /* Estilos CSS, puedes personalizar según tus necesidades */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            .container {
                max-width: 800px;
                margin: 0 auto;
                padding: 20px;
            }
            h1, h2, h3 {
                color: #007bff;
            }
            p {
                line-height: 1.5;
            }
            .menu-bar {
                background-color: #f0f0f0;
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .profile-circle {
                width: 30px; /* Tamaño del círculo */
                height: 30px; /* Tamaño del círculo */
                margin-right: 30px;
                border-radius: 50%;
                overflow: hidden; /* Oculta el contenido que se desborda */
                display: inline-block;
                cursor: pointer;
                border: 2px solid black; /* Contorno del círculo */
            }

            .profile-icon {
                width: 100%; /* Ocupa todo el ancho del contenedor */
                height: auto; /* Ajusta automáticamente la altura */
            }

            .profile-dropdown {
                position: relative;
                display: inline-block;
            }
            .profile-dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                z-index: 1;
                right: 0;
                top: 40px;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            .profile-dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }
            .profile-dropdown-content a:hover {
                background-color: #f1f1f1;
            }
            .profile-dropdown.show .profile-dropdown-content {
                display: block;
            }
            .course-container {
                background-color:red;
                border: 2px solid black;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 20px;
            }
            .activity {
                margin-left: 20px;
                margin-top: 10px;
            }

            .etapa {
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .imagen-etapa {
                width: 100px; /* Ajusta el ancho de la imagen según tus necesidades */
                margin-left: 20px; /* Espacio entre la descripción de la etapa y la imagen */
            }
            .progress-bar {
                position: relative;
                width: 100%;
                height: 50px; /* Ajusta la altura de la barra de progreso según sea necesario */
                background-color: lightgray; /* Color de fondo de la barra de progreso */
                border-radius: 25px; /* Ajusta el radio de borde según sea necesario */
            }

            .progress {
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 0;
                background-color: greenyellow; /* Color de fondo de la barra de progreso */
                border-radius: 25px; /* Ajusta el radio de borde según sea necesario */
            }

            .progress-img {
                position: absolute;
                top: -20px; /* Ajusta el margen superior negativo para que la imagen sobresalga un poco */
                left: 0;
                height: calc(100% + 30px); /* Ajusta la altura para que la imagen sobresalga un poco de la barra */
                width: calc(110% + 10px);
                width: 100%; /* Ajusta la anchura de la imagen de progreso */
                background-image: url('http://localhost/Camellonaldo.png'); /* Ruta de la imagen de progreso */
                background-repeat: no-repeat;
                background-size: contain; /* Ajusta el tamaño de la imagen de progreso */
                background-position: 0 0; /* Ajusta la posición inicial de la imagen de progreso */
                border-radius: 25px; /* Ajusta el radio de borde según sea necesario */
            }


            .btn-comenzar {
                padding: 10px 20px;
                background-color: green;
                color: #fff;
                border: 2px solid black;
                border-radius: 10px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s ease;
            }

            .btn-comenzar:hover {
                background-color: #0056b3;
            }

        </style>
    </head>
    <body>
        <div class="menu-bar">
            <h1>Cold English</h1>
            <div class="profile-dropdown" id="profileDropdown">
                <div class="profile-circle" onclick="toggleProfileDropdown()">
                    <img src="http://localhost/IconPessi.png" alt="Icono de Pessi" class="profile-icon" onclick="toggleProfileDropdown()">
                </div>
                <div class="profile-dropdown-content" id="profileDropdownContent">
                    <a href="Configuracion.jsp">Configuración</a>
                    <a href="CerrarSesion.jsp">Cerrar Sesión</a>
                </div>
            </div>
        </div>
        <div class="container">
            <h2>Mis Cursos de Inglés</h2>
            <div class="course-container">
                <div class="etapa">
                    <div class="etapa-info">
                        <p>Lección 1: Sustantivos y Verbos</p>
                        <div class="progress-bar">
                            <div id="progress1" class="progress"></div>
                            <div id="progressImg1" class="progress-img"></div>
                        </div>


                        <br>
                        <button onclick="comenzarEtapa(1)" class="btn-comenzar">Comenzar</button>
                    </div>
                    <img src="http://localhost/Onion.jpg" alt="Imagen etapa 1" class="imagen-etapa">
                </div>
            </div>
            <div class="course-container">
                <div class="etapa">
                    <div class="etapa-info">
                        <p>Lección 2: Adjetivos y Adverbios</p>
                        <progress id="progress2" value="0" max="100"></progress>
                        <br>
                        <button onclick="comenzarEtapa(2)">Comenzar</button>
                    </div>
                    <img src="http://localhost/12.png" alt="Imagen etapa 2" class="imagen-etapa">
                </div>
            </div>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 3...</p>
            <button onclick="comenzarEtapa(3)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 4...</p>
            <button onclick="comenzarEtapa(4)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 5...</p>
            <button onclick="comenzarEtapa(5)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 6...</p>
            <button onclick="comenzarEtapa(6)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 7...</p>
            <button onclick="comenzarEtapa(7)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 8...</p>
            <button onclick="comenzarEtapa(8)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 9...</p>
            <button onclick="comenzarEtapa(9)">Comenzar</button>
        </div>
        <div class="course-container">
            <p>Descripción de la etapa 10...</p>
            <button onclick="comenzarEtapa(10)">Comenzar</button>
        </div>
        <script>
            function comenzarEtapa(etapa) {
                var progress = document.getElementById("progress" + etapa);
                var progressImg = document.getElementById("progressImg" + etapa);
                var width = 0;
                var interval = setInterval(function () {
                    if (width >= 100) {
                        clearInterval(interval);
                    } else {
                        width += 10; // Ajusta según el incremento deseado
                        progress.style.width = width + "%";
                        progressImg.style.backgroundPosition = width + "% 0"; // Mueve la imagen horizontalmente dentro del relleno
                    }
                }, 1000); // Ajusta el intervalo según sea necesario
            }
        </script>



        <script>
            function toggleProfileDropdown() {
                var dropdown = document.getElementById("profileDropdown");
                dropdown.classList.toggle("show");
            }

            window.onclick = function (event) {
                if (!event.target.matches('.profile-circle')) {
                    var dropdowns = document.getElementsByClassName("profile-dropdown");
                    var i;
                    for (i = 0; i < dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if (openDropdown.classList.contains('show')) {
                            openDropdown.classList.remove('show');
                        }
                    }
                }
            }
        </script>
    </body>
</html>



