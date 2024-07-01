<%@ page import="SprintTaskOne.Task" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 07.02.2024
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sprint task one</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%Task task= (Task) request.getAttribute("task");%>
<%@include file="static/navSprint.jsp"%>
<div class="d-flex justify-content-center">
    <div style="width: 500px">
        <form action="/save" method="post">
            <div>
                <input class="form-control" type="hidden" name="id" value="<%=task.getId()%>">
            </div>
            <div class="mt-2 mb-2">
                <label class="form-label">Name:</label>
                <input class="form-control" name="name" value="<%=task.getName()%>">
            </div>
            <div class="mb-2">
                <label class="form-label">Description:</label>
                <input class="form-control" style="height: 200px" name="description" value="<%=task.getDescription()%>">
            </div>
            <div class="mb-2">
                <label class="form-label">Deadline:</label>
                <input class="form-control" name="deadline" value="<%=task.getDeadlineDate()%>">
            </div>
            <div class="mb-2">
                <label class="form-label">IsDone:</label>
                <select class="form-control" name="isDone">
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>
            <button class="btn btn-success">Save</button>
        </form>
        <form action="/delete-task" method="post">
            <input class="form-control" type="hidden" name="id" value="<%=task.getId()%>">
            <button class="btn btn-danger">Delete</button>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
