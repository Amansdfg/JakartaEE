//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import javax.swing.text.html.HTMLDocument;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//
//@WebServlet( value = "/secondTask")
//public class SecondTask extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");
//        PrintWriter out=resp.getWriter();
//        ArrayList<User> users=new ArrayList<>();
//        users.add(new User("Aman","Kalabay","IT",1000000));
//        users.add(new User("Aybek","Bagit","Managenet",900000));
//        users.add(new User("Alibek","Serikov","HR",100));
//        users.add(new User("Ilyas","Zhuanyshev","IT",1000000));
//        users.add(new User("Ernar","Kalabay","IT",100000000));
//        out.print("<table>");
//            out.print("<tr style='background-color:lightgray; font-weight: bold;'>");
//                out.print("<td>Name</td>");
//                out.print("<td>Surname</td>");
//                out.print("<td>Department</td>");
//                out.print("<td>Salary</td>");
//            out.print("<tr>");
//            for (int i=0;i<users.size();i++){
//                out.print("<tr>");
//                    out.print("<td>");
//                        out.print(users.get(i).getName());
//                    out.print("</td>");
//                    out.print("<td>");
//                        out.print(users.get(i).getSurname());
//                    out.print("</td>");
//                    out.print("<td>");
//                        out.print(users.get(i).getDepartment());
//                    out.print("</td>");
//                    out.print("<td>");
//                        out.print(users.get(i).getSalary());
//                    out.print("</td>");
//                out.print("<tr>");
//            }
//        out.print("</table>");
//    }
//}
//class User{
//    private String name;
//    private String surname;
//    private String department;
//    private int salary;
//    public User(String name, String surname,String department,int salary){
//        this.name=name;
//        this.surname=surname;
//        this.department=department;
//        this.salary=salary;
//    }
//    public String getName(){
//        return name;
//    }
//    public String getSurname(){
//        return surname;
//    }
//    public String getDepartment(){
//        return department;
//    }
//    public int getSalary(){
//        return salary;
//    }
//}
