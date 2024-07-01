<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 11.02.2024
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <%String success=request.getParameter("success");
    String incorrect=request.getParameter("incorrect");
    %>
    <%@include file="static/two-navbar.jsp"%>
    <%if(incorrect!=null){%>
    <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
        This email already exist
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%}%>
    <%if(success!=null){%>
    <div class="alert alert-success alert-dismissible fade show mt-2" role="alert">
        User registered successfully
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%}%>
    <div class="mt-5 d-flex justify-content-center">
        <form method="post" action="/register" style="width: 600px">
            <div class="mb-3 row">
                <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" required class="form-control" id="inputEmail" name="inputEmail" value="example@gmail.com">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="text" required class="form-control" id="inputPassword" name="inputPassword">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="inputFullName" class="col-sm-2 col-form-label">Full Name</label>
                <div class="col-sm-10">
                    <input type="text" required class="form-control" id="inputFullName" name="inputFullName">
                </div>
            </div>
            <div>
                <button class="btn btn-success">Register</button>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
