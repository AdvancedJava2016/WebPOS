   
<!-- 
/* -------------------------------------------------------------------------
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Copyright (C) Moneytor
 * -------------------------------------------------------------------------
 -->
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>

  		<!-- Standard Meta -->
  		<meta charset="utf-8" />
  		<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
		<META HTTP-EQUIV="EXPIRES" CONTENT="01 Jan 1970 00:00:00 GMT">
		<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
  		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	
	  	<!-- Site Properities -->
	  	<title>Products Page</title>
		
	  	<link rel="icon" type="image/png" href="" />
		<link rel="stylesheet" href="resources/css/dist/semantic.css">
		<link rel="stylesheet" href="resources/css/normal.css">
		<link rel="stylesheet" href="resources/css/dist/semantic.min.css">


		

	</head>
	<body>
		<!--to be included-->
		<div id="hder">
		<div class="ui container">
			<div class="ui middle aligned center aligned grid">
				<a class="hddt"> WEBPOS </a>
			</div>	
		</div>

		</div>
		<div id="hder2">
		<div class="ui container">
			<div class="ui grid middle aligned center aligned">
				<a class="navie"> Announcements </a>
				<a class="navie" href="products" > Products </a>
				<a class="navie" href="home" > Cart </a>
				<a class="navie" href="logout" id="logoutbtn"> Log Out </a>

			</div>	
		</div>
		</div>
		<!--end of to be included-->
		<!--modal start-->
<div id="addCartmodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular black edit icon"
			style="margin-right: 10px;"></i>Add To Cart</div>
		
		<div class="content">
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
		
		<f:form modelAttribute="cart" action="checkout.htm" method="POST" class="form-signin">
			<label for="checkout" class="sr-only">CHECKOUT</label> 				
			<input class="btn btn-lg btn-primary btn-block" id ="inSubmit" type="submit" value= "Checkout"/>
		</f:form>
		</div>
</div>

		<!--modal end-->
	<div class="ui container">
		<div class="ui middle aligned center aligned grid">
		<a class="ui large black submit button aud" id="addCartbtn"> Add Product to Cart</a>
	</div>
	</div>
	<div class="ui top aligned center aligned grid">
			<div class="column column2">
				<a class="hddst"> CART </a>
				<hr/>
					<table class="ui fixed single line celled table">
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
			Total: <%=request.getSession().getAttribute("total") %>
			<div class="labelnames">
							<b>Total Price: </b>
							&nbsp &nbsp &nbsp
							<label>PHP 0.00</label>
							<br/>
							&nbsp &nbsp &nbsp &nbsp
							<b>Money:</b>
							&nbsp &nbsp &nbsp
							<label>PHP 0.00 </label>
							<br/>
							&nbsp &nbsp &nbsp 
							<b>Change:</b>
							&nbsp &nbsp &nbsp
							<label>PHP 0.00</label>
				</div>
			</div>
			
		</div>
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery-ui.min.js"></script>
		<script src="resources/css/dist/semantic.js"></script>
		<script src="resources/css/dist/semantic.min.js"></script>
		<script src="resources/js/index.js"></script>
		<script src="resources/js/user.js"></script>
	</body>
	<footer>		
		<div class="ui middle aligned center aligned grid">
			<a>copyright SY:2015-2016 second semester Advance Java</a>
		</div>

	</footer>
</html>
