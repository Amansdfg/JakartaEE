<%@ page import="Student.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<% Student student = (Student) request.getAttribute("student"); %>
<div class="d-flex justify-content-center">
    <div style="width: 600px; margin-top: 100px">
        <form action="/save-student" method="post">
            <div class="mb-2">
                <label class="form-label">Name:</label>
                <input type="text" class="form-control" value="<%= student.getName() %>" name="name">
            </div>
            <div class="mb-2">
                <label class="form-label">Surname:</label>
                <input type="text" value="<%= student.getSurname() %>" class="form-control" name="surname">
            </div>
            <div class="mb-2">
                <label class="form-label">Birthday:</label>
                <input type="text" value="<%= student.getBirthday() %>" name="birthday" class="form-control">
            </div>
            <div class="mb-2">
                <label class="form-label">City:</label>
                <input type="text" value="<%= student.getCity() %>" name="city" class="form-control">
            </div>
            <div class="mb-2">
                <input type="hidden" value="<%= student.getId() %>" name="id" class="form-control">
            </div>
            <div class="d-flex justify-content-end">
                <button class="btn btn-success">Save student</button>
            </div>
        </form>
        <div class="d-flex justify-content-end">
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Delete student
            </button>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Confirm Delete</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Are you sure?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <form action="/delete-student" method="post">
                                <input value="<%=student.getId()%>" name="id" type="hidden">
                                <button class="btn btn-danger">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
