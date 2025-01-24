<table border="1">
    <thead>
        <tr>
            <td>number</td>
            <td>square</td>
            <td>cube</td>
        </tr>
    </thead>
    <tbody>
    <% for (int n = 5; n <= 15; n++) { %>
        <tr>
            <td><%= n %></td>
            <td><%= n*n %></td>
            <td><%= n*n*n %></td>
        </tr>
    <% } %>
    </tbody>
</table>