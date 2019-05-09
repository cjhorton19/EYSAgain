<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product Page</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

    <h1>Product List</h1>
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


<<<<<<< HEAD:build/web/products.jsp
    <p>&copy; Copyright ${currentYear} Earn Your Sleep &amp; Associates, Inc.
=======
    <p>&copy; Copyright ${currentYear} &copy; EarnYourSleep 
>>>>>>> 1a58460a0cb2db221dec5bc2719979ec1015fe2d:build/web/index.jsp
        All rights reserved.</p>
</body>
</html>