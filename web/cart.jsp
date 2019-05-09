<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   
<head>
    <meta charset="utf-8">
    <title>Earn Your Sleep - Cart</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <h1>Your cart</h1>
    <table>
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>
      
      <tr>
        <c:forEach var="item" items="${cart.items}">
        <td><c:out value='${item.product.description}'/></td>
        <td>${item.product.priceCurrencyFormat}</td>
        <td>${item.totalCurrencyFormat}</td>
        <td>
            <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.code}'/>">
                <input type="hidden" name="quantity" value="0">
                <input type="submit" value="Remove Item">
            </form>
        </td>
        
      </tr>
      </c:forEach>
    </table>

        <p><b>To change the quantity</b>, enter the new quantity 
            and click on the Update button.</p>

        <form action="" method="post">
            <input type="hidden" name="action" value="shop">
            <input type="submit" value="Continue Shopping">
        </form>

        <form action="" method="post">
            <input type="hidden" name="action" value="userinfo">
            <input type="submit" value="Checkout">
        </form>

    <p>&copy; Copyright ${currentYear} &copy; EarnYourSleep 
        All rights reserved.</p>

    </body>
</html>