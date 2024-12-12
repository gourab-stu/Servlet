<%! String a, b; %>
<%
  a = request.getParameter("a");
  b = request.getParameter("b");
%>
<table border="2">
  <tr>  <td><%= a %></td>  <td><%= b %></td>  </tr>
</table>