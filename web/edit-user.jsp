<%@page import="SprintTaskTwo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%User user=(User)request.getAttribute("user");%>
<div class="container">
    <%@include file="static/two-navbar-admin.jsp"%>
    <form action="/edit-user" method="post">
        <div class="mt-2 mb-2">
            <label class="form-label">ID:</label>
            <input class="form-control" name="id" value="<%=user.getId()%>">
        </div>
        <div class="mb-2">
            <label class="form-label">Email:</label>
            <input class="form-control" name="email" value="<%=user.getEmail()%>">
        </div>
        <div class="mb-2">
            <label class="form-label">Password:</label>
            <input class="form-control" name="password" value="<%=user.getPassword()%>">
        </div>
        <div class="mb-2">
            <label class="form-label">Full-name</label>
            <input class="form-control" name="full_name" value="<%=user.getFullName()%>">
        </div>
        <div class="mb-2">
            <label class="form-label">Status</label>
            <input class="form-control" name="status" value="<%=user.getStatus()%>">
        </div>
        <div class="mb-2 d-flex justify-content-end">
            <button class="btn bnt-success">Edit</button>
        </div>
    </form>
    <div class="d-flex justify-content-end">
        <form action="/remove-user" method="post">
            <input name="id" value="<%=user.getId()%>" type="hidden">
            <button class="btn btn-danger">delete</button>
        </form>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
