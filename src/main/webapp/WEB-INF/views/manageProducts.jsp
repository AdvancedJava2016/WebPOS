<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="topInclude.jsp"%>
<link rel='stylesheet' href='resources/css/signin.css'>
<title>TV5 Web POS - Admin</title>
</head>
<body>Hello ${ username }!
	<br/><a href="/webpos/cashier">Cashier</a><br/><a href="/webpos/products">Products</a><br/><a href="/webpos">Admin</a>


	<div class="container">
		<form class="form-signin" method="POST" action="addProduct">
			<h2 class="form-signin-heading">Add new products</h2>
			<label for="inputFirstName" class="sr-only">Product Name</label> <input
				type="text" id="pName" class="form-control"
				placeholder="Product Name" name="pName" required="" autofocus="">
			<label for="inputQuantity" class="sr-only">Quantity</label> <input
				type="number" id="quantity" class="form-control"
				placeholder="Quantity" name="quantity" required="" autofocus="">
				<label for="inputPrice" class="sr-only">Price</label> <input
				type="number" id="price" class="form-control"
				placeholder="Price" name="price" required="" autofocus="">
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Add Product</button>
		</form>
	</div>
	<div id="productList" class="container">
		<table>
			<thead>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Qty</th>
					<th>Price</th>
					<th>Edit huhu</th>
					<th>Delete huhu</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ productList }" var="p">
					<tr>
						<td>${ p.id }</td>
						<td>${ p.pName }</td>
						<td>${ p.quantity }</td>
						<td>${ p.price }</td>
						<td><button type="button" class="btn btn-info btn-lg" onClick="editProduct('${p.id}', '${ p.pName }','${ p.quantity }','${ p.price }')">Edit</button></td>
						<td><button type="button" class="btn btn-info btn-lg" onClick="deleteProduct('${p.id}', '${ p.pName }','${ p.quantity }','${ p.price }')">delete</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div id="editDeleteProductModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 id="editDeleteProductModalHeader" class="modal-title">Edit/Delete Product</h4>
				</div>
				<div class="modal-body">
					<form id="editDeleteProductForm" class="form-signin" method="POST" action="editDeleteProduct">
						<input type="hidden" id="editDeleteId" class="form-control"name="id">
						<label for="editDeleteProductName" class="sr-only">Product name</label>
						<input type="text" id="editDeleteProductName" class="form-control" placeholder="Product name" name="pName" required="" autofocus=""> 
						<label for="editDeletePrice" class="sr-only">Price</label> 
						<input type="text" id="editDeletePrice" class="form-control" placeholder="Price" name="price" required="" autofocus="">
						<label for="editDeleteQuantity" class="sr-only">Quantity</label>
						<input type="text" id="editDeleteQuantity" class="form-control"
							placeholder="text" name="quantity" required="">
						<button id="btnEditDeleteProductSubmit" class="btn btn-lg btn-primary btn-block" type="submit">EditDelete</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</body>
<%@ include file="bottomInclude.jsp" %>
<script type="text/javascript" src="resources/js/user.js"></script>
</html>