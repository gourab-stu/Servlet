<%! int num; %>
<% num = Integer.parseInt(request.getParameter("num")); %>
<table>
    <% for (int i = 1; i <= 10; i++) { %>
        <tr>
            <td><%= num %></td>
            <td>x</td>
            <td><%= i %></td>
            <td>=</td>
            <td><%= num*i %></td>
        </tr>
    <% } %>
</table>