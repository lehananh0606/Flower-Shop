<%-- 
    Document   : login
    Created on : Feb 11, 2023, 9:35:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .row1{
                box-shadow: 0px 0px 8px black;
                text-align: center;
                border-radius: 5px;
                margin: 0 50px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                font-size: 30px;
                background-color: lemonchiffon;
            }
            
            .row2{
                width: 100%;
                display: flex;
                justify-content: space-evenly;
                align-self: center;
                font-size: 36px;
               
            }

            .g-recaptcha{
                margin-left: 400px;
                margin-top: 50px;
            }
            .col-md-5{
                margin:30px 40px;
            }
            .col-md-6{
                box-shadow: 0px 0px 8px black;
                text-align: center;
                border-radius: 5px;
                margin: 0 50px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                 background-color: honeydew;
            }
            .row2 img{
                width:60%;
            }
        </style>
        <link rel="stylesheet" href="stylelogin.css">
    </head>
    <body style="background-color:#E9E9E9;">
        <div class="container">
            <!-- chỗ đăng nhập -->
            <div class="row1">

                <form action="MainController" method="POST" id="form">
                    User ID    <input type="text" name="userID" required=""/></br>
                 
                    Password <input type="password" name="password" required=""/></br>

                    <div class="g-recaptcha" data-sitekey="6LcpOg8lAAAAACoua69bNPlAAWPl0i0DRaNIb4i3"></div>
                    
                       <div id="error"></div>
                    <div class="col-md-5">
                        <input type="submit" name="action" value="Login"/></br>
                    </div>
                    <div class="col-md-5">
                        <input type="reset" value="Reset"/></br>
                    </div>  
                   
                    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
                    <script>
                        window.onload = function(){
                            let isValid = false;
                        const form = document.getElementById("form");
                        const error = document.getElementById("error");
                        form.addEventListener("submit", function(event){
                       event.preventDefault();
                        const response = grecaptcha.getResponse();
                        if(response){
                            form.submit();
                        }else{
                            error.innerHTML="Please check";
                        }
                        });
                    }
                    </script>


                <div class="row2">
                    <div class="col-md-6">
                        <a href="createUser.html">Create User</a> </br>

                        <img src="https://cdn-icons-png.flaticon.com/512/50/50041.png" alt="Create User">
                    </div>
                    <div class="col-md-6">
                        <<a href="hehe.html">enter</a> </br>

                        <img src="https://cdn.shopify.com/s/files/1/0278/0003/products/SPG2605x5FlowerShop.jpg?v=1625506124" alt="Long Flower Store">

                    </div>
                     
                </div>
                     </form>
            </div>
        </div>
    </body>
</html>
