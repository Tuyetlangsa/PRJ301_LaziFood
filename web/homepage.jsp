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
        <a href="loginPage">Click here to login</a>
        <a href="registrationPage">Register</a><br/>
        <jsp:include page ="navigation.jsp"/>
        <jsp:include page="footer.jsp"/>
    </body>
    
</html>
