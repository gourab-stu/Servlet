import java.io.*;
import javax.servlet.*;

public class HelloServlet extends GenericServlet {
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        pw.println("<h2>Welcome User</h2>");
        pw.close();
    }
}