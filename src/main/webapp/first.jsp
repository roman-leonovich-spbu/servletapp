<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.List" %>
<%@ page import="letscode.other.User" %>


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
<br/>
<%= request.getRequestURI() %>
<br>
<%=LocalDateTime.now() %>
<hr/>
<%
   List<User> users = (List<User>) request.getAttribute("users");
   User anUser = users.get(0);
%>
    <b><%= anUser.getName()%></b>
    <i><%= anUser.getCountry()%></i>
    <u><%= anUser.getAge()%></u>

<table>
    <%for (User user : users) {%>
    <tr>
        <td><%= user.getName()%></td>
        <td><%= user.getCountry()%></td>
        <td><%= user.getAge()%></td>
    </tr>
    <%}%>
</table>
</body>
</html>
