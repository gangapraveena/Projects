<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/css1.css"/>" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="background">
		<img alt="" src="<c:url value="/resources/img/BGB.jpg"/>" id="bg-img"
			class="img-responsive" />
		<div id="content">
			<div class="container">
				<div class="vertical-align">
					<h1>
						<a href="http://localhost:8014/Ganga/home">Ganga</a> 
					</h1>
					
				</div>

			</div>
		</div>
	</div>
</body>
</html>
