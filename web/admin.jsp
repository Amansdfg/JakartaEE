<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 31.01.2024
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h3>Aman's store</h3>
            </div>
            <div class="col-md-1">
                <h4>items</h4>
            </div>
            <div class="col-md-1">
                <h4>Address</h4>
            </div>
            <div class="col-md-1">
                <h4>sales</h4>
            </div>
        </div>
        <div class="row">
            <form action="/admin" method="post">
                <div class="row">
                    <label class="form-label">Phone-model:</label>
                    <input type="text" class="form-control" name="model">
                </div>
                <div class="row">
                    <label class="form-label">Phone-price:</label>
                    <input type="number" class="form-control" name="price">
                </div>
                <div class="row">
                    <button class="btn btn-success">Insert</button>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
