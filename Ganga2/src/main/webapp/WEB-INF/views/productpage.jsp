<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https:ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"/>"></script>
<title>product page</title>
</head>
<body>
<div class="from-group text-center">
	<div id="bg"></div>
	<form action="">
	<div data-ng-app="myapp">
		<c:url var="url" value="/resources/images/${isbn}.png"></c:url>
		<img src="${url }" style="width: 40%" align="middle" /><br> 
		ID: ${product.isbn } <br>
	    TITLE :${product.brand } <br>
	     Price :${product.price } <br>
		<c:url value="/cart/add/${product.isbn }" var="url"></c:url>

		<div data-ng-controller="productController">
             
		  	<security:authorize access="hasRole('ROLE_USER')">
		
				<a href="#" data-ng-click="addToCart(${product.isbn})"
					class="btn btn-info btn-lg"> <span
					class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</a>
			</security:authorize>
			
		
		<a href="<c:url value="/productListAngular " > </c:url>" class="btn btn-info btn-lg"> Go Back </a></div>
	</div></form>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>
	</div>
</body>
</html>