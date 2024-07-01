<%@ page import="Student.Student" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 10.02.2024
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>asa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%Student student=(Student) request.getAttribute("student");%>
<div class="d-flex justify-content-center">
    <table class="table" style="width: 300px; margin-top: 100px">
        <tr>
            <td>Name:</td>
            <td class="fw-bold"><%=student.getName()%></td>
        </tr>
        <tr>
            <td>Surname</td>
            <td class="fw-bold"><%=student.getSurname()%></td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td class="fw-bold"><%=student.getBirthday()%></td>
        </tr>
        <tr>
            <td>City</td>
            <td class="fw-bold"><%=student.getCity()%></td>
        </tr>
        <tr>
            <td>id</td>
            <td class="fw-bold"><%=student.getId()%></td>
        </tr>
        <tr>
            <td><a href="/edit-student?id=<%=student.getId()%>" class="btn btn-success">Edit</a></td>
        </tr>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
