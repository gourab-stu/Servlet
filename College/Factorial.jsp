<html>
  <body>
    <%!
      String str;
      int value, i, f;
    %>
    <%
      str = request.getParameter("val");
      value = Integer.parseInt(str);
      f = 1;
      for (i = 1; i <= value; i++) {
        f = f * i;
      }
      out.println("Value = " + value + "<br>");
      out.println("Factorial = " + f + "<br>");
    %>
    <h3>
      Value = <%= value %>
      <br />
      Factorial = <%= f %>
    </h3>
  </body>
</html>
  