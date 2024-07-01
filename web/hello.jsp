<%@ page import="Task5.Aman.Aman.Dear" %>
<%@ page import="Task5.Aman.Aman.DataBaseTask5" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<% Dear dear = DataBaseTask5.getDear();%>
<div class="d-flex justify-content-center">
    <div class="shadow-lg p-3 mb-5 bg-white rounded " style="width: 300px; margin-top: 200px;">
        <div>
            Hello
            <%if (dear.getAge()>=18) {
                %>
            Dear
            <%}else{%>
            Dude
            <%
            }%>
            <%if (dear.getGender().equals("male")) {
                    %>Mister<%
                }else{%>
                %>Miss<%
            }%>
            <%=dear.getName()%>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
