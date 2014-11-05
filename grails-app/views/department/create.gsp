<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/16/14
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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

    <g:form class="form-horizontal" role="form" controller="department" action="save">
    <!--<form class="form-horizontal" role="form" action="save">-->

    <input type="hidden" name="id" value="${department?.id}">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
        <div class="col-sm-10">
            <input type="text" value="${department?.name}" class="form-control" name="name" id="inputEmail3" placeholder="Name">
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