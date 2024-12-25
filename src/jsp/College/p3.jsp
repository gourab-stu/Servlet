<html>
  <body>
    <%! int a = 10, b = 20; %>
    <% 
      int sum = a + b;
      out.println("Sum = " + sum);
    %>
    <br />
    <b><%= a %> + <%= b %> = <%= (a + b) %></b>
  </body>
</html>