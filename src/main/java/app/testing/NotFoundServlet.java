package app.testing;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/notfound")
public class NotFoundServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String id = request.getParameter("id");

        try {
            pw.println("<h1>Not Found: " + id + "<h2>");
        } finally {
            pw.close();
        }
    }
}
