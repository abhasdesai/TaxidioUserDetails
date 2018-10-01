<%@ page import="Model.UserDetails" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: abhas
  Date: 01/10/18
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display All Values</title>
</head>
<body>
<%
    List<UserDetails> dl = (List<UserDetails>) request.getAttribute("succ");
    for(UserDetails d: dl){
        out.println(d.getFirstname());
    }
%>

</body>
</html>
