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
		<form class="form-signin" method="" action="">
			<h2 class="form-signin-heading">Point of Sale</h2>
			<label for="inputFirstName" class="sr-only">Product Name</label> 
			<input type="hidden" id="price" class="form-control"name="price">
			<select class="form-control" name="inputProduct" id="inputProduct" onchange="onSelect(),calculatePrice()" >
			<c:forEach items="${ productList }" var="p">	
				<option value="${p.quantity}|${p.price}">${ p.pName }</option>
				</c:forEach>
			</select>
			
			<label for="quantity" class="sr-only">Quantity</label> 
				<select id="quantity" class="form-control"onchange="calculatePrice()"  ></select>
				
				<label for="inputPrice" class="sr-only">Price</label> 
				<input readonly  type="text" id="inputPrice" class="form-control"
				placeholder="Price" name="price" required="" autofocus="" >
				
				
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Add to cart</button>
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
				<c:forEach items="" var="p">
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><button type="button" class="btn btn-info btn-lg" onClick="editProduct('${p.id}', '${ p.pName }','${ p.quantity }','${ p.price }')">Edit</button></td>
						<td><button type="button" class="btn btn-info btn-lg" onClick="deleteProduct('${p.id}', '${ p.pName }','${ p.quantity }','${ p.price }')">delete</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	

</body>
<%@ include file="bottomInclude.jsp" %>
<script type="text/javascript" src="resources/js/user.js"></script>
<script src="resources/js/jquery-2.2.1.js" type="text/javascript"></script>



</html>