<%-- 
    Document   : register
    Created on : Oct 7, 2019, 12:45:40 PM
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
        <form action="ShoppingList?action=register" method="post">
            Username: <input type="text" name="usernameInput">
            <input type="submit" value="Register">
        </form>
    </body>
</html>
