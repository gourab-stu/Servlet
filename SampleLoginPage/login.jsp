<%@page language="java" contentType="text/html" %>
<html>
  <body>
    <% 
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      if (username.equals("gourab") && password.equals("1234"))
        out.println("<h2>Login Successful</h2>");
      else
        out.println("<h2>Credentials mismatch</h2>");
    %>
  </body>
</html>