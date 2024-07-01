package Task4.asd.asd;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet(value="/orderAdmin")
public class Task4Order extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Client> clients= DataBase.getClients();
        req.setAttribute("clients",clients);
        req.getRequestDispatcher("/orderAdmin.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Long id=Long.valueOf(req.getParameter("id"));
        String name=req.getParameter("name");
        String surname=req.getParameter("surname");
        String food=req.getParameter("food");
        DataBase.addClient(new Client(id,name,surname,food));
        resp.sendRedirect("/orderAdmin");
    }
}
