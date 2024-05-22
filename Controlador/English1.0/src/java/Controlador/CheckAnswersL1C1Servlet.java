/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CheckAnswersL1C1Servlet", urlPatterns = {"/CheckAnswersL1C1Servlet"})
public class CheckAnswersL1C1Servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener el parámetro que indica el ejercicio que se está verificando
        String[] exerciseIds = request.getParameterValues("exerciseId");

        // Realizar la verificación de las respuestas para cada ejercicio
        boolean allCorrect = true;
        StringBuilder feedback = new StringBuilder();
        for (String exerciseId : exerciseIds) {
            switch (exerciseId) {
                case "1":
                    String feedbackExercise1 = checkExercise1(request);
                    feedback.append(feedbackExercise1);
                    if (!feedbackExercise1.contains("correct")) {
                        allCorrect = false;
                    }
                    break;
                case "2":
                    String feedbackExercise2 = checkExercise2(request);
                    feedback.append(feedbackExercise2);
                    if (!feedbackExercise2.contains("correct")) {
                        allCorrect = false;
                    }
                    break;
                default:
                    feedback.append("Exercise not found");
                    allCorrect = false;
                    break;
            }
        }

        // Enviar la retroalimentación como respuesta al cliente
        response.getWriter().write(feedback.toString());

        // Si ambas respuestas fueron correctas, enviar el comando para reproducir el audio
        if (allCorrect) {
            response.getWriter().write("<script>window.onload = function() {var audio = new Audio('http://localhost/VeryGood.ogg'); audio.play();}</script>");
        }
    }

    private String checkExercise1(HttpServletRequest request) {
        // Realiza la verificación de las respuestas para el ejercicio 1
        String answer = request.getParameter("exercise1");
        // Realiza la lógica para verificar si la respuesta es correcta o incorrecta
        return "Exercise 1 feedback: Your answer is " + (answer.equals("b") ? "correct" : "incorrect") + "<br>";
    }

    private String checkExercise2(HttpServletRequest request) {
        // Realiza la verificación de las respuestas para el ejercicio 2
        String answer = request.getParameter("exercise2");
        // Realiza la lógica para verificar si la respuesta es correcta o incorrecta
        return "Exercise 2 feedback: Your answer is " + (answer.equals("b") ? "correct" : "incorrect") + "<br>";
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Check Answers Servlet";
    }
}
