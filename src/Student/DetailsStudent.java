package Student;

import Shop.DBManagerItems;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/details-student")
public class DetailsStudent  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("id"));
        Student student=DatabaseStudent.getStudentById(id);
        req.setAttribute("student",student);
        req.getRequestDispatcher("/details-student.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        long id= Long.parseLong(req.getParameter("id"));
//        String name=req.getParameter("name");
//        String surname=req.getParameter("surname");
//        String birthday=req.getParameter("birthday");
//        String city=req.getParameter("city");
//
//        Student student=new Student(id,name,surname,birthday,city);
//        req.setAttribute("student",student);
//        resp.sendRedirect("/edit-student");
    }
}
