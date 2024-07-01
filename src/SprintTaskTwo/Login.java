package SprintTaskTwo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/login.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect="/login?incorrect";
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        User user=DatabaseSprintTask.getUser(email);
        if(user!=null){
            if(password.equals(user.getPassword())) {
                if(user.getStatus().equals("user")) {
                    req.getSession().setAttribute("userOne", user);
                    redirect="/hello-user";
                }else{
                    req.getSession().setAttribute("userOne", user);
                    redirect="/home-two-admin";
                }
            }
        }
        resp.sendRedirect(redirect);
    }
}
