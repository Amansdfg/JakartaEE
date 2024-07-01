<%@ page import="java.util.ArrayList" %>
<%@ page import="Student.Student" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 10.02.2024
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%ArrayList<Student>students=(ArrayList<Student>) request.getAttribute("students");%>
<div class="container" style="margin-top: 50px">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">name</th>
                <th scope="col">surname</th>
                <th scope="col">birthday</th>
                <th scope="col">city</th>
                <th scope="col">details</th>
            </tr>
        </thead>
        <tbody class="table-group-divider">
            <%for(int i=0;i<students.size();i++){%>
                <tr>
                    <th scope="row"><%=students.get(i).getId()%></th>
                    <td><%=students.get(i).getName()%></td>
                    <td><%=students.get(i).getSurname()%></td>
                    <td><%=students.get(i).getBirthday()%></td>
                    <td><%=students.get(i).getCity()%></td>
                    <td><a href="/details-student?id=<%=students.get(i).getId()%>" class="btn btn-info">details</a> </td>
                </tr>
            <%}%>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
