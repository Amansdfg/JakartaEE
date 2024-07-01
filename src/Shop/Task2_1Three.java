package Shop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/detailsItem")
public class Task2_1Three extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id=Long.parseLong(req.getParameter("id"));
        Item item= DBManagerItems.getItemById(id);
        if(item!=null) {
            req.setAttribute("item", item);
        }else{
            req.getRequestDispatcher("/error.jsp").forward(req,resp);
        }
        req.getRequestDispatcher("/item-details.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String name=req.getParameter("name");
//        double price=Double.parseDouble(req.getParameter("price"));
//        int amount=Integer.parseInt(req.getParameter("amount"));
//        Long id=Long.parseLong(req.getParameter("id"));
//        for(Item item: DBManagerItems.getItems()){
//            if(item.getId()==id){
//                item.setName(name);
//                item.setAmount(amount);
//                item.setPrice(price);
//            }
//        }


    }
}
