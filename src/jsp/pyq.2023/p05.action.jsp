<%! String name, regex, msg; %>
<%
    name = request.getParameter("name");
    regex = "^((([A-Z])([a-z])+ ([A-Z])([a-z])+)|([A-Z]([a-z])+))";
    msg = "name is empty";
    if (name.length() != 0) {
        if (name.matches(regex))
            msg = "name is valid";
        else
            msg = "name contains digits and/or special characters";
    }
%>
<h3><%= msg %></h3>