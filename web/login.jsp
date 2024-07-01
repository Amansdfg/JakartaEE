<%@ page import="SprintTaskTwo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman's shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%String incorrect=request.getParameter("incorrect");
%>
<div class="container">
    <%@include file="static/two-navbar.jsp"%>
    <div class="m-auto" style="width: 600px">
        <%if(incorrect!=null){%>
        <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
            Incorrect <strong>email</strong> or <strong>password</strong>!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%}%>
        <div class=" shadow-lg p-3 bg-white rounded" style="margin-top: 100px">
            <form action="/login" method="post">
                <div class="mb-3 row">
                    <label for="staticEmail" class="col-2 col-form-label">Email</label>
                    <div class="col-10">
                        <input type="text" class="form-control" id="staticEmail" value="email@gmail.com" name="email">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="inputPassword" class="col-2 col-form-label">Password</label>
                    <div class="col-10">
                        <input type="password" class="form-control" id="inputPassword" name="password">
                    </div>
                </div>
                <div>
                    <button class="btn btn-success">Login</button>
                    <a href="/register" class=" btn btn-secondary">Register</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
