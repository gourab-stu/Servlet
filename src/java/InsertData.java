import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

import env.db.MySQLDatabase;

public class InsertData extends HttpServlet {
    public void insertData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MySQLDatabase db = new MySQLDatabase();
        PrintWriter pw = response.getWriter();
        int rows;
        String pid = request.getParameter("pid");
        String runs = request.getParameter("runs");
        String pname = request.getParameter("pname");
        String url = "jdbc:mysql://" + db.HOST + ":" + db.PORT + "/" + db.NAME;
        String sql = "INSERT INTO player VALUES(?,?,?);";
        response.setContentType("text/html");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, db.USER, db.PASSWORD);
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, Integer.parseInt(pid));
            stmt.setString(2, pname);
            stmt.setInt(3, Integer.parseInt(runs));
            rows = stmt.executeUpdate();
            pw.printf("<fieldset><legend>Output</legend>%d rows inserted into table</fieldset>", rows);
            pw.println("<input type='button' value='view table player' onclick=\"window.location.href='./fetch?tname=player'\" />");
            conn.close();
        } catch (Exception exception) {
            pw.println(exception.getMessage());
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        insertData(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        insertData(request, response);
    }
}
