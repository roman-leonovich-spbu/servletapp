<!doctype html>
<html>
<head>
    <title>
        FIRST
    </title>
</head>
<body>
<h2>Hello FIRST!</h2>
<%
    response.getWriter().write("first message");
%>
<%= request.getRequestURI()%>
</body>
</html>
