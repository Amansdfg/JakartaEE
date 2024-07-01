package Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/edit-student")
public class EditStudent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("id"));
        Student student=DatabaseStudent.getStudentById(id);
        req.setAttribute("student",student);
        req.getRequestDispatcher("/edit-student.jsp").forward(req,resp);
    }
}
