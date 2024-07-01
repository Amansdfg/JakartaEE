<%@ page import="java.util.ArrayList" %>
<%@ page import="SprintTaskTwo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%ArrayList<User> users=(ArrayList<User>) request.getAttribute("users");%>
<div class="container">
    <%@include file="static/two-navbar-admin.jsp"%>
     <table class="table mt-5">
         <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Email</th>
                <th scope="col">Password</th>
                <th scope="col">Full name</th>
                <th scope="col">Status</th>
                <th scope="col">Details</th>
            </tr>
         </thead>
         <tbody>
         <%for(int i=0;i< users.size();i++){%>
            <tr>
                <th scope="row"><%=users.get(i).getId()%></th>
                <td><%=users.get(i).getEmail()%></td>
                <td><%=users.get(i).getPassword()%></td>
                <td><%=users.get(i).getFullName()%></td>
                <td><%=users.get(i).getStatus()%></td>
                <td><a href="/user-details?id=<%=users.get(i).getId()%>" class="btn btn-warning">details</a></td>
            </tr>
         <%}%>
         </tbody>
     </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
