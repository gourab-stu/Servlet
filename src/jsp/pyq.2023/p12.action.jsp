<%! double r, vol; %>
<%
    r = Double.parseDouble(request.getParameter("r"));
    vol = (4.0 / 3.0) * Math.PI * Math.pow(r, 3);
%>
<h3>
    radius of the sphere is <%= r %><br>
    volume of the sphere is <%= vol %>
</h3>