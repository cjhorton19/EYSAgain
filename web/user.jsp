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
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cart.jsp">Cart</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<!-- begin middle column -->

<section class="cart">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Enter your name and contact information</h1>

<form action="" method=post>
    <p id="required">Required <span class="required">*</span></p>
    
    <label>First Name</label>
    <input type="text" name="firstName"  maxlength=20 
               value="${user.firstName}" required>
    <p class="required">*</p><br>
    
    <label>Last Name</label>
    <input type="text" name="lastName" value="${user.lastName}" required>
    <p class="required">*</p><br>
    
    <label>Email Address</label>
    <input type="email" name="email" value="${user.email}" required>
    <p class="required">*</p><br>
    
    
    <label>Address2</label>
    <input type="text" name="address" value="${user.address}">
    <p class="required">&nbsp;</p><br>
    
    <label>City</label>
    <input type="text" name="city" value="${user.city}" required>
    <p class="required">*</p><br>
    
    <label>State</label>
    <input type="text" name="state" value="${user.state}" required>
    <p class="required">*</p><br>
    
    <label>Zip Code</label>
    <input type="text" name="zip" value="${user.zip}" required>
    <p class="required">*</p><br>
    
    <label>Country</label>
    <input type="text" name="country" value="${user.country}" required> 
    <p class="required">*</p><br>
    
    <label>&nbsp;</label>
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
 