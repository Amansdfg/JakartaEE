<%@ page import="java.util.ArrayList" %>
<%@ page import="SprintTaskOne.Task" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 07.02.2024
  Time: 00:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sprint task one</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@include file="static/navSprint.jsp"%>
<%ArrayList<Task> tasks= (ArrayList<Task>) request.getAttribute("tasks");%>
<div class="m-3">
    <div>
        <a href="add-task" class="btn" style="background-color: #00008B;color: white">+ Add task</a>
    </div>
    <table class="table border-top mt-3">
        <thead>
            <tr>
                <th scope="col" style="width:5% ">ID</th>
                <th scope="col" style="width: 40%">Name</th>
                <th scope="col" style="width: 25%">Deadline</th>
                <th scope="col" style="width:25% ">Done</th>
                <th scope="col" style="width: 5%">Details</th>
            </tr>
        </thead>
        <tbody>
            <%for(int i=0;i< tasks.size();i++){%>
            <tr>
                <th colspan="row"><%=tasks.get(i).getId()%></th>
                <td><%=tasks.get(i).getName()%></td>
                <td><%=tasks.get(i).getDeadlineDate()%></td>
                <td><%if(tasks.get(i).isDone()){%>
                        Yes
                    <%}else {%>
                    No
                    <%}%>
                </td>
                <td><a href="/details-task?id=<%=tasks.get(i).getId()%>" class="btn" style="background-color: #00008B;color: white">details</a></td>
            </tr>
        <%}%>

        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
