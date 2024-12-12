<%! int a, b, c; %>
<%
  a = Integer.parseInt(request.getParameter("a"));
  b = Integer.parseInt(request.getParameter("b"));
  c = a + b;
%>
<table border="2">
  <tr>  <td><%= a %></td>  <td><%= "+" %></td>  <td><%= b %></td>  <td><%= "=" %></td>  <td><%= c %></td>  </tr>
</table>