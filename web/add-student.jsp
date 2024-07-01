<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 10.02.2024
  Time: 01:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Stundet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="d-flex justify-content-center">
    <div class="shadow-lg bg-white p-3 rounded" style=" margin-top: 100px;width:500px;">
    <form action="/add-student" method="post">
        <div class="mt2 mb-2">
            <label class="form-label">Name:</label>
            <input type="text" class="form-control" placeholder="Insert name" name="name">
        </div>
        <div class="mb-2">
            <label class="form-label">Surname</label>
            <input type="text" class="form-control" placeholder="Insert surname" name="surname">
        </div>
        <div class="mb-2">
            <label class="form-label">Birthday</label>
            <input class="form-control" type="date" name="birthday">
        </div>
        <div class="mb-2">
            <label class="form-label">City</label>
            <select name="city" class="form-control">
                <option value="Almaty">Almaty</option>
                <option value="Astana">Astana</option>
                <option value="Kyzylorda" selected>Kyzylorda</option>
                <option value="Shymkent">Shymkent</option>
            </select>
        </div>
        <div class="d-flex justify-content-end">
            <button class="btn btn-success">Add student</button>
        </div>
    </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
