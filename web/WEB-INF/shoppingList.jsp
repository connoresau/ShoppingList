<%-- 
    Document   : shoppingList
    Created on : Oct 7, 2019, 12:46:01 PM
    Author     : 745507
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${username} <a href="ShoppingList?action=logout">Logout</a>
        <h2>List</h2>
        <form action="ShoppingList?action=add" method="post">
            Add item: <input type="text" name="itemToAdd"><input type="submit" value="Add">
        </form>
        <form action="ShoppingList?action=delete" method="post">
            <c:forEach items="${items}" var="item">
 
                <input type="radio" value="${item}" name="itemRadioBtns"><c:out value="${item}" /><br>
            </c:forEach>
            <input type="submit" value="Delete">
        </form>
    </body>
</html>
