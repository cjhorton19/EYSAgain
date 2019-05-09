<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Product Page</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>

        <h1>Product List</h1>
        <div class="col-lg-9">

            <div class="row">
                <c:forEach var="product" items="${products}">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <br> <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="${product.imageURL}" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a>W1</a>
                                </h4>
                                <h5>${product.priceCurrencyFormat}</h5>
                                <p class="card-text"><c:out value='${product.description}' /></p>
                            </div>
                            <div class="card-footer">
                                <form action="cart" method="post">
                                    <input type="hidden" name="productCode" 
                                           value="${product.code}">
                                    <input type="submit" 
                                           value="Add To Cart">
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <table>
            <tr>
                <th>Description</th>
                <th class="right">Price</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td><c:out value='${product.description}' /></td>
                    <td class="right">${product.priceCurrencyFormat}</td>
                    <td><form action="cart" method="post">
                            <input type="hidden" name="productCode" 
                                   value="${product.code}">
                            <input type="submit" 
                                   value="Add To Cart">
                        </form></td>        
                </tr>
            </c:forEach>
        </table>


        <p>&copy; Copyright ${currentYear} Earn Your Sleep &amp; Associates, Inc.
            All rights reserved.</p>
    </body>
</html>