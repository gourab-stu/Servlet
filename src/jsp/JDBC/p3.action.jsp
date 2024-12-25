<%@ page import="java.sql.*" %>
<%! String url, user, password, pid, runs, pname, query; %>
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
      query = "INSERT INTO player VALUES (" + pid + ", '" + pname + "', " + runs + ");";
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);
        Statement stmt = conn.createStatement();
        stmt.execute(query);
        out.println("<p>Data inserted into table</p>");
        conn.close();
      } catch (Exception e) {
          out.println(e);
      }
    %>
  </body>
</html>