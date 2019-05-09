<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Earn Your Sleep - Shop</title>

  <!-- Bootstrap core CSS -->
  <link href="styles/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="styles/shop-homepage.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="listProducts.jsp">Home
              
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cart.jsp">Cart</a>
            <span class="sr-only">(current)</span>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<section class="cart">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Your invoice</h1>

<table>
  <tr>
    <th>Date</th>
    <td>${invoice.invoiceDate}</td>
    <td></td>
  </tr>
  <tr>
      <th class="top">Ship To</th>
    <td>${user.addressHTMLFormat}</td>
    <td></td>
  </tr>
  <tr>
      <td colspan="3"><hr></td>
  </tr>
  <tr>
      <th>Qty</th>
      <th>Description</th>
      <th>Price</th>
  </tr>

  <c:forEach var="item" items="${invoice.lineItems}">
  <tr>
    <td>${item.quantity}</td>
    <td>${item.product.description}</td>
    <td>${item.totalCurrencyFormat}</td>
  </tr>
  </c:forEach>

  <tr>
    <th>Total:</th>
    <td></td>
    <td>${invoice.invoiceTotalCurrencyFormat}</td>
  </tr>
</table>

<form action="<c:url value='/order/displayUser' />" method="post" id="float_left">
     <input type="submit" value="Edit Address">
</form>

<form action="<c:url value='/order/displayCreditCard' />" method="post">
     <input type="submit" value="Continue">
</form>

</section>

<!-- end middle column -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright ${currentYear} &copy; EarnYourSleep 
      All rights reserved.</p>
    </div>
    <!-- /.container -->
  </footer>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>

</html>
