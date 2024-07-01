<%@ page import="SprintTaskTwo.User" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 14.02.2024
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%User user =(User)request.getAttribute("user");%>
<div class="container" style="height: 100vh">
    <%@include file="static/two-navbar-admin.jsp"%>
    <div class="d-flex justify-content-center">
    <div class=" shadow-lg rounded bg-white p-3" style="width: 500px ;margin-top: 100px">
        <div>
            <label>ID:</label>
            <label><%=user.getId()%></label>
        </div>
        <div class="mt-3">
            <label>Email:</label>
            <label><%=user.getEmail()%></label>
        </div>
        <div class="mt-3">
            <label>Password:</label>
            <label><%=user.getPassword()%></label>
        </div>
        <div class="mt-3">
            <label>Full-name:</label>
            <label><%=user.getFullName()%></label>
        </div>
        <div class="mt-3">
            <label>Status:</label>
            <label><%=user.getStatus()%></label>
        </div>
        <div class="mt-3">
            <a href="/edit-user?id=<%=user.getId()%>" class="btn btn-warning">Edit user</a>
        </div>
    </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>