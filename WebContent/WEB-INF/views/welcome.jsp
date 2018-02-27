<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hi!
${specificItem }

<br>
<form action="searchbyproduct" method="get">
<input type="text" name="product">
<input type="submit" value="Search By Product">
</form>

<h1>Add Item</h1> 
<form action="addproduct" method="post">
Code: <input type="text" name="code" required>
Description: <input type="text" name="description">
<!-- these additional attributes allow us to take in a double variable -->
List Price <input type="number" min="1" step="any" name="listprice">
<input type="submit" value="Add Product">
</form>


	<table border="1">
		<c:forEach var="myVar" items="${pList}">
		<tr>
			<td>${myVar.productID}</td>
			<td>${myVar.code}</td>
			<td>${myVar.description}</td>
			<td>${myVar.listPrice}</td>
			<td><a href="delete?id=${myVar.productID}">Delete</a>
			<td><a href="update?id=${myVar.productID}">Update</a>
		
		</tr>
		
		
		</c:forEach>
		
	</table>
</body>
</html>