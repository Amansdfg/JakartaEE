<%@ page import="java.util.ArrayList" %>
<%@ page import="Task4.asd.asd.Client" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OrderClient</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<% ArrayList<Client> clients= (ArrayList<Client>) request.getAttribute("clients");%>
<body>
<div class="d-flex justify-content-center mt-5 mb-5" >
<h1>Aman's site from Admin's side</h1>
</div>
<div class="d-flex justify-content-center">
<table class="table" style="width: 800px">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Surname</th>
        <th scope="col">Food</th>
        <th scope="col">details</th>
    </tr>
    </thead>
    <tbody>
    <%for(int i=0;i<clients.size();i++){%>
    <tr>
        <th scope="row"><%=clients.get(i).getId()%></th>
        <td><%=clients.get(i).getName()%></td>
        <td><%= clients.get(i).getSurname()%></td>
        <td><%= clients.get(i).getFood()%></td>
        <td><a href="/details?id=<%=clients.get(i).getId()%>" class="btn btn-info">details</a></td>
    </tr>
    <%
    }
    %>
    </tbody>
</table>
</div>
</body>
</html>
