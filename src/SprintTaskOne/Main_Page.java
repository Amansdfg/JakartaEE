package SprintTaskOne;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value="/main-page")
public class Main_Page extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String description=req.getParameter("description");
        String deadline=req.getParameter("deadline");
        DBManagerTask.addTask(new Task(name,description,deadline));
        resp.sendRedirect("/main-page");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Task> tasks=DBManagerTask.getTasks();
        req.setAttribute("tasks",tasks);
        req.getRequestDispatcher("/main_page.jsp").forward(req,resp);
    }
}
