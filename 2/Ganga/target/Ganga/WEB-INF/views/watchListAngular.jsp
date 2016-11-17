<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" />">
</script>
<title>watch list Angular</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div ng-app="myapp">
<div ng-controller="watchController" ng-init="getWatchList()">

<H1 > List of Watches</H1>
Search: <input type="text" ng-model="searchCondition" placeholder="Search Watch">
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0"  class="table table-striped table-hover">
	<thead>
		<tr>
		<th>Image</th>
			<th>ISBN</th>
			<th>BRAND</th>
			<th>CATEGORY NAME</th>
			<th>View/edit/delete</th>
		</tr>
</thead>
<tbody>
<tr ng-repeat="b in watch | filter:searchCondition">

<c:url value="resources/images/{{b.isbn}}.png" var="src"/>
		<td><img src="${src }" style="width: 30%" align="middle"/></td>
		<td>{{b.isbn}}</td>
		<td>{{b.brand}}</td>
		<td>{{b.category.categoryName}}</td>
		<td><a href="getWatchByIsbn/{{b.isbn}}"><span class="glyphicon glyphicon-info-sign"></span></a>
		<security:authorize access="hasRole('ROLE_ADMIN')">
		<a href="admin/delete/{{b.isbn}}"><span class="glyphicon glyphicon-trash"></span></a>
		<a href="admin/watch/editWatch/{{b.isbn}}"><span class="glyphicon glyphicon-edit"></span></a>
		</security:authorize>
</tr>

</tbody>
</table>
</div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>