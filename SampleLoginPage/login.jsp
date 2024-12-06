<%@page language="java" contentType="text/html" %>
<html>
  <body>
    <% String username = request.getParameter("username"); %>
    <% String password = request.getParameter("password"); %>
    <% if (username.equals("gourab") && password.equals("1234")) {
      out.println("Login Successful");
    } else {
      out.println("Credentials mismatch");
    } %>
  </body>
</html>