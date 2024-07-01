import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.lang.model.type.PrimitiveType;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value="/taskOne")
public class FirstTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        for(int i=0;i<10;i++){
            out.print("<h1>HELLO BITLAB</h1>");
        }
    }
}
