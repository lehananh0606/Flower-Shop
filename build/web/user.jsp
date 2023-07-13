<%-- 
    Document   : user
    Created on : Feb 8, 2023, 11:27:54 AM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            h1{
                text-align: center;
                font-family: fantasy;
                font-size: 34px;
                color: darkred;
            }
            .col-md-12{
                text-align: center;

                justify-content: center;
                align-items: center;
                padding: 50px 0;
                display: flex;
                font-size: 30px;
            }
            .col-md-1{
                margin-left: 70%;
                font-size: 34px;
            }
        </style>
    </head>
    <body style="background-color: #E9E9E9;">
        <h1>User page(US role)</h1>

        <div class="col-md-12">
            User ID: ${sessionScope.LOGIN_USER.userID} </br>
            Full Name: ${sessionScope.LOGIN_USER.fullName}  </br>
            Role ID: ${sessionScope.LOGIN_USER.roleID} </br>
            Password: ${sessionScope.LOGIN_USER.password} 
        </div>
        <form action="MainController" method="POST">
            <div class="col-md-1">
                <input type="submit" name="action" value="Logout"/>
            </div>
        </form>
    </body>
</html>
