<%@ page import="Task4.asd.asd.Client" %>
<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 02.02.2024
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<%Client client= (Client) request.getAttribute("client");%>
<body>
<div class="container">
    <div class="row p-3 bg-secondary text-white">
        <div class="col-md-3">
            <h4>Aman's store</h4>
        </div>

        <div class="col-md-1">
            <h4>items</h4>
        </div>
        <div class="col-md-1">
            <h4> address</h4>
        </div>
        <div class="col-md-1">
            <h4>sales</h4>
        </div>
    </div>
</div>
<div class="d-flex justify-content-center">
    <div class="shadow-lg p-3 mt-5" style="width:auto ">
        <h1 style="font-size: 30px">Client's name:<%=client.getName()%></h1>
        <h1 style="font-size: 20px"> Client's surname:<%=client.getSurname()%></h1>
        <h1 style="font-size: 20px">Client's food:<%=client.getFood()%></h1>
        <button class="btn btn-primary">confirm</button>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
