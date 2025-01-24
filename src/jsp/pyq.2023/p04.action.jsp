<%! String str, strReversed; %>
<%
    str = request.getParameter("str");
    strReversed = new String();
    for (int i = 0; i < str.length(); i++) {
        strReversed = str.charAt(i) + strReversed;
    }
    out.println("<h3>the reversed string is \"" + strReversed + "\"</h3>");
%>