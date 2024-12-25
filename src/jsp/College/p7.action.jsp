<%! 
    int p, r, t;
    double A, I;
%>
<% 
    p = Integer.parseInt(request.getParameter("p"));
    r = Integer.parseInt(request.getParameter("r"));
    t = Integer.parseInt(request.getParameter("t"));
    I = (p * r * t) / 100.0;
    A = p + I;
%>
<body>
  <table border="2">
    <tr>
      <td>Total Interest</td>
      <td>Total Amount</td>
    </tr>
    <tr>
      <td><%= I %></td>
      <td><%= A %></td>
    </tr>
  </table>
</body>