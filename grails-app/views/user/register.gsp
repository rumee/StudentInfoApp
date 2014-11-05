<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/17/14
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>POP - User Registration</title>
    <meta name="layout" content="main" />
</head>
<body>
<g:form class="simpleform" url="[controller:'user',action:'register']">
    <fieldset>
        <legend>User Registration</legend>

        <p>
            <label for="username">Username</label>
            <input type="text" name="username"/>
        </p>
        <p>
            <label for="password">Password</label>
            <input type="password" name="password" />
        </p>
        <input type="hidden" name="userType" value="admin" />

        <p class="button">
            <label>&nbsp;</label>
            <g:submitButton class="button" name="submitButton" value="Create Account" />
        </p>
    </fieldset>
</g:form>
</body>
</html>