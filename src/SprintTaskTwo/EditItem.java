package SprintTaskTwo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/edit-item")
public class EditItem  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id=Long.parseLong(req.getParameter("id"));
        String name=req.getParameter("name");
        double price=Double.parseDouble(req.getParameter("price"));
        String ram=req.getParameter("ram");
        String memory=req.getParameter("memory");
        String version=req.getParameter("version");
        DatabaseSprintTask.editItem(new Items(id,name,price,ram,memory,version));
        resp.sendRedirect("/home-two-admin");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
