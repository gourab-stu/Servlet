<%@page import = "java.time.LocalDate" %>
<%!
    LocalDate d1, d2;
    int diff;
%>
<%
    d1 = LocalDate.parse(request.getParameter("d1"));
    d2 = LocalDate.parse(request.getParameter("d2"));
    diff = 0;
    if (d1.getYear() == d2.getYear()) {
        diff = d1.getDayOfYear() - d2.getDayOfYear();
    } else {
        diff = d1.getYear() - d2.getYear();
        diff = diff * 365;
        diff += d1.getDayOfYear() - d2.getDayOfYear();
    }
%>
<h3>difference between those dates is <%= diff %></h3>