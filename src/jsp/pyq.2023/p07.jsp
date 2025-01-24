<%@page import = "java.time.LocalDateTime" %>
<%@page import = "java.time.format.DateTimeFormatter" %>
<%@page import = "java.time.format.TextStyle" %>
<%@page import = "java.util.Locale" %>
<%! LocalDateTime ldt; %>
<% ldt = LocalDateTime.now(); %>
<h3>Today is : <%= ldt.format(DateTimeFormatter.ofPattern("eeee")) %> Current Time is : <%= ldt.format(DateTimeFormatter.ofPattern("hh:mm:ss a")) %></h3>