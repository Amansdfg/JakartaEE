<%@ page import="SprintTaskTwo.Items" %>
<%@ page import="SprintTaskTwo.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="SprintTaskTwo.Comment" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 13.02.2024
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ass</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%Items items=(Items)request.getAttribute("items");
    User userOne=(User)request.getSession().getAttribute("userOne");
    ArrayList<Comment> comments=(ArrayList<Comment>) request.getAttribute("comments");
%>

<div class="container">
    <%@include file="static/two-navbar-admin.jsp"%>
    <div style="width: 600px" class="m-auto">
        <form action="/edit-item" method="post">
            <div class="mt-3 mb-3">
                <label class="form-label">Name: </label>
                <input class="form-control" type="text" name="name" value="<%=items.getName()%>">
            </div>
            <div class="mb-3">
                <label class="form-label">Price:</label>
                <input class="form-control" type="number" name="price" value="<%=items.getPrice()%>">
            </div>
            <div class="mb-3">
                <label class="form-label">Ram:</label>
                <input class="form-control" type="text" name="description" value="<%=items.getRam()%>">
            </div>
            <div class="mb-3">
                <label class="form-label">Memory:</label>
                <input class="form-control" type="text" name="description" value="<%=items.getMemory()%>">
            </div>
            <div class="mb-3">
                <label class="form-label">Version:</label>
                <input class="form-control" type="text" name="description" value="<%=items.getVersion()%>">
            </div>
            <div class="mb-3">
                <input class="form-control" type="hidden" name="id" value="<%=items.getId()%>">
                <button class="btn btn-success">Edit</button>
            </div>
        </form>
        <form action="/remove-item" method="post">
            <input name="id" value="<%=items.getId()%>" type="hidden">
            <button class="btn btn-danger">Delete</button>
        </form>
        <div class="row">
            <form action="/add-comment" method="post">
                <div class="form-group">
                    <input type="hidden" name="user" value="<%=userOne.getId()%>">
                </div>
                <div class="form-group">
                    <input type="hidden" name="item" value="<%=items.getId()%>">
                </div>
                <div class="form-group mb-2">
                    <textarea class="form-control" name="comment"></textarea>
                </div>
                <div class="form-group">
                    <button class="btn btn-secondary">Add comment</button>
                </div>
            </form>
        </div>
        <%for(Comment comment :comments){%>
            <div class="row">
                <div class="card">
                    <h3 class="card-title"><%=comment.getUser().getFullName()%></h3>
                    <div class="card-body">
                        <h4 class="card-text"><%=comment.getUser().getEmail()%></h4>
                        <h4 class="card-text"><%=comment.getMessage()%></h4>
                        <h4 class="card-text"><%=comment.getPostDate()%></h4>
                    </div>
                </div>
            </div>
        <%}%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
