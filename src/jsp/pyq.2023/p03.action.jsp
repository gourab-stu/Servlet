<%! float a, b, mul, div; %>
<%
  a = Float.parseFloat(request.getParameter("a"));
  b = Float.parseFloat(request.getParameter("b"));
  mul = a * b;
  div = a / b;
  out.println("<h3>" + a + " x " + b + " = " + mul + "</h3>");
  out.println("<h3>" + a + " / " + b + " = " + div + "</h3>");
%>