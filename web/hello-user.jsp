<%@ page import="SprintTaskTwo.User" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 11.02.2024
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<% User user= (User) request.getSession().getAttribute("user");
if(user!=null){
%>
<div class="container">
    <%@include file="static/two-navbar.jsp"%>
    <div class="text-center mt-3">
        <h1>Welcome <%=user.getFullName()%></h1>
        <h3>This is your page</h3>
        <h3>Email: <%=user.getEmail()%></h3>
        <h3>Password: <%=user.getPassword()%></h3>
    </div>
</div>
<%}else{%>
    <div class="container">
        <h1 style="font-size: 70px">You could  ent</h1>
    </div>
<%}%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
