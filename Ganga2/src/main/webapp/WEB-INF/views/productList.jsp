<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%><br>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/business-casual.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<title>Product list</title>
</head>
<body><br><br>

	<div data-ng-app="myapp">
		<div data-ng-controller="productController"
			data-ng-init="getProductList()">

			<h1>List of Products</h1>
			Search: <input type="text" ng-model="searchCondition"
				placeholder="Search products">


			

					<table border="0" class="table  table-hover">

					 	  <thead>
						<tr>
							<th>Image</th>
							<th>ID</th>
							<th>Brand</th>
							<th>PRICE</th>
							<th>CATEGORY NAME</th>
							<th>View/edit/delete</th>
						</tr>
					</thead> 
						<tbody>

							<tr data-ng-repeat="b in product | filter:searchCondition">

								<c:url value="resources/images/{{b.isbn}}.png" var="src" />
								<td><a href="getProductByIsbn/{{b.isbn}}"><img src="${src}" style="width: 30%; align:middle" /></a></td>

								<td><a href="getProductByIsbn/{{b.isbn}}">{{b.isbn}}</a></td>

							<td>	{{b.brand}}</td>
							<td>	{{b.price}}</td>
							<td>	{{b.category.category}}</td>
							<td>	<a href="getProductByIsbn/{{b.isbn}}"> <span
										class="glyphicon glyphicon-info-sign"></span></a> <security:authorize
										access="hasRole('ROLE_ADMIN')">
										<a href="admin/delete/{{b.isbn}}"><span
											class="glyphicon glyphicon-trash"></span></a>
										<a href="admin/product/editProduct/{{b.isbn}}"><span
											class="glyphicon glyphicon-edit"></span></a>
									</security:authorize></td>
							</tr>
						</tbody>

					</table>
					
				</div>
			</div>
		
</body>
</html>