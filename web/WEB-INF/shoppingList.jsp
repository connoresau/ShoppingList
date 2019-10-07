<%-- 
    Document   : shoppingList
    Created on : Oct 7, 2019, 12:46:01 PM
    Author     : 745507
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form action="ShoppingList" method="post">
            Add item: <input type="text" name="addItemTxt"><input type="submit" value="Add">
        </form>
        <form action="ShoppingList" method="post">
            <table>
                <c:forEach var="item" items="${items}" begin="0" end="${items.length}">
                    <tr><td><input type="radio" value="${items}"></td></tr>
                    </foreach>
            </table>
        </form>
    </body>
</html>
