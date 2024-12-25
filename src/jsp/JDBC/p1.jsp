<%@ page import="java.sql.*" %>
<%! String url, user, password, query; %>
<html>
  <head>
    <title>MySQL Table creation</title>
  </head>
  <body>
    <h1>Creating table in MySQL database...</h1>
    <%
      url = "jdbc:mysql://HOSTNAME:PORT/DBNAME";
      user = "USERNAME";
      password = "PASSWORD";
      query = "CREATE TABLE player (pid INT primary key,pname varchar(20),runs int);";
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);
        Statement stmt = conn.createStatement();
        stmt.executeUpdate(query);
        out.println("<p>Table created</p>");
        conn.close();
      } catch (Exception e) {
        out.println(e);
      }
    %>
  </body>
</html>