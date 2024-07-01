package SprintTaskTwo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/edit-user")
public class EditUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("id"));
        User user=DatabaseSprintTask.getUserById(id);
        req.setAttribute("user",user);
        req.getRequestDispatcher("/edit-user.jsp").forward(req,resp);

    }
}
