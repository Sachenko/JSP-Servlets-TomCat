package app.testing;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/basic")
public class HelloServlet extends HttpServlet {

    protected void doGet (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        request.setAttribute("name", "Stan");
        request.setAttribute("age", "27");

        getServletContext().getRequestDispatcher("/sometest/basic.jsp").forward(request,response);
    }
}
