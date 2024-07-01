package SprintTaskTwo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value="/add-comment")
public class AddComment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long userId=Long.parseLong(req.getParameter("user"));
        Long itemId=Long.parseLong(req.getParameter("item"));
        String comment=req.getParameter("comment");
        Comment comment1=new Comment();
        Items items=new Items();
        items.setId(itemId);
        comment1.setItem(items);
        User user=new User();
        user.setId(userId);
        comment1.setUser(user);
        comment1.setMessage(comment);
        DatabaseSprintTask.addComment(comment1);
        resp.sendRedirect("/details-item?id="+itemId);
    }
}
