<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String nameClass = "Pinnacles"; %>

<html>

<jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Index" />
</jsp:include>

<body class="container">
<c:choose>
    <c:when test="${param.role == 'admin'}">
        <h3>You are an Admin</h3>
    </c:when>
    <c:when test="${param.role == 'user'}">
        <h3>You are a User</h3>
    </c:when>
    <c:when test="${param.role == 'manager'}">
        <h3>You are a Manager</h3>
    </c:when>
    <c:when test="${param.role == ''}">
        <h3>You are a Guest</h3>
    </c:when>
</c:choose>
<div class="row">
    <div class="col-lg-6">
        It's nice to see you again!!! <%= nameClass %>
    </div>
    <div class="col-lg-6">
        Second text
    </div>
</div>

</body>
</html>
