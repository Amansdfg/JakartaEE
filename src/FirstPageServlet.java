//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import javax.lang.model.type.PrimitiveType;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.lang.reflect.Array;
//import java.util.ArrayList;
//@WebServlet(value="/home")
//public class FirstPageServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");
//        PrintWriter output=resp.getWriter();
////        for(int i=0;i<5;i++) {
////            output.print("<h1 style='margin-left:50px'>Hello JavaEE</h1>");
////        }
////        ArrayList<String> names=new ArrayList<>();
////        names.add("Aman");
////        names.add("Kalabay");
////        names.add("Ernar");
////        names.add("Sholpan");
////        output.print("<table style:'font-size:100px; color:black;'>");
////            output.print("<tr>");
////                output.print("<td>");
////                output.print("NAMES");
////                output.print("</td>");
////
////                output.print("<td>");
////                output.print("ID:");
////                output.print("</td>");
////            output.print("</tr>");
////            for(int i=0;i<names.size();i++) {
////                output.print("<tr>");
////                output.print("<td>");
////                output.print(names.get(i));
////                output.print("</td>");
////
////                output.print("<td>");
////                output.print(i);
////                output.print("</td>");
////                output.print("</tr>");
////            }
////        output.print("</table>");
//        output.print("<html");
//            output.print("<head>");
//                output.print("<title>Aman's firstPage in java</title>");
//                output.print("<link rel='stylesheet' href='FirstPageCSS.css'>");
//            output.print("</head>");
//            output.print("<body>");
//                output.print("<div class='conteiner'>");
//                    output.print("<div>");
//                        output.print("<img src='GGG.png'>");
//                    output.print("</div>");
//                    output.print("<div>");
//                        output.print("<img src='Max.png'>");
//                    output.print("</div>");
//                    output.print("<div>");
//                        output.print("<img src='Morata.png'>");
//                    output.print("</div>");
//                    output.print("<div>");
//                    output.print("<img src='Harard.png'>");
//                    output.print("</div>");
//                output.print("</div>");
//            output.print("</body>");
//        output.print("</html");
//    }
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//    }
//}