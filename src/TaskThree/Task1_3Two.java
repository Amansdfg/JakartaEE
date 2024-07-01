package TaskThree;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet (value = "/three2")
public class Task1_3Two extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Database database=new Database();
        Person person=database.check(req.getParameter("name"),req.getParameter("surname"));
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.print("<html>");
            out.print("<head>");
        out.print("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN' crossorigin='anonymous'>");
            out.print("<head>");
            out.print("<body>");
                out.print("<div  class='shadow-lg p-3 mb-5 bg-body-tertiary rounded m-auto mt-5' style='width:300px;'>");
                    out.print("<p class='fs-6'>Hello "+person.getName()+" "+person.getSurname()+" Your age is: "+person.getAge()+",and department: "+person.getDepartment()+" ,Salary: "+person.getSalary() + "</p>");
                out.print("</div>");
            out.print("</body>");
        out.print("</html>");

    }
}