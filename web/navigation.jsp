<%-- 
    Document   : navigation
    Created on : 22-06-2024, 13:57:16
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
   <div class="navbar">
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <button class="sidebar-toggle" onclick="toggleSidebar()">Toggle Sidebar</button>
        <ul class="sidebar-menu" id="sidebarMenu">
            <li><a href="#">Ingredients</a></li>
            <li><a href="#">Dish</a></li>
            <li><a href="#">Menu</a></li>
        </ul>
    </div>

    <!-- Your existing dropdowns -->
    <div class="dropdown">
        <a href="#" class="dropbtn">Ingredients</a>
        <div class="dropdown-content">
            <c:forEach var="ingredientCategory" items="${requestScope.LIST_INGREDIENT_CATEGORIES}">
                <a href="getProductByCategory?id=${ingredientCategory.id}&productType=ingredient">${ingredientCategory.name}</a>
            </c:forEach>
        </div>
    </div>

    <div class="dropdown">
        <a href="#" class="dropbtn">Dish</a>
        <div class="dropdown-content">
            <c:forEach var="dishCategory" items="${requestScope.LIST_DISH_CATEGORIES}">
                <a href="getProductByCategory?id=${dishCategory.id}&productType=dish">${dishCategory.name}</a>
            </c:forEach>
        </div>
    </div>

    <div class="dropdown">
        <a href="#" class="dropbtn">Menu</a>
        <div class="dropdown-content">
            <c:forEach var="menuCategory" items="${requestScope.LIST_MENU_CATEGORIES}">
                <a href="getProductByCategory?id=${menuCategory.id}&productType=menu">${menuCategory.name}</a>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
