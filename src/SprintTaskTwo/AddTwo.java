package SprintTaskTwo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/add-two")
public class AddTwo extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        double price=Double.parseDouble(req.getParameter("price"));
        String ram=req.getParameter("ram");
        String memory=req.getParameter("memory");
        String version=req.getParameter("version");
        DatabaseSprintTask.addItem(new Items(null,name,price,ram,memory,version));
        resp.sendRedirect("/add-two");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/add-two.jsp").forward(req,resp);
    }
}
