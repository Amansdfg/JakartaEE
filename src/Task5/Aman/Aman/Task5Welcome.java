package Task5.Aman.Aman;

import TaskThree.Database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/hello")
public class Task5Welcome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("hello.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        int age=Integer.parseInt(req.getParameter("age"));
        String gender=req.getParameter("gender");
        Dear dear=new Dear(name,age,gender);
        DataBaseTask5.setDear(dear);
        resp.sendRedirect("/hello");
    }
}
