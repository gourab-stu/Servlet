<%!
    String str;
    char vowels[] = { 'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U' };
    int count;
%>
<%
    str = request.getParameter("str");
    count = 0;
    for (int i = 0; i < str.length(); i++) {
        for (char c : vowels) {
            if (str.charAt(i) == c)
                count++;
        }
    }
%>
<h3>"<%= str %>" contains <%= count %> vowels in it</h3>