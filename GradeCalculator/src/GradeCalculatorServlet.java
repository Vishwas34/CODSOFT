// src/main/java/com/example/GradeCalculatorServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculate")
public class GradeCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int subject1 = Integer.parseInt(request.getParameter("subject1"));
        int subject2 = Integer.parseInt(request.getParameter("subject2"));
        int subject3 = Integer.parseInt(request.getParameter("subject3"));
        int subject4 = Integer.parseInt(request.getParameter("subject4"));
        int subject5 = Integer.parseInt(request.getParameter("subject5"));

        int[] marks = {subject1, subject2, subject3, subject4, subject5};
        int totalMarks = 0;
        for (int mark : marks) {
            totalMarks += mark;
        }

        double percentage = (totalMarks / 500.0) * 100;
        String formattedPercentage = String.format("%.2f", percentage);
        String grade;
        if (percentage >= 90) 
        {
            grade = "A+";
        } else if (percentage >= 80) 
        {
            grade = "A";
        } else if (percentage >= 70) 
        {
            grade = "B";
        } else if (percentage >= 60) 
        {
            grade = "C";
        } else if (percentage >= 50)
        {
            grade = "D";
        } else {
            grade = "F";
        }

        boolean pass = true;
        for (int mark : marks) 
        {
            if (mark < 40) 
            {
                pass = false;
                break;
            }
        }

        request.setAttribute("formattedPercentage", formattedPercentage);
        request.setAttribute("grade", grade);
        request.setAttribute("pass", pass);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
