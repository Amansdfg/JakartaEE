<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 02.02.2024
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row p-3 bg-secondary text-white">
        <div class="col-3">
            <h3>Aman's store</h3>
        </div>
        <div class="col-1">
            <h4>items</h4>
        </div>
        <div class="col-1">
            <h4> address</h4>
        </div>
        <div class="col-1">
            <h4>sales</h4>
        </div>
    </div>
</div>
<div class="d-flex justify-content-center">
<div class="shadow-lg p-3 mb-5 bg-white rounded" style="width: 300px; margin-top: 100px">
            <form action="/orderAdmin" method="post">
                <div class="mb-3 mt-3">
                    <label class="form-label">Id:</label>
                    <input class="form-control" type="number" name="id">
                </div>
                <div class="mb-3">
                    <label class="form-label">Name:</label>
                    <input class="form-control" type="text" name="name">
                </div>
                <div class="mb-3">
                    <label class="form-label">Surname:</label>
                    <input class="form-control" type="text" name="surname">
                </div>
                <div class="mb-3">
                    <label class="form-label">Food</label>

                    <select class="form-control" name="food">
                        <option value="manty">manty-800tg</option>
                        <option value="lagman">lagman-1500tg</option>
                        <option value="asd">asd-1000tg</option>
                        <option value="samsa">samsa-mashraboy</option>
                        <option value="qwerty">qwerty-2000tg</option>
                    </select>
                </div>
                <div class="d-flex justify-content-end"><button class="btn-outline-success btn">Order</button></div>
            </form>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
