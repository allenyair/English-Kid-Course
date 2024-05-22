<%-- 
    Document   : superadmin
    Created on : 30 abr 2024, 11:33:53
    Author     : MIGUEL
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu Admin</title>
        <style>
            html {
                height: 100%;
                display: flex;
            }
            body {
                position: relative;
                margin: auto;
                background: #181620;
                perspective: 500px;
            }

            main {
                display: flex;
                flex-direction: column;
                transform: rotatex(10deg);
                animation: rotateAngle 6s linear infinite;
            }

            button {
                display: block;
                position: relative;
                margin: 0.5em 0;
                padding: .8em 2.2em;
                cursor: pointer;

                background: #FFFFFF;
                border: none;
                border-radius: .4em;

                text-transform: uppercase;
                font-size: 1.4em;
                font-family: "Work Sans", sans-serif;
                font-weight: 500;
                letter-spacing: 0.04em;

                mix-blend-mode: color-dodge;
                perspective: 500px;
                transform-style: preserve-3d;

                &:before, &:after {
                    --z: 0px;
                    position: absolute;
                    top: 0;
                    left: 0;
                    display: block;
                    content: '';
                    width: 100%;
                    height: 100%;
                    opacity: 0;
                    mix-blend-mode: inherit;
                    border-radius: inherit;
                    transform-style: preserve-3d;
                    transform: translate3d(
                        calc(var(--z) * 0px),
                        calc(var(--z) * 0px),
                        calc(var(--z) * 0px)
                        );
                }

                span {
                    mix-blend-mode: none;
                    display: block;
                }

                &:after {
                    background-color: #5D00FF;
                }

                &:before {
                    background-color: #FF1731;
                }

                &:hover {
                    background-color: #FFF65B;
                    transition: background .3s 0.1s;
                }

                &:hover:before {
                    --z: 0.04;
                    animation: translateWobble 2.2s ease forwards;
                }

                &:hover:after {
                    --z: -0.06;
                    animation: translateWobble 2.2s ease forwards;
                }
            }

            @keyframes rotateAngle {
                0% {
                    transform: rotateY(0deg) rotateX(10deg);
                    animation-timing-function: cubic-bezier(0.61, 1, 0.88, 1);
                }
                25% {
                    transform: rotateY(20deg) rotateX(10deg);
                }
                50% {
                    transform: rotateY(0deg) rotateX(10deg);
                    animation-timing-function: cubic-bezier(0.61, 1, 0.88, 1);
                }
                75% {
                    transform: rotateY(-20deg) rotateX(10deg);
                }
                100% {
                    transform: rotateY(0deg) rotateX(10deg);
                }
            }

            @keyframes translateWobble {
                0% {
                    opacity: 0;
                    transform: translate3d(
                        calc(var(--z) * 0px),
                        calc(var(--z) * 0px),
                        calc(var(--z) * 0px)
                        );
                }
                16% {
                    transform: translate3d(
                        calc(var(--z) * 160px),
                        calc(var(--z) * 160px),
                        calc(var(--z) * 160px)
                        );
                }
                28% {
                    opacity: 1;
                    transform: translate3d(
                        calc(var(--z) * 70px),
                        calc(var(--z) * 70px),
                        calc(var(--z) * 70px)
                        );
                }
                44% {
                    transform: translate3d(
                        calc(var(--z) * 130px),
                        calc(var(--z) * 130px),
                        calc(var(--z) * 130px)
                        );
                }
                59% {
                    transform: translate3d(
                        calc(var(--z) * 85px),
                        calc(var(--z) * 85px),
                        calc(var(--z) * 85px)
                        );
                }
                73% {
                    transform: translate3d(
                        calc(var(--z) * 110px),
                        calc(var(--z) * 110px),
                        calc(var(--z) * 110px)
                        );
                }
                88% {
                    opacity: 1;
                    transform: translate3d(
                        calc(var(--z) * 90px),
                        calc(var(--z) * 90px),
                        calc(var(--z) * 90px)
                        );
                }
                100% {
                    opacity: 1;
                    transform: translate3d(
                        calc(var(--z) * 100px),
                        calc(var(--z) * 100px),
                        calc(var(--z) * 100px)
                        );
                }
            }
        </style>
    </head>
    <body>
        <!-- Barra superior -->
        <div style="background-color: #181620; color: white; padding: 10px; text-align: center;">
            <h1>COLD ENGLISH</h1>
        </div>

        <main>
            <!-- Botones de menú con eventos onClick -->
            <button onclick="redirect('AdminUsersServlet')"><span>Administrar Usuarios</span></button>
            <button onclick="redirect('crear_admin.jsp')">Crear Admin</button>
            <button onclick="redirect('Login.jsp')">Regresar</button>
        </main>

        <!-- Script para redireccionar -->
        <script>
            function redirect(url) {
                window.location.href = url;
            }
        </script>

    </body>
</html>