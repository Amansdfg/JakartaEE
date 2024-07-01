package Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/save-student")
public class SaveStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id=Long.parseLong(req.getParameter("id"));
        String name=req.getParameter("name");
        String surname=req.getParameter("surname");
        String birthday=req.getParameter("birthday");
        String city=req.getParameter("city");
        DatabaseStudent.save(id,name,surname,birthday,city);
        resp.sendRedirect("/all-student");
    }
}
