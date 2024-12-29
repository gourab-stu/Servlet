import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

import env.db.MySQLDatabase;

public class FetchData extends HttpServlet {
    public void showTable(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MySQLDatabase db = new MySQLDatabase();
        PrintWriter pw = response.getWriter();
        String tname = request.getParameter("tname");
        String url = "jdbc:mysql://" + db.HOST + ":" + db.PORT + "/" + db.NAME;
        String sql = "SELECT * FROM " + tname;
        String pname;
        int pid, runs;
        response.setContentType("text/html");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, db.USER, db.PASSWORD);
            Statement stmt = conn.createStatement();
            ResultSet resultSet = stmt.executeQuery(sql);
            pw.println("<h3>Table retrieved!</h3>");
            pw.println("<table border='1' width='25%' style=\"text-align:center\">");
            pw.println("<thead>");
            pw.println("<tr> <th><b>pid</b></th> <th><b>pname</b></th> <th><b>runs</b></th> </tr>");
            pw.println("</thead>");
            pw.println("<tbody>");
            while (resultSet.next()) {
                pid = resultSet.getInt("pid");
                pname = resultSet.getString("pname");
                runs = resultSet.getInt("runs");
                pw.println("<tr> <td>" + pid + "</td> <td>" + pname + "</td> <td>" + runs + "</td> </tr>");
            }
            pw.println("</tbody>");
            pw.println("</table>");
            conn.close();
        } catch (Exception exception) {
            pw.println(exception.getMessage());
        }
        pw.close();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        showTable(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        showTable(request, response);
    }
}
