<%!
    String mode;
    float temp, celcius, fahrenheit;
%>
<%
    mode = request.getParameter("mode");
    temp = Float.parseFloat(request.getParameter("temp"));
    if (mode.equals("celcius")) {
        celcius = 5.0f * (temp - 32.0f) / 9.0f;
        out.println("<h3>temperature c in " + mode + " is " + celcius + "&#176;C</h3>");
    } else {
        fahrenheit = (temp / 5.0f) * 9.0f + 32.0f;
        out.println("<h3>temperature c in " + mode + " is " + fahrenheit + "&#176;F</h3>");
    }
%>