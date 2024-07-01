package TaskThree;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/three")
public class Task1_3 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.print("<html>");
            out.print("<head>");
                out.print("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN' crossorigin='anonymous'>");
            out.print("</head>");
        out.print("<body>");
            out.print("<div  class='shadow-lg p-3 mb-5 bg-body-tertiary rounded m-auto mt-5' style='width:300px'>");
                out.print("<form action='/three2' method='get'>");
                    out.print("<label class='form-label'>Name:</label>");
                    out.print("<input type type='text' class='form-control' name='name'>");
                    out.print("<label class='form-label'>Surname:</label>");
                    out.print("<input type type='text' class='form-control' name='surname'>");
                    out.print("<button class='btn btn-primary mt-3 ms-auto'>send</button>");
                out.print("</form>");
            out.print("</div>");
        out.print("</html>");
    }
}
