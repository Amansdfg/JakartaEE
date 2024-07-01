<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="d-flex justify-content-center" style="margin-top: 200px">
    <div class="shadow-lg p-3 bg-white rounded">
        <form action="/examAdmin" method="post">
            <div class="mt-3 mb-3">
                <label class="form-label">Full name</label>
                <input class="form-control" type="text" name="name">
            </div>
            <div class="mb-3">
                <label class="form-label">Exam points</label>
                <input class="form-control" type="number" name="score">
            </div>
            <div class="d-flex justify-content-end">
                <button class="btn btn-success">submit</button>
            </div>
        </form>
    </div>
</div>

<div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>Holy guacamole!</strong> You should check in on some of those fields below.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="embed-responsive embed-responsive-100by5">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" allowfullscreen></iframe>
</div>
<div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/watch?v=zpOULjyy-n8" allowfullscreen></iframe>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
