package app.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class CountServlet extends HttpServlet {

    void doGet(HttpServletResponse response, HttpServletRequest request) throws IOException, ServletException {

        PrintWriter writer = response.getWriter();

        HttpSession session = request.getSession();
        Integer count = (Integer) session.getAttribute("count");

        if (count == null) {
            session.setAttribute("count", 1);
            count = 1;
        } else {
            session.setAttribute("count" , count + 1);
        }

        PrintWriter pw = response.getWriter();

        pw.println("<html>");
        pw.println(" <h1> Count: </h1> " + count );
        pw.println("</html>");
    }


}

