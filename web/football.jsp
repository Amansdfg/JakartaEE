<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="d-flex justify-content-center align-items-center" style="background-image:url('maun.jpeg'); height: 100vh;width: 100vw">
    <div class="shadow-lg p-3 bg-white rounded" style="width: 400px ;height: 500px">
    <form action="/footballInfo" method="post">
        <div class="mb-3">
            <label class="form-label">Name:</label>
            <input class="form-control" name="name" type="text" placeholder="Insert name">
        </div>
        <div class="mb-3">
            <label class="form-label">Surname:</label>
            <input class="form-control" name="surname" type="text" placeholder="Insert surname">
        </div>
        <div class="mb-3">
            <label class="form-label">Club:</label>
            <select name="club" class="form-control">
                <option value="Barcelona">Barcelona</option>
                <option value="Real Madrid">Real Madrid</option>
                <option value="Chelsea">Chelsea</option>
                <option value="Manchester city">Manchester city</option>
                <option value="Manchester United">Manchester United</option>
                <option value="Atalanta">Atalanta</option>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Salary:</label>
            <input class="form-control" name="salary" type="number" placeholder="Insert salary">
        </div>
        <div class="mb-3">
            <label class="form-label">Transfer:</label>
            <input class="form-control" name="transfer" type="number" placeholder="Insert transfer price">
        </div>
        <div class="d-flex justify-content-end">
            <button class="btn btn-primary">Add footballer</button>
        </div>
    </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
