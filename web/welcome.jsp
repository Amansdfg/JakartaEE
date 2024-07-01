<%--
  Created by IntelliJ IDEA.
  User: aman
  Date: 02.02.2024
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="d-flex justify-content-center">
<div class="shadow-lg p-3 mb-5 bg-white rounded " style="width: 300px; margin-top: 200px;" >
    <form action="hello" method="post">
        <div class="mb-3 mt-3">
            <label class="form-label">Full Name:</label>
            <input class="form-control" type="text" name="name">
        </div>
        <div class="mb-3">
            <label class="form-label">Age:</label>
            <input class="form-control" type="text" name="age">
        </div>
        <div class="mb-3">
            <label class="form-label">Gender:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" value="male" name="gender" id="male">
                <label class="form-check-label" for="male">Male</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" value="female" name="gender" id="female">
                <label class="form-check-label" for="female">Female</label>
            </div>
        </div>
        <button class="btn btn-success">send</button>
    </form>
</div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
