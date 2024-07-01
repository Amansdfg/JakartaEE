//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//@WebServlet(value="/aman")
//public class Test extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");
//        PrintWriter output=resp.getWriter();
//        output.print("<html>");
//            output.print("<head>");
//                output.print("<title>Aman's site</title>");
//                output.print("<link rel='stylesheet src='AmanCSS.css'>");
//            output.print("</head>");
//            output.print("<body>");
//                output.print("<div class='main'>");
//                output.print("Создайте мини веб страницу используя HTML + CSS и различные элементы ввода, картинки, шрифты, тексты, чтобы разработать дизайн новостного сайта, как изображено снизу:\n");
//                    output.print("<div class='header>");
//                        output.print("<span>Bitlab news</span>");
//                        output.print("<div> class ='left'");
//                            output.print("<a href='https://www.apple.com'>Home</a>");
//                            output.print("<a href='https://www.apple.com'>Sport</a>");
//                            output.print("<a href='https://www.apple.com'>Science</a>");
//                            output.print("<a href='https://www.apple.com'>Finance</a>");
//                    output.print("</div>");
//                output.print("<div>");
//                    output.print("<div>");
//                        output.print("<img src='GGG.png'>");
//                    output.print("</div>");
//                    output.print("<div>");
//                            output.print("<p>\n" +
//                                    "Khabib to Conor:\"It is the same thing\"</p>");
//                            output.print("<p>\n" +
//                                    "Khabib to Conor:\"It is the same thing\"\n" +
//                                    "\n" +
//                                    "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam odit itaque sit soluta commodi ipsam ad excepturi veritatis nesciunt facere</p>");
//                            output.print("<p>\n" +
//                                    "Khabib to Conor:\"It is the same thing\"\n" +
//                                    "\n" +
//                                    "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam odit itaque sit soluta commodi ipsam ad excepturi veritatis nesciunt facere\n" +
//                                    "\n" +
//                                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. In debitis eum aliquam. Ut, fugiat maiores pariatur quisquam ea accusantium, velit consequuntur adipisci expedita molestiae recusandae enim eos incidunt? Dolore, modi</p>");
//                    output.print("</div>");
//                    output.print("<div>Latest news</div>");
//                    output.print("<div class=''>");
//                output.print("</div>");
//            output.print("</body>");
//        output.print("</html>");
//    }
//}
