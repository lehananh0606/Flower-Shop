<%-- 
    Document   : hehe
    Created on : Mar 22, 2023, 11:30:45 AM
    Author     : MSI GF63
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="MainController" method="POST">

            Search <input type="text" name="search" value="${param.search}"/>
            <input type="submit" name="action" value="Search"/>   
            <input type="submit" name="action" value="Logout"/>
        </form>

    </body>
</html>
