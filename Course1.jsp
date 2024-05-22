<%-- 
    Document   : Leccion1
    Created on : 29 abr 2024, 10:24:50
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
                border-left: 1px solid blue; /* Añade un borde izquierdo para distinguir las secciones */
                border-right: 1px solid blue; /* Añade un borde derecho para distinguir las secciones */
                border-top: none; /* Elimina el borde superior */
                border-bottom: none; /* Elimina el borde inferior */
                display: flex;
                flex-direction: column; /* Coloca los elementos en columna */
                align-items: flex-start; /* Alinea los elementos a la izquierda */
                padding: 10px; /* Añade espacio interno para los botones */
            }


            /* Ajustamos el tamaño de las secciones */
            .section:nth-child(1) {
                flex: 0 0 13%; /* 15% de la pantalla */
            }


            .section:nth-child(2) {
                flex: 0 0 60%; /* 60% de la pantalla */
            }


            .section:nth-child(3) {
                flex: 0 0 24%; /* 25% de la pantalla */
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


            /* Estilos para el título "Cold English" en la primera sección */
            .section:nth-child(1) h2 {
                font-size: 2em; /* Tamaño de la fuente */
                color: #000; /* Color del texto (negro en este caso) */
                margin-bottom: 30px; /* Aumenta el espacio inferior para separar el título de los botones */
                margin-top: 0; /* Elimina el margen superior para que el título esté más arriba */
                text-align: center; /* Centra el texto horizontalmente */
            }

            /* Estilos para los botones */
            .section:nth-child(1) button {
                margin-bottom: 10px; /* Añade espacio entre los botones */
                padding: 10px; /* Ajusta el relleno del botón */
                font-size: 1em; /* Tamaño de la fuente */
                width: 170px; /* Ancho fijo para los botones */
                height: 40px; /* Altura fija para los botones */
                text-align: center; /* Centra el texto horizontalmente */
                background-color: #cce6ff; /* Fondo azul claro */
                border: 1px solid #fff; /* Borde blanco */
                cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
                display: flex; /* Añade display flex para alinear el icono */
                align-items: center; /* Centra verticalmente el contenido del botón */
                border-radius: 10px; /* Bordes redondeados */
                transition: background-color 0.3s, border-color 0.3s; /* Transición suave para el cambio de color */
            }

            /* Estilos para los iconos */
            .section:nth-child(1) button img {
                margin-right: 10px; /* Espacio entre el icono y el texto */
                max-width: 20px; /* Establece un ancho máximo para el icono */
            }

            /* Estilo al pasar el mouse sobre el botón */
            .section:nth-child(1) button:hover {
                background-color: #fff; /* Fondo blanco al pasar el mouse */
                border-color: #cce6ff; /* Borde azul claro al pasar el mouse */
                color: #007bff; /* Color del texto al pasar el mouse (azul claro) */
                transform: scale(1.1); /* Aumenta el tamaño al pasar el mouse */
                box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Añade una sombra suave */
            }

            .correct-answer img,
            .incorrect-answer img {
                width: 20px; /* Define el ancho deseado */
                height: auto; /* Mantén la proporción */
                margin-right: 5px; /* Añade un pequeño espacio a la derecha */
            }
        </style>

    </head>
    <body>
        <div class="container">
            <div class="section">
                <!-- Título "Cold English" -->
                <h2>COLD ENGLISH</h2>

                <!-- Formulario para redirección -->
                <form id="form_redireccion" method="post" action="">

                    <!-- Botones -->
                    <button formaction="CourseInfoServlet">
                        <img src="http://localhost/leccion-en-linea.png" alt="Icono Lecciones"> Courses
                    </button>
                    <button formaction="MostrarPerfilUserServlet">
                        <img src="http://localhost/pESSI-removebg-preview.png" alt="Icono Perfil"> Profile
                    </button>
                    <button formaction="mas.jsp">
                        <img src="http://localhost/herramientas.png" alt="Icono Más"> More
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

            <div class="section" style="height: calc(100vh - 40px); overflow-y: auto; margin-bottom: 20px;">
                <!-- Contenido de la segunda sección -->
                <h2>Nouns and Verbs</h2>

                <!-- Leccion 1 -->
                <p><strong>Lesson 1: Introduction to Nouns and Verbs</strong></p>
                <ol>
                    <li><strong>1. What are nouns?</strong><br>
                        Nouns are words that name people, places, things, or ideas. For example: boy, school, dog, love.
                    </li>
                    <li><strong>2. What are verbs?</strong><br>
                        Verbs are words that show action or state of being. For example: run, jump, eat, be.
                    </li>
                </ol>

                <!-- Leccion 1 -->
                <p><strong>Lesson 1: Introduction to Nouns and Verbs</strong></p>
                <ol>
                    <li><strong>1. What are nouns?</strong><br>
                        Nouns are words that name people, places, things, or ideas. For example: boy, school, dog, love.
                    </li>
                    <li><strong>2. What are verbs?</strong><br>
                        Verbs are words that show action or state of being. For example: run, jump, eat, be.
                    </li>
                </ol>
                <form id="answersForm" action="CheckAnswersL1C1Servlet" method="post">
                    <input type="hidden" name="exerciseId" value="1"> <!-- Agregamos este campo oculto para enviar el ID del ejercicio -->
                    <p><strong>Exercise 1: Identify Nouns</strong><br>
                        Which of these words is a noun?<br>
                        <input type="radio" name="exercise1" value="a"> a) Play<br>
                        <input type="radio" name="exercise1" value="b"> b) Table<br>
                        <input type="radio" name="exercise1" value="c"> c) Fast
                    </p>
                    <input type="hidden" name="exerciseId" value="2"> <!-- Agregamos este campo oculto para enviar el ID del segundo ejercicio -->
                    <p><strong>Exercise 2: Identify Verbs</strong><br>
                        Which of these words is a verb?<br>
                        <input type="radio" name="exercise2" value="a"> a) Tree<br>
                        <input type="radio" name="exercise2" value="b"> b) Dance<br>
                        <input type="radio" name="exercise2" value="c"> c) Happy
                    </p>
                    <button type="submit">Check Answers</button>
                </form>

                <audio id="sadTromboneAudio" src="http://localhost/sad_trombone.mp3"></audio>
                <audio id="correctAudio" src="http://localhost/VgSf.ogg"></audio>

                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const form = document.getElementById('answersForm');

                        form.addEventListener('submit', function (event) {
                            event.preventDefault(); // Evitar que el formulario se envíe

                            const answers = {
                                exercise1: 'b', // Respuesta correcta para el ejercicio 1
                                exercise2: 'b'  // Respuesta correcta para el ejercicio 2
                            };

                            let allCorrect = true; // Variable para verificar si todas las respuestas son correctas

                            const checkedInputs = form.querySelectorAll('input[type="radio"]:checked');
                            checkedInputs.forEach(input => {
                                const answer = answers[input.name];
                                const label = document.createElement('label');

                                if (input.value !== answer) {
                                    allCorrect = false; // Marcar como falso si alguna respuesta es incorrecta
                                }

                                if (input.value === answer) {
                                    const img = document.createElement('img');
                                    img.src = 'https://img.freepik.com/vector-premium/icono-vector-signo-correcto-verde_547110-418.jpg';
                                    img.alt = 'Correct'; // Texto alternativo para accesibilidad
                                    label.appendChild(img);
                                    label.className = 'correct-answer';
                                } else {
                                    const img = document.createElement('img');
                                    img.src = 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Antu_dialog-error.svg/2048px-Antu_dialog-error.svg.png';
                                    img.alt = 'Incorrect'; // Texto alternativo para accesibilidad
                                    label.appendChild(img);
                                    label.className = 'incorrect-answer';
                                }

                                input.parentNode.appendChild(label);
                            });

                            // Reproducir audio si todas las respuestas son correctas
                            if (allCorrect) {
                                const audio = document.getElementById('correctAudio');
                                audio.play();
                            } else {
                                const audio = document.getElementById('sadTromboneAudio');
                                audio.play();
                            }
                        });
                    });
                </script>



                <!-- Leccion 2 -->

                <h2>Lesson 2: Singular and Plural Nouns</h2>
                <ol>
                    <li><strong>1. Singular and Plural Nouns</strong><br>
                        Nouns can be in singular (one) or plural (more than one) form. For example: cat (singular) - cats (plural), flower (singular) - flowers (plural).
                    </li>
                </ol>
                <form id="answersForm" action="CheckAnswersL2C1Servlet" method="post">
                    <input type="hidden" name="exerciseId" value="2"> <!-- Agregamos este campo oculto para enviar el ID del ejercicio -->
                    <p><strong>Exercise 3: Singular or Plural</strong><br>
                        Complete the sentence with the correct form of the noun:<br>
                        The boy has many <input type="text" name="exercise3"> (friend).

                    </p>
                    <p><strong>Exercise 4: Change to Plural</strong><br>
                        Write the plural form of the following noun:<br>
                        <input type="text" name="exercise4">

                    </p>
                    <button id="btnCheckAnswers2" class="check-answers-btn">Check Answers</button>
                </form>


                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const form = document.getElementById('answersForm');

                        const checkAnswers = function () {
                            const formData = new FormData(form);

                            fetch('CheckAnswersServlet', {
                                method: 'POST',
                                body: formData
                            })
                                    .then(response => response.json())
                                    .then(data => {
                                        if (input.value === answer) {
                                            const img = document.createElement('img');
                                            img.src = 'https://img.freepik.com/vector-premium/icono-vector-signo-correcto-verde_547110-418.jpg';
                                            img.alt = 'Correct'; // Texto alternativo para accesibilidad
                                            label.appendChild(img);
                                            label.className = 'correct-answer';
                                        } else {
                                            const img = document.createElement('img');
                                            img.src = 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Antu_dialog-error.svg/2048px-Antu_dialog-error.svg.png';
                                            img.alt = 'Incorrect'; // Texto alternativo para accesibilidad
                                            label.appendChild(img);
                                            label.className = 'incorrect-answer';
                                        }

                                        input.parentNode.appendChild(label);
                                    });

                            // Reproducir audio si todas las respuestas son correctas
                            if (allCorrect) {
                                const audio = document.getElementById('correctAudio');
                                audio.play();
                            } else {
                                const audio = document.getElementById('sadTromboneAudio');
                                audio.play();
                            }
                        }
                        );
                    });
                </script>

                <!-- Leccion 3 -->
                <p><strong>Lesson 3: Action and State Verbs</strong></p>
                <ol>
                    <li><strong>1. Action Verbs</strong><br>
                        Action verbs show an action someone does. For example: jump, swim, read.
                    </li>
                    <li><strong>2. State Verbs</strong><br>
                        State verbs show a situation or state. For example: be, have, like.
                    </li>
                </ol>
                <form id="answersForm3" action="CheckAnswersL3C1Servlet" method="post">
                    <input type="hidden" name="exerciseId" value="3">
                    <p><strong>Exercise 5: Identify Verbs</strong><br>
                        Identify if the following verbs are action (A) or state (S) verbs:<br>
                        a) Sleep <input type="radio" name="exercise5_a" value="A"> Action <input type="radio" name="exercise5_a" value="S"> State<br>
                        b) Run <input type="radio" name="exercise5_b" value="A"> Action <input type="radio" name="exercise5_b" value="S"> State<br>
                        c) Be <input type="radio" name="exercise5_c" value="A"> Action <input type="radio" name="exercise5_c" value="S"> State
                    </p>
                    <button id="btnCheckAnswers3" class="check-answers-btn">Check Answers</button>
                </form>
            </div>


            <div class="section">
                <!-- Contenido de la tercera sección -->
                <h2>Messages 3</h2>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg" alt="Flag of USA">
                    <p>English</p>
                    <div class="friends">
                        <h3>Friends</h3>
                        <!-- funcionalidad para agregar amigos -->
                        <input type="text" placeholder="Nombre de amigo">
                        <button>Add Friend</button>
                        <!-- Área para chatear -->
                        <div class="chat">
                            <!-- Aquí se mostrarían los mensajes de chat -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
