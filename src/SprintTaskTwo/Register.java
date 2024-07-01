package SprintTaskTwo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/register")
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("inputEmail");
        String password=req.getParameter("inputPassword");
        String fullName=req.getParameter("inputFullName");
        User user=DatabaseSprintTask.getUser(name);
        if(user==null) {
            DatabaseSprintTask.addUser(new User(name, password, fullName, "user"));
            resp.sendRedirect("/register?success");
        }else{
            resp.sendRedirect("/register?incorrect");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/register.jsp").forward(req,resp);
    }
}
