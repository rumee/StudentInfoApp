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
    <title>.:: List ::.</title>
</head>
<body>
<div class="container">
    <g:render template="/menuTemplate" />


    <table class="table table-bordered table-hover" width="647">
        <thead>
        <tr>
            <th>#</th>
            <th>Department Name</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="department" in="${results}" status="${i}">

            <tr>
                <td>${i+1}</td>
                <td>${department.name}</td>
                <td class="action">
                    <g:link onclick="return confirm('Are you sure?')" action="delete" id="${department.id}">Delete</g:link>
                    <g:link action="edit" id="${department.id}">Edit</g:link>
                </td>
            </tr>

        </g:each>
        </tbody>
    </table>



</div>
</body>
</html>