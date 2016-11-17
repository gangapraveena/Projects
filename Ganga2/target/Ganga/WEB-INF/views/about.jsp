<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/css1.css"/>" >
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
<div id="bg"> </div>
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
                    
                </div>
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