<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https:ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"/>"></script>
<title>watch page</title>
</head>
<body>
	<span class="glyphicon glyphicon-shopping-cart"></span>
	<div data-ng-app="myapp">
		<c:url var="url" value="/resources/images/${isbn}.png"></c:url>
		<img src="${url }" style="width: 30%" align="middle" /><br> ISBN
		: ${watch.isbn } <br> TITLE :${watch.brand } <br> Price :
		${watch.price } <br>
		<c:url value="/cart/add/${watch.isbn }" var="url"></c:url>

		<div data-ng-controller="watchController">
             
		  	<security:authorize access="hasRole('ROLE_USER')">
		
				<a href="#" data-ng-click="addToCart(${watch.isbn})"
					class="btn btn-info btn-lg"> <span
					class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</a>
			</security:authorize>
			<br /> <br /> <br /> <br />
		</div>
		<a href="<c:url value="/watchListAngular " > </c:url>"> Go Back </a>
	</div>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>
</body>
</html>