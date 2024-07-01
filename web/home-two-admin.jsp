<%@ page import="java.util.ArrayList" %>
<%@ page import="SprintTaskTwo.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman's shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%ArrayList<Items> items=(ArrayList<Items>) request.getAttribute("items");%>
<div class="container">
    <div class="border-button mb-2">
        <%@include file="static/two-navbar-admin.jsp"%>
    </div>
    <div class="mb-2">
        <h1 class="text-center fw-bold">Welcome to Aman's shop</h1>
        <h4 class="text-center">Electronic devices with high quality and service </h4>
    </div>
    <div class="row mt-3">
        <%for(int i=0;i<items.size();i++){%>
        <div class="col-4">
            <div class="card border-secondary mb-3 text-center shadow-lg  bg-white rounded" style="max-width: 20rem;">
                <div class="card-header"><%=items.get(i).getName()%></div>
                <div class="card-body text-secondary">
                    <h5 class="card-title text-success">〒<%=items.get(i).getPrice()%></h5>
                    <div class="m-auto card-text"><%=items.get(i).getRam()%></div>
                    <div class="m-auto card-text"><%=items.get(i).getMemory()%></div>
                    <div class="m-auto card-text"><%=items.get(i).getVersion()%></div>
                </div>
                <div class="card-footer bg-transparent border-success"><a  href="/details-item?id=<%=items.get(i).getId()%>" style="width: 100%" class="btn btn-secondary">edit</a></div>
            </div>
        </div>
        <%}%>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
