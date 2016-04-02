<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
		<f:form modelAttribute="cart" action="addcart.htm" method="POST" class="form-signin">
			<h2 class="form-signin-heading">Point of Sale</h2>
			<label for="prodName" class="sr-only">Product Name</label> 
			<input type="hidden" id="price" class="form-control"name="price">
			<select class="form-control" name="inputProduct" id="inputProduct" onchange="onSelect(),calculatePrice()" >
			<c:forEach items="${ productList }" var="p">	
				<option value="${p.quantity}|${p.price}|${ p.pName }|${ p.id }">${ p.pName }</option>
				</c:forEach>
			</select>
			
			<label for="quantity" class="sr-only">Quantity</label> 
				<select id="quantity" class="form-control"onchange="calculatePrice()"  ></select>
				<label for="inputPrice" class="sr-only">Price</label> 
				<input readonly  type="text" id="inputPrice" class="form-control"
				placeholder="Price" name="price" required="" autofocus="" >
		<f:input path="ID" id="inID" hidden="true"/>
		 <f:input path="name" id="inName" hidden="true"/> 
		<f:input path="price" id="inPrice" hidden="true"/> 
		<f:input path="quantity" id="inQuantity" hidden="true"/>
				
			<input class="btn btn-lg btn-primary btn-block" id ="inSubmit" type="submit" value= "Add to cart"/>
		</f:form>
		
		
			<input path="money" id="money" />
		<input path="change" id="change" /> 
		<f:form modelAttribute="cart" action="checkout.htm" method="POST" class="form-signin">
			<label for="checkout" class="sr-only">CHECKOUT</label> 				
			<input class="btn btn-lg btn-primary btn-block" id ="inSubmit" type="submit" value= "Checkout"/>
		</f:form>
		
		
	</div>
	<div id="productList" class="container">
		<table>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Qty</th>
					<th>Price</th>
					<th>Total </th>
					<th>Delete huhu</th>
				</tr>
				<c:forEach items='<%= request.getSession().getAttribute("cart") %>' var = "c">
					<tr>
					<td>${c.ID }<td>
					<td>${c.name }<td>
					<td>${c.price }<td>
					<td>${c.quantity }<td>
					<td>total: ${c.price * c.quantity }<td>
					<td> <a href="./remove.htm?id= ${c.ID }" onClick="return confirm('Are you sure?')"> 
							Remove</a>
					</td>
					
					</tr>
				</c:forEach>
		</table>
			Super Total: <%=request.getSession().getAttribute("total") %>
	</div>
	

</body>
<%@ include file="bottomInclude.jsp" %>
<script type="text/javascript" src="resources/js/user.js"></script>
<script src="resources/js/jquery-2.2.1.js" type="text/javascript"></script>



</html>