<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="topInclude.jsp"%>
<link rel='stylesheet' href='resources/css/signin.css'>
<title>IWC Web POS - Admin</title>
</head>
<body>

	<div class="container">
		<form class="form-signin" method="POST" action="addProduct">
			<h2 class="form-signin-heading">Add new products</h2>
			<label for="inputFirstName" class="sr-only">Product Name</label> <input
				type="text" id="inputProduct" class="form-control"
				placeholder="Product Name" name="productName" required="" autofocus="">
			<label for="inputQuantity" class="sr-only">Quantity</label> <input
				type="number" id="inputQuantity" class="form-control"
				placeholder="Quantity" name="quanitity" required="" autofocus="">
				<label for="inputPrice" class="sr-only">Price</label> <input
				type="number" id="inputPrice" class="form-control"
				placeholder="Price" name="price" required="" autofocus="">
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Add Product</button>
		</form>
	</div>
	<div id="productList" class="container">
		<table>
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Qty</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ productList }" var="p">
					<tr>
						<td>${ p }</td>
						<td><button onCLick="localhost:8080/webpos/deleteUser/${u.id}">delete</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>