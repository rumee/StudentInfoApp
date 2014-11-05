<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/19/14
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>

<g:if test="${flash.error}">
    <div class="alert alert-warning">
        ${flash.error}
    </div>
</g:if>

<!-- Default panel contents -->
<div class="panel-heading">All Student List Results</div>
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
    <g:if test="${students}">
        <tbody>
        <g:each var="student" in="${students}" status="i">
            <tr>
                <td>${i + 1}</td>
                <td>${student.name}</td>
                <td>${student.regId}</td>
                <td>${student.email}</td>
                <td>${student.gender}</td>
                <td>${student.department.name}</td>
                <td>
                    <g:link controller="student" action="delete" id="${student.id}">Delete</g:link>
                    <g:link controller="student" action="edit" id="${student.id}">Edit</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </g:if>

    <g:if test="${departments}">

        <tbody>
        <g:each var="department" in="${departments}">                  %{--dont use i!--}%
            <g:each in="${department.students}" var="student" status="i">   %{--var means variable--}%
                <tr>
                    <td>${i + 1}</td>
                    <td>${student.name}</td>
                    <td>${student.regId}</td>
                    <td>${student.email}</td>
                    <td>${student.gender}</td>
                    <td>${department.name}</td>
                    <td>
                        <g:link controller="student" action="delete" id="${student.id}">Delete</g:link>
                        <g:link controller="student" action="edit" id="${student.id}">Edit</g:link>
                    </td>
                </tr>
            </g:each>

        </g:each>
        </tbody>
    </g:if>

</table>
