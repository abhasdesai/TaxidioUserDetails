<%@ page import="Model.UserDetails" %><%--
  Created by IntelliJ IDEA.
  User: abhas
  Date: 01/10/18
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
<%
    UserDetails d = (UserDetails) request.getAttribute("Success");

    out.println("Following values have been inserted Successfully:");%><br>
First Name: <%out.println(d.getFirstname());%><br>
Last Name: <%out.println(d.getLastname());%><br>
Email ID: <%out.println(d.getEmailid());%><br>
Contact Number: <%out.println(d.getContact());%><br>
Interests: <%out.println(d.getInts());%><br>
Visit Date: <%out.println(d.getVisitdate());%><br>
Room Number: <%out.println(d.getRoomno());%><br>
Membership Number: <%out.println(d.getMemberno());%>
Add Another Detail:
<form name="form2" action="ReadInput">
    <input type="submit" value="Submit">
</form>
<br>
Check All Values:
<form name="form3" action="DisplayValues">
    <input type="submit" value="Submit">
</form>


</body>
</html>
