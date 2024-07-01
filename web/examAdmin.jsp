<%@ page import="java.util.ArrayList" %>
<%@ page import="Task6.Aman.Aman.Gay" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exams</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%ArrayList<Gay> gays=(ArrayList<Gay>) request.getAttribute("gays");%>
<div class="d-flex justify-content-center" >
    <table class="table" style="width: 500px;margin-top: 200px">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Full Name</th>
                <th scope="col">Score</th>
                <th scope="col">Grade</th>
            </tr>
        </thead>
        <tbody>
        <%for(int i=0;i<gays.size();i++){%>
            <tr>
                <th scope="row"><%=(i+1)%></th>
                <td><%=gays.get(i).getName()%></td>
                <td><%= gays.get(i).getScore()%></td>
                <td><% if(gays.get(i).getScore()>=90){%>
                    A
                    <%}else if(gays.get(i).getScore()>=75){%>
                    B
                    <%}else if(gays.get(i).getScore()>=60){%>
                    C
                    <%}else if(gays.get(i).getScore()>=50){%>
                    D
                    <%}else{%>
                    F
                    <%}%>
                </td>
            </tr>
        <%}%>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
