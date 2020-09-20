package letscode.servlets;

import letscode.other.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/temp-serv")
public class JspServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<User> users = new ArrayList<User>() {{
            add(new User("Igor", "Vietnam", 24));
            add(new User("Vanya", "Russia", 26));
            add(new User("Joe", "USA", 29));
        }};

        req.setAttribute("users",users);
        getServletContext()
                .getRequestDispatcher("/first.jsp")
                .forward(req,resp);
    }
}
