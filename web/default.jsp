<%-- 
    Document   : default
    Created on : Apr 7, 2015, 7:11:22 AM
    Author     : curti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <h1></h1>
        <table border="1" cellpadding="4" cellspacing="4">
        <tr>
            <th>ID</th>
            <th>Code</th>
            <th>Description</th>
            <th>Price</th>
        </tr>
 <c:forEach var="product" items="${requestScope.product}">
        <tr>
            <td>${product.id}</td>
            <td>${product.description}</td>
            <td class="right">${product.priceCurrencyFormat}</td>
            <td><form action="cart" method="post">
                    <input type="hidden" name="productCode" 
                           value="${product.code}">
                    <input type="submit" 
                           value="Add To Cart">
                </form></td>        
        </tr>
        </c:forEach>
        <c:forEach var="product" items="${requestScope.productList}">
            <tr>
                <td>${productId}</td>
                <td>${code}</td>
                <td>${description}}</td>
                <td>${price}</td>
            </tr>
        </c:forEach>
    </table>
 
    <%--For displaying Previous link except for the 1st page --%>
    <c:if test="${requestScope.currentPage != 1}">
        <td><a href="?page=${requestScope.currentPage - 1}">Previous</a></td>
    </c:if>
 
    <%--For displaying Page numbers. 
    The when condition does not display a link for the current page--%>
    <table border="1" cellpadding="5" cellspacing="5">
        <tr>
            <c:forEach begin="1" end="${requestScope.noOfPages}" var="i">
                <c:choose>
                    <c:when test="${requestScope.currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="?page=${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </tr>
    </table>
     
    <%--For displaying Next link --%>
    <c:if test="${requestScope.currentPage lt requestScope.noOfPages}">
        <td><a href="?page=${requestScope.currentPage + 1}">Next</a></td>
    </c:if>
    </body>
</html>
