<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" media="screen">
    <link href="<c:url value="css/bootstrap-theme.min.css"/>" rel="stylesheet" media="screen">
    <link href="css/my-styles.css" rel="stylesheet" media="screen">
<title>header page</title>

  
</head>
<body>
  <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
<div class="container-fluid">
 <div class="navbar-header page-scroll">
<!--<h3 class="chiller"><span class="glyphicon glyphicon-grain"></span>GANGA<span class="glyphicon glyphicon-grain"></span></h3>
 <img alt="" src="<c:url value="/resources/img/g.jpg"/>" /> -->
<ul class="nav navbar-nav">

<li><a href="<c:url value="/home" />"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="<c:url value="/about" />"><span class="glyphicon glyphicon-user"></span>About us</a></li>

<!--  User has logged in  -->
		<c:if test="${pageContext.request.userPrincipal.name!=null}">
		<security:authorize access="hasRole('ROLE_ADMIN')">

<li><a href="<c:url value="admin/product/addProduct" />">Add New Product</a></li>
</security:authorize>
<li><a href="<c:url value="/productListAngular" />">Product</a></li>
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href="<c:url value="/cart/getCartId" />">Cart<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			</security:authorize>

<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>

</c:if>

		<c:if test="${pageContext.request.userPrincipal.name==null}">
		<li class="nav navbar-nav navbar-right"><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li class="nav navbar-nav navbar-right"><a href="<c:url value="/customer/register"></c:url>">Register</a>
		</c:if>
</ul>

</div></div></nav>
</body>
</html>
