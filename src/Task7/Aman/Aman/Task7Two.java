package Task7.Aman.Aman;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value="/footballInfo")
public class Task7Two extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Footballer> footballers=DBFootballer.getFootballers();
        req.setAttribute("footballers",footballers);
        req.getRequestDispatcher("/footballerInfo.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String surname=req.getParameter("surname");
        int salary=Integer.parseInt(req.getParameter("salary"));
        String club=req.getParameter("club");
        int transfer=Integer.parseInt(req.getParameter("transfer"));
        DBFootballer.addFootballer(new Footballer(name, surname,salary,club,transfer));
        resp.sendRedirect("/footballInfo");
    }
}
