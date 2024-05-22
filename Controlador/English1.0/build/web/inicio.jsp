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
                background-color: black;
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .profile-circle {
                width: 40px; /* Tamaño del círculo */
                height: 40px; /* Tamaño del círculo */
                margin-right: 30px;
                border-radius: 50%;
                overflow: hidden; /* Oculta el contenido que se desborda */
                display: inline-block;
                cursor: pointer;
                border: 2px solid black; /* Contorno del círculo */
                background-color: white;
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
                background-image: url('http://localhost/pngtree-frozen-water-s-glass-surface-an-abstract-texture-of-blue-ice-image_13592933.png');
                background-size: cover; /* Ajusta el tamaño de la imagen para cubrir todo el contenedor */
                border: 2px solid black;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 20px;
            }


            .etapa {
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .etapa-info p {
                font-size: 20px;
                margin-top: 5px;
                font-weight: bold;
                color: white;
            }

            .imagen-etapa {
                width:250px; /* Ajusta el ancho de la imagen según tus necesidades */
                margin-left: 5px; /* Espacio entre la descripción de la etapa y la imagen */
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
                background-image: url('http://localhost/Camellonaldo1.png'); /* Ruta de la imagen de progreso */
                background-repeat: no-repeat;
                background-size: contain; /* Ajusta el tamaño de la imagen de progreso */
                background-position: 0 0; /* Ajusta la posición inicial de la imagen de progreso */
                border-radius: 25px; /* Ajusta el radio de borde según sea necesario */
            }
            .progress-end-img {
                position: absolute;
                top: -20px;
                right: -80px; /* Ajusta la posición de la imagen al final de la barra */
                height: 160%; /* Ajusta la altura de la imagen */
                width: auto; /* Permite que el ancho se ajuste automáticamente */
                border-radius: 0 25px 25px 0; /* Ajusta el radio de borde para que coincida con el de la barra */
            }


            .animated-button {
                position: relative;
                display: flex;
                align-items: center;
                gap: 4px;
                padding: 16px 36px;
                border: 4px solid;
                border-color: transparent;
                font-size: 16px;
                background-color: black; /* Cambia el color de fondo a negro */
                border-radius: 100px;
                font-weight: 600;
                color: greenyellow;
                box-shadow: 0 0 0 2px greenyellow;
                cursor: pointer;
                overflow: hidden;
                transition: all 0.6s cubic-bezier(0.23, 1, 0.32, 1);
            }


            .animated-button svg {
                position: absolute;
                width: 24px;
                fill: greenyellow;
                z-index: 9;
                transition: all 0.8s cubic-bezier(0.23, 1, 0.32, 1);
            }

            .animated-button .arr-1 {
                right: 16px;
            }

            .animated-button .arr-2 {
                left: -25%;
            }

            .animated-button .circle {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 20px;
                height: 20px;
                background-color: greenyellow;
                border-radius: 50%;
                opacity: 0;
                transition: all 0.8s cubic-bezier(0.23, 1, 0.32, 1);
            }

            .animated-button .text {
                position: relative;
                z-index: 1;
                transform: translateX(-12px);
                transition: all 0.8s cubic-bezier(0.23, 1, 0.32, 1);
            }

            .animated-button:hover {
                box-shadow: 0 0 0 12px transparent;
                color: #212121;
                border-radius: 12px;
            }

            .animated-button:hover .arr-1 {
                right: -25%;
            }

            .animated-button:hover .arr-2 {
                left: 16px;
            }

            .animated-button:hover .text {
                transform: translateX(12px);
            }

            .animated-button:hover svg {
                fill: #212121;
            }

            .animated-button:active {
                scale: 0.95;
                box-shadow: 0 0 0 4px greenyellow;
            }

            .animated-button:hover .circle {
                width: 220px;
                height: 220px;
                opacity: 1;
            }
            /* === removing default button style ===*/
            .buttonCold {
                margin: 0;
                height: auto;
                background: transparent;
                padding: 0;
                border: none;
                cursor: pointer;
            }

            /* button styling */
            .buttonCold {
                --border-right: 6px;
                --text-stroke-color: rgba(255,255,255,0.6);
                --animation-color: #37FF8B;
                --fs-size: 2em;
                letter-spacing: 3px;
                text-decoration: none;
                font-size: var(--fs-size);
                font-family: "Arial";
                position: relative;
                text-transform: uppercase;
                color: transparent;
                -webkit-text-stroke: 1px var(--text-stroke-color);
            }
            /* this is the text, when you hover on button */
            .hover-text {
                position: absolute;
                box-sizing: border-box;
                content: attr(data-text);
                color: var(--animation-color);
                width: 0%;
                inset: 0;
                border-right: var(--border-right) solid var(--animation-color);
                overflow: hidden;
                transition: 0.5s;
                -webkit-text-stroke: 1px var(--animation-color);
            }
            /* hover */
            .buttonCold:hover .hover-text {
                width: 100%;
                filter: drop-shadow(0 0 23px var(--animation-color))
            }

        </style>

    </head>
    <body>
        <div class="menu-bar">
            <button class="buttonCold" data-text="COLD ENGLISH" style="--animation-color: #007bff;">
                <span class="actual-text">&nbsp;COLD&nbsp;ENGLISH&nbsp;</span>
                <span aria-hidden="true" class="hover-text">&nbsp;COLD&nbsp;ENGLISH&nbsp;</span>
            </button>

            <div class="profile-dropdown" id="profileDropdown">
                <div class="profile-circle" onclick="toggleProfileDropdown()">
                    <img src="http://localhost/pESSI-removebg-preview.png" alt="Icono de Pessi" class="profile-icon" onclick="toggleProfileDropdown()">
                </div>
                <div class="profile-dropdown-content" id="profileDropdownContent">
                    <a href="Configuracion.jsp">Configuración</a>
                    <a href="index.jsp">Cerrar Sesión</a>
                </div>
            </div>
        </div>

        <div class="container">
            <h2>My English Courses</h2>

            <div class="course-container">
                <div class="etapa">
                    <div class="etapa-info">
                        <p style="font-size: 25px">${courseTitle1} <br> <span style="font-size: 20px">${courseDescription1}</span></p>
                        <div class="progress-bar">
                            <div id="progress1" class="progress"></div>
                            <div id="progressImg1" class="progress-img"></div>
                            <img src="http://localhost/Ratappe.png" class="progress-end-img" alt="Imagen al final de la barra">
                        </div>
                        <br>
                        <!-- Agregamos un ID al botón para poder referenciarlo en JavaScript -->
                        <button id="btnComenzar1" class="animated-button">
                            <svg viewBox="0 0 24 24" class="arr-2" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M16.1716 10.9999L10.8076 5.63589L12.2218 4.22168L20 11.9999L12.2218 19.778L10.8076 18.3638L16.1716 12.9999H4V10.9999H16.1716Z"
                                ></path>
                            </svg>
                            <span class="text">---START---</span>
                            <span class="circle"></span>
                            <svg viewBox="0 0 24 24" class="arr-1" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M16.1716 10.9999L10.8076 5.63589L12.2218 4.22168L20 11.9999L12.2218 19.778L10.8076 18.3638L16.1716 12.9999H4V10.9999H16.1716Z"
                                ></path>
                            </svg>
                        </button>
                    </div>
                    <img src="http://localhost/113.png" alt="Imagen etapa 1" class="imagen-etapa">
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="course-container">
                <div class="etapa">
                    <div class="etapa-info">
                        <p style="font-size: 25px">${courseTitle2} <br> <span style="font-size: 20px">${courseDescription2}</span></p>
                        <div class="progress-bar">
                            <div id="progress2" class="progress"></div>
                            <div id="progressImg1" class="progress-img"></div>
                            <img src="http://localhost/Ratappe.png" class="progress-end-img" alt="Imagen al final de la barra">
                        </div>
                        <br>

                        <button id="comenzarEtapa(2)" class="animated-button">
                            <svg viewBox="0 0 24 24" class="arr-2" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M16.1716 10.9999L10.8076 5.63589L12.2218 4.22168L20 11.9999L12.2218 19.778L10.8076 18.3638L16.1716 12.9999H4V10.9999H16.1716Z"
                                ></path>
                            </svg>
                            <span class="text">Comenzar</span>
                            <span class="circle"></span>
                            <svg viewBox="0 0 24 24" class="arr-1" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M16.1716 10.9999L10.8076 5.63589L12.2218 4.22168L20 11.9999L12.2218 19.778L10.8076 18.3638L16.1716 12.9999H4V10.9999H16.1716Z"
                                ></path>
                            </svg>
                        </button>
                    </div>
                    <img src="http://localhost/CamCR7.png" alt="Imagen etapa 2" class="imagen-etapa">
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
                // Aquí añadimos la redirección a la página de inicio de la lección
                window.location.href = 'Course1.jsp';
                // Luego, el código para animar la barra de progreso
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

            // Agregamos un listener al botón
            document.getElementById('btnComenzar1').addEventListener('click', function () {
                comenzarEtapa(1);
            });
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


