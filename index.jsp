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
                background: linear-gradient(to bottom right, blue, pink);
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                
            }
            #header {
                position: absolute;
                top: 0px;
                width: 100%;
                height: 50px;
                background-color: rgba(255, 255, 255, 0.3);
                color: #fff;
                text-align: center;
                padding: 10px 0;
            }


            #UpPage {
                position: absolute;
                bottom: 0px;
                width: 100%;
                height: 50px;
                background-color: rgba(255, 255, 255, 0.3);
                color: #fff;
                text-align: center;
                padding: 10px 0;
            }

            .TextoUp
            {
                font-size: 20px;
                filter: drop-shadow(0 0px 4px rgba(0, 0, 0, 1));
                box-shadow:  /* Sombra */

            }




            .BotonHeader
            {
                color: white;
                background-color: rgba(100, 0, 250, 1);
                position: absolute;
                right: 50px;
                border-radius: 10px; /* Bordes redondeados */
                padding: 12px 20px; /* Padding vertical y horizontal */
                border: 2px solid transparent; /* Borde transparente */
                cursor: pointer;
                width: 150px; /* Ancho de los botones */
                font-size: 18px; /* Tamaño del texto */
                font-weight: bold; /* Grosor del texto */
                text-decoration: none; /* Elimina subrayado */
                transition: all 0.3s ease; /* Transición suave */
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5); /* Sombra */

                
            }

            .BotonHeader:hover
            {
                background-color: white;
                color: rgba(100, 0, 250, 1);
            }



            .TituloHeader
            {
                position: absolute;
                top: 0px;
                margin: 15px;
                font-size: 40px;
                font-weight: bold;
            }
            .TextoHeader
            {
                position: absolute;
                left: 350px;
                top: 15px;
            }


            #content
            {
                width: 1000px;
                height: 650px;
                border-radius: 20px;
                justify-content: space-between;
                align-items: center;
                display: flex;
                background-color: rgba(255, 255, 255, 0.3);
                margin: 100px 100px 100px 100px;
                
            }
          

            #left-section {
                text-align: center;

                color: white;
                width: 500px;
                height: 500px;
            }

            #right-section {
                
                background-color: rgba(255, 255, 255, 0.3);
                border-radius: 0px 20px 20px 0px;
                width: 500px;
                height: 650px;
                text-align: center;
           
            }


            .Curva
            {
                z-index: 2;
                height: 400px;
                width: 500px;
                position: absolute;
                right: 118px;
                bottom: 116px;
                border-radius: 0px 0px 20px 0px;
                filter: drop-shadow(-5px -5px 10px rgba(0, 0, 0, .5));
                pointer-events: none;
            }


            .Pessi
            {
                position: absolute;
                right: 400px;
                height: 500px;
                bottom: 130px;
                filter: grayscale(80%) drop-shadow(5px 5px 0px) ;
                transition: all 0.3s ease; /* Transición suave */
            }


            .Pessi:hover
            {
                filter: grayscale(0%) drop-shadow(5px 5px 10px);
            }


            .Camellonaldo:hover
            {
                filter: grayscale(0%) drop-shadow(5px 5px 10px);

            }


            .Camellonaldo
            {
                position: absolute;
                right: 120px;
                height: 480px;
                filter: grayscale(80%) drop-shadow(5px 5px 0px);
                transform: scaleX(-1);
                transition: all 0.3s ease; /* Transición suave */

            }








            .TextoLeft
            {
                font-size: 35px;
                padding: 10px;
            }

            .Logo
            {
                padding: 0px;
            }

           
            

            .button
             {

                padding: 20px;
                color: white;
                background-color: rgba(100, 0, 250, 1);
                border-radius: 20px; /* Bordes redondeados */
                border: 2px solid transparent; /* Borde transparente */
                cursor: pointer;
                width: 200px; /* Ancho de los botones */
                margin-right: 20px; /* Espacio entre los botones */
                font-size: 28px; /* Tamaño del texto */
                font-weight: bold; /* Grosor del texto */
                text-decoration: none; /* Elimina subrayado */
                transition: all 0.3s ease; /* Transición suave */
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5); /* Sombra */
                display: inline-block;

              
            }

            .button:hover {
                background-color: white;
                color: rgba(100, 0, 250, 1);
            }

            
            }
        </style>
    </head>
    <body>
        <div id="header">
            <p class ="TituloHeader">COLD ENGLISH</p> <p class ="TextoHeader">Proyecto Final - Pagina de Aprendimiento de Ingles - Programacion Web</p> <a href="Login.jsp" class="BotonHeader">Iniciar sesion</a>
        </div>
               
        <div id="content">
            <div id="left-section">

                <img class="Logo"src="Logo.png" alt="Imagen de Login">
            
                    <p class = "TextoLeft">Aprende ingles con Pessi y Camellonaldo, Que no se te congele el cerebro con nuestros cursos </p>
                    <!-- Botones -->
                    <a href="Login.jsp" class="button">Iniciar sesion</a>
                    
                
            </div>


            <!-- Mitad derecha - Texto y botones -->
            <div id="right-section">

                <img class="Pessi"src="Pessi.png" alt="Imagen de Login">

                <img class="Camellonaldo"src="Camellonaldo.png" alt="Imagen de Login">

                <img class="Curva"src="Curva.png" alt="Imagen de Login">
                    
            </div>
        </div>

        <div id="UpPage">
            <p class ="TextoUp">Miguel Rea - Alan Presas - Alexander Avalos - Alexis Omman - Alexis Uzyel - Allen Contreras</p>
        </div>

    </body>
</html>