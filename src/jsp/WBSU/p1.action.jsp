<%! int a, i; %>
<%
  a = Integer.parseInt(request.getParameter("a"));
%>
<table border="2">
  <% 
      for (i = 1; i <= 10; i++) {
        out.println("<tr> <td>" + a + "</td> <td> X </td> <td>" + i + "</td> <td>=</td> <td>" + (a * i) + "</td> </tr>");
      }
  %>
</table>
<br />
<table border="2">
  <% for (i = 1; i <= 10; i++) { %>
    <tr>
      <td><%= a %></td>
      <td><%= " X " %></td>
      <td><%= i %></td>
      <td><%= "=" %></td>
      <td><%= (a * i) %></td>
    </tr>
  <% } %>
</table>