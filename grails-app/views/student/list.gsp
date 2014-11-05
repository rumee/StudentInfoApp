<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/12/14
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>.:: List ::.</title>

</head>
<body>
<div class="container">
    <g:render template="/menuTemplate" />

<!-- table -->
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">All Student List</div>

    <!-- Table -->
    <table class="table table-bordered table-hover" width="647">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Reg Id</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Department Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <g:each var="student" in="${results}" status="${i}">

            <tr>
                <td>${i+1}</td>
                <td>${student.name}</td>
                <td>${student.regId}</td>
                <td>${student.email}</td>
                <td>${student.gender}</td>
                <td>${student.department.name}</td>
                <td>
                    <g:link action="delete" id="${student.id}">Delete</g:link>
                    <g:link action="edit" id="${student.id}">Edit</g:link>
                </td>
            </tr>

        </g:each>
        </tbody>
    </table>

</div>


</div>
</body>
</html>