//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//@WebServlet(value="/classDoPost")
//public class ClassWorkDoPost extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");
//        PrintWriter out=resp.getWriter();
//        out.print("<html>");
//            out.print("<head>");
//                out.print("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN' crossorigin='anonymous'>");
//            out.print("</head>");
//            out.print("<body>");
//                out.print("<div class='container'>");
//                    out.print("<form action='/classDoPost' method='post'>");
//                        out.print("<label class='form-label'>Input the name:</label>");
//                        out.print("<input type type='text' class='form-control' name='item-name'>");
//                        out.print("<label class='form-label'>Input the price:</label>");
//                        out.print("<input type type='text' class='form-control' name='item-price'>");
//                        out.print("<label class='form-label'>Input the amount :</label>");
//                        out.print("<input type type='text' class='form-control' name='item-amount'>");
//                        out.print("<button class='btn btn-primary'>submit</button>");
//                    out.print("</form>");
//                out.print("</div>");
//                out.print("<div style='margin-left:600px'>");
//                    Item item=DBManager.item;
//                    out.print("<h3>");
//                        out.print(item.getName());
//                    out.print("<h3>");
//                    out.print("<h3>");
//                    out.print(item.getPrice());
//                    out.print("<h3>");
//                    out.print("<h3>");
//                    out.print(item.getAmount());
//                    out.print("<h3>");
//                out.print("</div>");
//                out.print("<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js' integrity='sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL' crossorigin='anonymous'></script>");
//            out.print("</body>");
//        out.print("</html>");
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//       String name=  req.getParameter("item-name");
//       int price=Integer.parseInt(req.getParameter("item-price"));
//       int amount=Integer.parseInt(req.getParameter("item-amount"));
//       Item item=new Item(name,price,amount);
//       DBManager.item = item;
//       resp.sendRedirect("/classDoPost");
//    }
//}
