package Task6.Aman.Aman;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.http.HttpClient;
import java.util.ArrayList;

@WebServlet(value = "/examAdmin")
public class Task6Exam extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Gay> gays=DBExams.getGays();
        req.setAttribute("gays",gays);
        req.getRequestDispatcher("/examAdmin.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        int score=Integer.parseInt(req.getParameter("score"));
        DBExams.addGay(new Gay(name,score));
        resp.sendRedirect("/examAdmin");
    }
}
