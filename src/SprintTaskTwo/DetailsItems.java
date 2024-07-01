package SprintTaskTwo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/details-item")
public class DetailsItems extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("id"));
        Items items  = DatabaseSprintTask.getItemsById(id);
        if(items!=null) {
            req.setAttribute("items", items);
            ArrayList<Comment> comments=DatabaseSprintTask.getAllComments(items.getId());
            req.setAttribute("comments",comments);
            req.getRequestDispatcher("/details-item.jsp").forward(req,resp);

        }else{
            req.getRequestDispatcher("/error.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
