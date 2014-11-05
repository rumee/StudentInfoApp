%{--<a href="${createLink(action:'list')}">Student List </a><br/>--}%
%{--<a href="${createLink(action:'create')}">Add Student</a>

<nav><g:link controller="student" action="create">Student Add</g:link></nav>
<nav><g:link controller="student" action="list">Student List</g:link></nav>
<nav><g:link controller="department" action="create">Department Add</g:link></nav>
<nav><g:link controller="department" action="list">Department List</g:link></nav>

<g:if test="${session.userType}">
    <nav><g:link controller="user" action="logout">| Logout</g:link></nav>
    <nav> Login as : ${session.name} </nav>
</g:if>
--}%
    <!-- Bootstrap -->
    <link href="${resource(dir: 'bootstrap/css', file: 'bootstrap.css')}" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.js')}" type="text/javascript"></script>

    <script src="${resource(dir: 'bootstrap/js', file: 'jquery.js')}" type="text/javascript"></script>

<!--Example-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Student Information</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Department <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="department" action="create">Add</g:link></li>
                        <li class="divider"></li>
                        <li><g:link controller="department" action="list">List</g:link></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Student <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="student" action="create">Add</g:link></li>
                        <li class="divider"></li>
                        <li><g:link controller="student" action="list">List</g:link></li>
                    </ul>
                </li>

                <li>
                    <g:link controller="search" action="index">Search</g:link>
                </li>

            </ul>

            <g:if test="${session.userType}">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login as : ${session.name} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="user" action="logout">Logout</g:link></li>
                    </ul>
                </li>
            </ul>
            </g:if>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<g:if test="${flash.success}">
    <div class="alert alert-success">
        ${flash.success}
    </div>
</g:if>

<g:if test="${flash.error}">
    <div class="alert alert-danger">
        ${flash.error}
    </div>
</g:if>
