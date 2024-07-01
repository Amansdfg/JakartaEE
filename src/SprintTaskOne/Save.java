package SprintTaskOne;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/save")
public class Save extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id=Long.parseLong(req.getParameter("id"));
        String name=req.getParameter("name");
        String description=req.getParameter("description");
        String deadline=req.getParameter("deadline");
        boolean isDone=Boolean.parseBoolean(req.getParameter("isDone"));
        DBManagerTask.saveTask(id,name,description,deadline,isDone);
        resp.sendRedirect("/main-page");
    }
}
