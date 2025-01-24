<%! int a, b, sum; %>
<%
    a = Integer.parseInt(request.getParameter("a"));
    b = Integer.parseInt(request.getParameter("b"));
    sum = a + b;
%>
<h3><%= a %> + <%= b %> = <%= sum %></h3>