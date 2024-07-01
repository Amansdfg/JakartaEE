<%@ page import="Shop.Item" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman's shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%Item item =(Item) request.getAttribute("item");%>
<%@include file="static/navbar.jsp"%>
<div class="d-flex justify-content-center mt-5">
    <div style="width: 300px">
        <form action="/edit" method="post">
            <div class="mt-2 mb-2">
                <label class="form-label">Name:</label>
                <input type="text" name="name" class="form-control" value="<%=item.getName()%>">
            </div>
            <div class="mb-2">
                <label class="form-label">Price:</label>
                <input type="text" name="price" class="form-control" value="<%=item.getPrice()%>">
            </div>
            <div class="mb-2">
                <label class="form-label">Price:</label>
                <input type="hidden" name="id" class="form-control" value="<%=item.getId()%>">
            </div>
            <div class="mb-2">
                <label class="form-label">Amount:</label>
                <input type="text" name="amount" class="form-control" value="<%=item.getAmount()%>">
            </div>
            <div class="mb-2">
                <button class="btn btn-success">Edit item</button>
            </div>
        </form>
        <form action="/delete" method="post">
            <div class="mb-2">
                <input type="hidden" name="id" class="form-control" value="<%=item.getId()%>">
            </div>
            <div class="mb-2">
                <button class="btn btn-danger">Delete</button>
            </div>
        </form>
<%--        <div class="mb-3">--%>
<%--            <h4>Name:</h4>--%>
<%--            <h4 class="fw-bold"><%=item.getName()%></h4>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <h4>Price:</h4>--%>
<%--            <h4 class="fw-bold"><%=item.getPrice()%></h4>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <h4>Amount:</h4>--%>
<%--            <h4 class="fw-bold"><%=item.getAmount()%></h4>--%>
<%--        </div>--%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
