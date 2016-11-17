<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >
<title>Edit product Form</title>
</head>
<body>
<div class="background">
<img alt="" src="<c:url value="/resources/img/342.jpg"/>" id="bg-img"
			class="img-responsive" />
<c:url value="/admin/product/editProduct" var="b"></c:url>
	<form:form method="post" action="${b}" commandName="editProductObj">
		<table>
			<tr>
				<td><form:label path="isbn">ISBN</form:label></td>
				<td><form:input path="isbn" disabled="true" /></td>
				<!-- <td><form:hidden path="isbn" /></td> --> 
			</tr>
			<tr>
				<td><form:label path="brand">BRAND</form:label></td>
				<td><form:input path="brand"></form:input></td>
			</tr>
			
			<tr>
				<td><form:label path="price">PRICE</form:label></td>
				<td><form:input path="price"></form:input></td>
			</tr>
			

			<tr>
				<td><form:label path="category">CATEGORY</form:label></td>
				<td><form:radiobutton path="category.cid" value="1" />Ladies product <form:radiobutton
						path="category.cid" value="2" />Gents product <form:radiobutton
						path="category.cid" value="3" />Wall product</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="EditProduct"></td>
			</tr>
		</table>
	</form:form>
</div>

</body>
</html>