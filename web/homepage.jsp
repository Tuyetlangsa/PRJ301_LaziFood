<%-- 
    Document   : homepage
    Created on : 20-06-2024, 09:21:44
    Author     : long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! JSP</h1>
        <a href="loginPage">Click here to login</a>
        <a href="registrationPage">Register</a><br/>
        <c:forEach var = "ingredientCategory" items ="${requestScope.LIST_INGREDIENT_CATEGORIES}">
            <c:out value="${ingredientCategory.name}"/><br/>
        </c:forEach>
        <c:out value="${requestScope.CHECK}"/>

    </body>
</html>
