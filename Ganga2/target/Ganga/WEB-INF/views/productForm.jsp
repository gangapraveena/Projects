<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" > -->
<link rel="stylesheet" href="<c:url value="/resources/css/business-casual.css"/>" >
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >

<title>Insert title here</title>
</head>
<body>
<div class="background">
<img alt="" src="<c:url value="/resources/img/342.jpg"/>" id="bg-img"
			class="img-responsive" />
<c:url value="addProduct" var="b"></c:url>
	<form:form method="post" action="${b}" commandName="productFormObj" enctype="multipart/form-data" class="form-horizontal">
		<table >
		
			<tr>
				<td><form:label path="isbn"></form:label></td>
				<!--  <td><form:input path="isbn" disabled="true" /></td>-->
			<tr>
				<td><form:label path="brand">TITLE</form:label></td>
				<td><form:input path="brand" />
				<form:errors path="brand"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="price">PRICE</form:label></td>
				<td><form:input path="price"  />
				<form:errors path=""></form:errors></td>
			</tr>
			
			
			<tr>
				<td><form:label path="category">CATEGORY</form:label></td>
				<td><form:radiobutton path="category.cid" value="1" />Ladies watches <form:radiobutton
						path="category.cid" value="2" />Gents watches <form:radiobutton
						path="category.cid" value="3" />Wall clock</td>
			</tr>
			<tr><td><form:input type="file" path="productImage"/></td></tr>
			<tr>
				<td colspan="2s"><input type="submit" value="AddProduct" ></td>
			</tr>

		</table>

	</form:form>
</div>
</body>
</html>