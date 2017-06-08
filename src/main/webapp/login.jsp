<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <form action="/login.jsp" method="POST">
        <div class="mdl-textfield mdl-js-textfield">
            <input class="mdl-textfield__input" type="text" id="username" name="username" placeholder="Username">
            <label class="mdl-textfield__label" for="username">Username</label>
        </div>
        <div class="mdl-textfield mdl-js-textfield">
            <input class="mdl-textfield__input" type="text" id="password" name="password" placeholder="Password">
            <label class="mdl-textfield__label" for="password">Password</label>
        </div>
        <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored" type="submit" value="Log in">
            <i class="material-icons">person pin</i>
        </button>
    </form>
</div>
</body>
</html>
