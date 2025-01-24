<%! String email, regex, msg; %>
<%
    email = request.getParameter("email");
    regex = "^[a-z]([a-z]|[0-9]|[_.-])*@[a-z]+\\.([a-z])+$";
    if (email.matches(regex))
        msg = "email is valid";
    else
        msg = "invalid email";
%>
<h3><%= msg %></h3>