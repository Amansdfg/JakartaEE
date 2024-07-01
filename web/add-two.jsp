<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 11.02.2024
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman's shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <%@include file="static/two-navbar-admin.jsp"%>
    <div class="d-flex justify-content-center mt-2">
        <div class="shadow-lg p-3 bg-white rounded" style="width: 600px;">
            <form action="/add-two"  method="post">
                <div class="mt-2 mb-2">
                    <label class="form-label">Name:</label>
                    <input class="form-control" type="text" name="name">
                </div>
                <div class="mb-2">
                    <label class="form-label">Price:</label>
                    <input class="form-control" type="number" name="price">
                </div>
                <div class="mb-2">
                    <label class="form-label">Description:</label>
                    <div>
                        <label class="form-label">RAM:</label>
                        <input class="form-control" name="ram" type="text">
                        <label class="form-label">Memory:</label>
                        <input class="form-control" name="memory" type="text">
                        <label class="form-label">Version:</label>
                        <input class="form-control" name="version" type="text">
                    </div>
                </div>
                <div class="mb-2">
                    <button class="btn btn-success">Insert</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
