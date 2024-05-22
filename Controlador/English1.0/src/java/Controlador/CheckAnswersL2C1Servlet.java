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

@WebServlet("/CheckAnswersServlet")
public class CheckAnswersL2C1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener respuestas enviadas por el formulario
        String exercise3Answer = request.getParameter("exercise3");
        String exercise4Answer = request.getParameter("exercise4");

        // Respuestas correctas para los ejercicios
        String correctAnswerExercise3 = "friends";
        String correctAnswerExercise4 = "friends";

        // Verificar respuestas
        boolean exercise3Correct = exercise3Answer != null && exercise3Answer.trim().equalsIgnoreCase(correctAnswerExercise3);
        boolean exercise4Correct = exercise4Answer != null && exercise4Answer.trim().equalsIgnoreCase(correctAnswerExercise4);

        // Enviar respuesta JSON al cliente
        String jsonResponse = "{\"exercise3Correct\": " + exercise3Correct + ", \"exercise4Correct\": " + exercise4Correct + "}";
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonResponse);
    }
}
