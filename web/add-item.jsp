<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman's shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@include file="static/navbar.jsp"%>
<div class="d-flex justify-content-center m-3">
    <form action="/add-item" method="post" style="width: 500px">
        <div class="mt-3 mb-3">
            <label class="form-label fw-bold">Name:</label>
            <input class="form-control" type="text" name="name" placeholder="Insert name">
        </div>
        <div class="mb-3">
            <label class="form-label fw-bold">Price:</label>
            <input class="form-control" type="number" name="price" placeholder="Insert price">
        </div>
        <div class="mb-3">
            <label class="form-label fw-bold">Amount:</label>
            <input class="form-control" type="number" name="amount" placeholder="Insert amount">
        </div>
        <div>
            <button class="btn text-white" style="background-color: #1B5E20">Add item</button>
        </div>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
