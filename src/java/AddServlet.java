import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int a = Integer.parseInt(req.getParameter("a"));
        int b = Integer.parseInt(req.getParameter("b"));
        int c = a + b;
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        pw.println("<h2>" + a + " + " + b + " = " + c + "</h2>");
        pw.close();
    }
}
