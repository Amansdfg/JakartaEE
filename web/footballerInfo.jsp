<%@ page import="java.util.ArrayList" %>
<%@ page import="Task7.Aman.Aman.Footballer" %><%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 04.02.2024
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%ArrayList<Footballer> footballers= (ArrayList<Footballer>) request.getAttribute("footballers");%>
<div class="container">
    <div class="row">
        <%for(int i=0;i< footballers.size();i++){%>
        <div class="col-md-4">
            <div class="card border-dark mb-2">
                <img class="card-img-top"
                     <%if(footballers.get(i).getClub().equals("Barcelona")){%>
                            src="BarcelonaLogo.png"
                        <%}else if(footballers.get(i).getClub().equals("Real Madrid")){%>
                            src="RealLogo.png"
                        <%}else if(footballers.get(i).getClub().equals("Manchester city")){%>
                            src="CityLogo.png"
                        <%}else if(footballers.get(i).getClub().equals("Chelsea")){%>
                            src="SealseaLogo.png"
                        <%}else if(footballers.get(i).getClub().equals("Manchester United")){%>
                            src="ManLogo.png"
                        <%}else if(footballers.get(i).getClub().equals("Atalanta")){%>
                            src="AtalantaLogo.png"
                        <%}%>
                     alt="Card image cap">
                <div class="card-body text-dark">
                    <h3 class="card-title"><%=footballers.get(i).getName()%> <%=footballers.get(i).getSurname()%></h3>
                    <h5 class="card-text">Club: <%=footballers.get(i).getClub()%></h5>
                    <h5 class="card-text text-danger">Salary: <%=footballers.get(i).getSalary()%></h5>
                    <h5 class="card-text text-danger">Transfer price: <%=footballers.get(i).getTransferPrice()%></h5>
<%--                    <%if(footballers.get(i).getClub().equals("Barcelona")){%>--%>
<%--                    <h6 class="card-text">It's Aman's best club</h6>--%>
<%--                    <%}%>--%>
                </div>
                <div class="card-footer d-flex justify-content-end">
                    <a href="#" class="btn btn-primary">details</a>
                </div>
            </div>
        </div>
        <%}%>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
