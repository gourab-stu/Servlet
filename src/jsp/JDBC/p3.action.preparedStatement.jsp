<%@ page import="java.sql.*" %>
<%! String url, user, password, pid, runs, pname, query; int rows; %>
<html>
  <head>
    <title>MySQL data insertion via user input</title>
  </head>
  <body>
    <h1>Inserting data to MySQL database...</h1>
    <%
      url = "jdbc:mysql://HOSTNAME:PORT/DBNAME";
      user = "USERNAME";
      password = "PASSWORD";
      pid = request.getParameter("pid");
      runs = request.getParameter("runs");
      pname = request.getParameter("pname");
      query = "INSERT INTO player VALUES(?,?,?);";
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setInt(1, Integer.parseInt(pid));
        stmt.setString(2, pname);
        stmt.setInt(3, Integer.parseInt(runs));
        rows = stmt.executeUpdate();
        out.println("<p>" + rows + " row inserted into table</p>");
        conn.close();
      } catch (Exception e) {
          out.println(e);
      }
    %>
  </body>
</html>