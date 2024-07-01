package Shop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/edit")
public class EditItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Long id=Long.parseLong(req.getParameter("id"));
        String name=req.getParameter("name");
        int price=Integer.parseInt(req.getParameter("price"));
        int amount=Integer.parseInt(req.getParameter("amount"));
        DBManagerItems.edit(id,name,price,amount);
        resp.sendRedirect("/all-items");
    }
}
