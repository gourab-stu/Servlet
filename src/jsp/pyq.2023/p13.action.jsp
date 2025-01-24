<%! int a, b, c, largest; %>
<%
    a = Integer.parseInt(request.getParameter("a"));
    b = Integer.parseInt(request.getParameter("b"));
    c = Integer.parseInt(request.getParameter("c"));
    if (a >= b) {
        if (a >= c)
            largest = a;
        else
            largest = c;
    } else {
        if (b >= c)
            largest = b;
        else
            largest = c;
    }
%>
<h3><%= largest %> is largest</h3>