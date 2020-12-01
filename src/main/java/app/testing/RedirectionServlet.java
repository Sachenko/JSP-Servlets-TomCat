package app.testing;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/redirection")
public class RedirectionServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       String id = request.getParameter("id");
       if(id == null) {
           String path = request.getContextPath() + "/notfound";
           response.sendRedirect(path);
        } else {
           response.setContentType("text/html");
           response.setContentType("text/html");
           PrintWriter writer = response.getWriter();
           try {
               writer.println("<h2>Hello Id " + id + "</h2>");
           } finally {
               writer.close();
           }
       }


/*        String path = "/notfound";
        ServletContext servletContext = getServletContext();
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);
        requestDispatcher.forward(request,response);*/
    }

}
