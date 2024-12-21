<%@ page import="java.sql.*" %>
<%! String url, user, password, query; %>
<html>
  <head>
    <title>MySQL data insertion</title>
  </head>
  <body>
    <h1>Inserting data to MySQL database...</h1>
    <%
      url = "jdbc:mysql://HOSTNAME:PORT/DBNAME";
      user = "USERNAME";
      password = "PASSWORD";
      query = "INSERT INTO player VALUES (1, 'virat', '10000');";
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);
        Statement stmt = conn.createStatement();
        stmt.execute(query);
        out.println("<p>Data inserted</p>");
        conn.close();
    } catch (Exception e) {
        out.println(e);
    }
    %>
  </body>
</html>