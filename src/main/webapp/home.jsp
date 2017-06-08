
<%-- public class Home { --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--  constructor --%>
<%! int counter = 0; %>
<%-- end constructor --%>
<%--  doGet(req, res) --%>
<c:if test="${param.reset != null}">
    <% counter = 0; %>
</c:if>
<% counter += 1; %>
<% request.setAttribute("counter", counter); %>
<%--  end doGet --%>
<html>
<head>
    <title>Welcome to JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<h1>The current count is ${counter}.</h1>
View the page source!
<%-- this is a JSP comment, you will *not* see this in the html --%>
<!-- this is an HTML comment, you *will* see this in the html -->
</body>
</html>
<%-- } --%>
