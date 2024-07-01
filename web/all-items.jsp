<%@ page import="java.util.ArrayList" %>
<%@ page import="Shop.Item" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aman's shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%ArrayList<Item> items= (ArrayList<Item>) request.getAttribute("items");%>
<%@include file="static/navbar.jsp"%>
<div class="d-flex justify-content-center">
    <table class="table  table-striped m-3">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col" style="width: 35%">Name</th>
            <th scope="col" style="width: 25%">Price</th>
            <th scope="col" style="width: 25%">Amount</th>
            <th scope="col" style="width: 5%">Details</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
            <%for(int i=0;i< items.size();i++){%>
            <tr>
                <th scope="row"><%=items.get(i).getId()%></th>
                <td><%=items.get(i).getName()%></td>
                <td><%=items.get(i).getPrice()%></td>
                <td><%=items.get(i).getAmount()%></td>
                <td><a href="/detailsItem?id=<%=items.get(i).getId()%>" class="btn btn-dark">details</a></td>
            </tr>
            <%}%>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
