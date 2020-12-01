package app.testing;

import app.entities.User;
import app.model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class SendParamTest extends HttpServlet {

    protected void doGet
            (HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String path = "sometest/testjsp.jsp";
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }

/*    protected void doGet
    (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        String path = "sometest/testjsp.jsp";
        ServletContext servletContext = getServletContext();
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }*/

}