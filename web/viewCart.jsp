<%-- 
    Document   : viewCart
    Created on : Mar 4, 2023, 9:44:20 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.Product"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>View Cart Page</title>
        <style>
            
            h1{
                text-align: center;
                font-family: monospace;
                font-size: 40px;
                color:crimson;
            }
            .col-md-12{
                text-align: center;
                box-shadow: 0px 0px 40px black;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                display: flex;
                margin: 20px 50px;
               
            }
            h2{
               
                font-family: monospace;
                font-size: 35px;
                 text-align: center;
                box-shadow: 0px 0px 40px black;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                display: flex;
                margin: 20px 500px;
                color: crimson;
                
            }
            tr th{
                
                width: 120px;    
                text-align: center;
            }
            a{
                margin:10px 0;
                margin-left: 70%;
                font-family: monospace;
                font-size: 35px;
                 text-align: center;
                box-shadow: 0px 0px 40px black;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                display: flex;
                color: crimson;
            }
        </style>
    </head>
    <body style="background-color: #E9E9E9;">
        <div class="container">
            <h1>Your selected products</h1>
            <c:if test="${sessionScope.CART != null}">
                <c:set var="cart" value="${sessionScope.CART}" />
                <div class="col-md-12">
                    <table border="1" class="login">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th>Edit</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="count" value="1" />
                            <c:set var="total" value="0" />

                            <c:forEach var="product" items="${cart.cart}">
                                <c:set var="price" value="${product.value.price}" />
                                <c:set var="quantity" value="${product.value.quantity}" />
                                <c:set var="subtotal" value="${price * quantity}" />
                                <c:set var="total" value="${total + subtotal}" />
                            </c:forEach>

                            <c:forEach var="product" varStatus="counter" items="${cart.cart.values()}">

                            <form action="MainController" method="POST">
                                <tr>
                                    <td>${counter.count}</td>
                                    <td>
                                        <input type="text" name="id" value="${product.id}" readonly="" />
                                    </td>
                                    <td>${product.name}></td>
                                    <td>${product.price}</td>
                                    <td>
                                        <input type="number" name="quantity" value="${product.quantity}" min="1"/>
                                    </td>
                                    <td>${product.price * product.quantity}</td>
                                    <td>
                                        <input type="submit" name="action" value="Edit"/>
                                    </td>
                                    <td>
                                        <input type="submit" name="action" value="Remove"/>
                                    </td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </div>
        <h2>Total= ${total}</h2>
        <a href="shopping.jsp">Add more</a>
    </body>
</html>