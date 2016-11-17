<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/business-casual.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>" >

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  
<title>Insert title here</title>

</head>
<body>
	<br><br>
	<div class="brand" style="color: #00ffff">Ganga Watches</div>
	<div class="address-bar">3481 Melrose Place | Beverly Hills, CA 90210 | 123.456.7890</div>
    <div class="container" id="bg-img">

        <div class="row">
            <div class="box" >
                <div class="col-lg-12 text-center" >
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="<c:url value="/resources/img/BGB3.jpg"/>" alt="">
                                <div class="carousel-caption">
                                <h3>The atmosphere </h3>
                                <p>Time is what you make of it </p>
                                </div>
                                
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="<c:url value="/resources/img/BGB6.jpg"/>" alt="">
                                <div class="carousel-caption">
                                <h3>Chania</h3><br>
                                <p>Time to celebrate (for Parsifal collections)<br>
                                   Time to dream (for Don Giovanni collections)<br>
                                   Time to create (for Othello collections)</p></div>
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="<c:url value="/resources/img/BGB5.jpg"/>" alt="">
                                <div class="carousel-caption">
                                <h3>Chania</h3><br>
                                <p>The atmosphere in Chania has a touch of Florence and Venice.</p></div>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <h2 class="brand-before">
                        <small>Welcome to</small>
                    </h2>
                    <h1 class="brand-name">Ganga Watches</h1>
                    <hr class="tagline-divider">
                    <h2>
                        <small>
                            <strong>Stylist</strong> And <strong>Branded</strong>
                        </small>
                    </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Online Shopping
                        <strong>Watches</strong>
                    </h2>
                    <hr>
                    <img class="img-responsive img-border img-left" src="<c:url value="/resources/img/LRolex4.jpg"/>" alt="">
                    <hr class="visible-xs">
                    <p>The boxes used in this template are nested inbetween a normal productes row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.</p>
                    <p>A huge thanks  for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                </div>
            </div>
        </div>

        </div>
        <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
	

</body>
</html>