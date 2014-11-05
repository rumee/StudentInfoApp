<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/12/14
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Student Information Login</title>

    <!-- Bootstrap -->
    <link href="${resource(dir: 'bootstrap/css', file: 'bootstrap.css')}" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.js')}" type="text/javascript"></script>

    <g:if test="${i}">
        <script type="text/javascript">
            var timer = null;
            timer = setTimeout('auto_reload()',100);
            function auto_reload(){
                window.location.href="${createLink(action:'index')}";
            }
        </script>
    </g:if>


</head>
<body>
<!--Inspired by http://tutorialzine.com/2012/02/apple-like-login-form/ - Apple-like Login Form with CSS 3D Transforms -->

<div class="container">

    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Student Information System</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                     alt="">
                <g:form class="form-signin" controller="user" action="check">
                    <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                </g:form>
            </div>
            <g:if test="${flash.error}">
                <div class="alert alert-warning">
                    ${flash.error}
                </div>
            </g:if>

        %{--<a href="${createLink(controller: "user", action: "register")}" class="text-center new-account">Create an account </a>--}%
        </div>
    </div>
</div>
</body>
</html>