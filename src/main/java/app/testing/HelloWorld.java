package app.testing;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorld extends HttpServlet {

     protected void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
         RequestDispatcher requestDispatcher = request.getRequestDispatcher("sometest/hello.jsp");
         requestDispatcher.forward(request, response);


//Тот код что ниже не будет отрабатывать тк происходит перенаправление в JSP
         PrintWriter pw = response.getWriter();
         pw.println("<html>");
         pw.println(" <h1> Hello from servlet </h1> " );
         pw.println("</html>");
     }
}
