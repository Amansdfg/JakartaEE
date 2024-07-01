<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 07.02.2024
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sprint task one</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@include file="static/navSprint.jsp"%>
<div class="d-flex justify-content-center">
    <div style="width: 500px ;margin-top: 50px" class="border p-3 shadow-lg p-3 bg-white rounded">
        <div class="border-bottom d-flex">
            <div style="width: 100%">
                <label class="form-label h2">New Task</label>
            </div>
            <div>
                <a href="/main-page" class="text-decoration-none">❌</a>
            </div>
        </div>
        <form action="main-page" method="post">
            <div class="mt-3 mb-3">
                <label class="form-label">Name:</label>
                <input class="form-control" name="name" type="text" placeholder="Name:">
            </div>
            <div class="mb-3">
                <label class="form-label">Description:</label>
                <input class="form-control" style="height: 200px" name="description" type="text" placeholder="Description">
            </div>
            <div class="mb-3">
                <label class="form-label">Deadline:</label>
                <input class="form-control" name="deadline" type="date" placeholder="Deadline">
            </div>
            <div class="d-flex justify-content-end">
                <a  class="btn btn-danger" href="/main-page">Cancel</a>
                <button class="btn" style="background-color: #00008B; color: white; margin-left:3px;" >Add</button>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
