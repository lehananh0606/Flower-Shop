<%-- 
    Document   : shopping
    Created on : Mar 1, 2023, 11:29:35 AM
    Author     : MSI GF63
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Long Flower Farm</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            div{
                background-image: url('https://img4.thuthuatphanmem.vn/uploads/2020/07/05/background-hoa-hong_045205487.jpg')
            }
            h1{
                text-align: center;
                font-family: fantasy;
                text-align: center;
                box-shadow: 0px 0px 8px black;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                margin: 0 280px;
                background-color: goldenrod;
                font-size: 35px;
            }
            .row{
                text-align: center;
                justify-content: center;
                font-family: cursive;
                font-size: 18px;
            }
            .col-md-4{
                display: flex;
                margin: 50px 60px;
                text-align: center;
                box-shadow: 0px 0px 40px whitesmoke;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                background-color: blanchedalmond;
            }
            .col-md-1{
                margin: 50px 50px;
                text-align: center;
                box-shadow: 0px 0px 40px whitesmoke;       
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                background-color: blanchedalmond;
            }
            .col-md-12{
                text-align: center;
                font-family: fantasy;
                font-size: 30px;
            }
            .row2{
                width: 100%;
                display: flex;
                justify-content: space-evenly;
                align-self: center;
                font-size: 30px;
               
            }

            
            .col-md-6{
                box-shadow: 0px 0px 8px black;
                text-align: center;
                border-radius: 5px;
                margin: 0 100px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                 background-color: honeydew;
            }
            .row2 img{
                width:40%;
            }
        </style>
    </head>

    <body style="background-color: #E9E9E9;">
        <div>
            <div  class="container">
                <div >
                    <h1 > Welcome to Flower Store </h1>
                </div>
                <div class="row">
                    <form action="MainController" method="POST"> 
                        <div class="col-md-4">
                            <select name = "cmbProduct">
                                <option value="F001-Red Rose-500">Red Rose- 500$</option>
                                <option value="F002-Pink Orchird-600">Pink Orchird- 600$</option>
                                <option value="F003-Tiny Bloss-40">Tiny Bloss- 40$</option>
                                <option value="F004-Sun Flower-1000">Sun Flower- 1000$</option>           
                            </select>
                        </div>
                        <div class="col-md-1">
                            <select name="cmbQuantity">
                                <option value="1">1 bo</option>
                                <option value="2">2 bo</option>
                                <option value="3">3 bo</option>
                                <option value="4">4 bo</option>
                                <option value="5">5 bo</option>
                                <option value="10">10 bo</option>
                            </select>
                        </div>
                        <div class="col-md-1">
                            <input type="submit" name="action" value="Add"/>
                        </div>
                        <div class="col-md-1">
                            <input type="submit" name="action" value="View"/>
                        </div>
                    </form>

                </div>
            </div>
            <div class="col-md-12">
                ${requestScope.MESSAGE}
            </div>
            <div class="row2">
                <div class="col-md-6">
                    <a href="createUser.html">Create User</a></br>
                     <img src="https://cdn-icons-png.flaticon.com/512/50/50041.png" alt="Create User">
                </div>
                <div class="col-md-6">
                    <a href="shopping.html">Long Flower Store</a></br>
                    <img src="https://cdn.shopify.com/s/files/1/0278/0003/products/SPG2605x5FlowerShop.jpg?v=1625506124" alt="Long Flower Store">
                </div>
            </div>
        </div>
    </body>
</html>
