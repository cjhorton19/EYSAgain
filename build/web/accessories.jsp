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
        <br>
        <!-- Navigation -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

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

            </nav>
        <br>
        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-3">

                    <h1 class="my-4">Earn Your Sleep - Accessories</h1>
                    <div class="list-group">
                        <a href="men.jsp" class="list-group-item">Men's T-Shirts
                            <span class="sr-only">(current)</span>
                        </a>
                        <a href="women.jsp" class="list-group-item">Women's T-Shirts</a>
                        <a href="accessories.jsp" class="list-group-item">Accessories</a>
                    </div>

                </div>
                <div class="col-lg-9">

                    <div class="row">
                        <c:forEach var="product" items="${products}">
                            <div class="col-lg-4 col-md-6 mb-4">
                                <br> <div class="card h-100">
                                    <a href="#"><img class="card-img-top" src="${product.imageURL}" alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a>${product.description}</a>
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

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>