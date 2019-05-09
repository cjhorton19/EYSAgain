<%-- 
    Document   : listProducts
    Created on : May 8, 2019, 3:33:45 PM
    Author     : curti
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Earn Your Sleep - Shop</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">Earn Your Sleep</h1>
        <div class="list-group">
          <a href="men.jsp" class="list-group-item">Men's T-Shirts
          <span class="sr-only">(current)</span>
          </a>
          <a href="women.jsp" class="list-group-item">Women's T-Shirts</a>
          <a href="accessories.jsp" class="list-group-item">Accessories</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <br> <div class="card h-100">
                <a href="#"><img class="card-img-top" src="images/s1.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W1</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Earn Your Sleep Outta This World Tee - RED</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
             <br> <div class="card h-100">
                 <a href="#"><img class="card-img-top" src="images/s1.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W2</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Chosen Few</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <br> <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s3.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W3</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Made with Aloha tee</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s4.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W4</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Earn Your Sleep Varsity</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s5.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W5</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Earn Your Sleep TM</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s6.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W6</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Matthew 10:28 T-shirt</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>
               <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s7.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W7</a>
                </h4>
                <h5>$20.00</h5>
                <p class="card-text">Smile now sleep later</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s8.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W8</a>
                </h4>
                <h5>$20.00</h5>
                <p class="card-text">Smile now sleep later</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="images/s9.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>W9</a>
                </h4>
                <h5>$25.00</h5>
                <p class="card-text">Orange Antisleep tee</p>
              </div>
              <div class="card-footer">
                <input type="submit" value="Add To Cart">
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright ${currentYear} &copy; EarnYourSleep 
      All rights reserved.</p>
    </div>
    <!-- /.container -->
  </footer>

<<<<<<< HEAD
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
=======
  <!-- Bootstrap core JavaScript -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
>>>>>>> 1a58460a0cb2db221dec5bc2719979ec1015fe2d

</body>

</html>
