import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

import env.db.MySQLDatabase;

public class FetchData extends HttpServlet {
    public void doGet(HttpServletRequest reqest, HttpServletResponse response) throws ServletException, IOException {
        MySQLDatabase db = new MySQLDatabase();
        PrintWriter pw = response.getWriter();
        String tname = reqest.getParameter("tname");
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
            pw.println("<table border='2'>");
            pw.println("<thead>");
            pw.println("<tr> <td><b>pid</b></td> <td><b>pname</b></td> <td><b>runs</b></td> </tr>");
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
        } catch (Exception exception) {
            pw.println(exception.getMessage());
        }
        pw.close();
    }
}
