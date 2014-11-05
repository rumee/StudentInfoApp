<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/12/14
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Registration Form</title>
</head>

<body>
<div class="container">
    <g:render template="/menuTemplate" />


    <!--<form class="form-horizontal" role="form" action="save">-->
    <g:form class="form-horizontal" role="form" controller="student" action="save">

        <input type="hidden" name="id" value="${student?.id}">

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <input type="text" value="${student?.name}" class="form-control" name="name" id="inputEmail3" placeholder="Name">
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Reg Id</label>
            <div class="col-sm-10">
                <input type="text" value="${student?.regId}" class="form-control" name="regId" id="inputEmail3" placeholder="Reg Id">
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" value="${student?.email}" name="email" class="form-control" id="inputEmail3" placeholder="Email">
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Gender</label>
            <div class="col-sm-10">
                <div class="radio">
                    <input type="radio" name="gender" value="male"
                           ${student?.gender == "male" ? 'checked="checked"' : ''}> Male
                </br>
                    <input type="radio" name="gender" value="female"
                           ${student?.gender == "female" ? 'checked="checked"' : ''}> Female
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Department Name</label>
            <div class="span4">
                <div class="col-xs-4">
                <select name="department" class="form-control">
                    <option value="">--- Select the Department ---</option>
                    <g:each var="department" in="${departmentList}">
                        <option value="${department?.id}"
                            ${student?.department?.id== department?.id ? 'selected' : ''}>
                            ${department?.name}
                        </option>
                    </g:each>
                </select>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Save</button>
            </div>
        </div>
    </g:form>


</div>
</body>
</html>