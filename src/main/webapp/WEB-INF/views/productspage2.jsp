   
<!-- 
/* -------------------------------------------------------------------------
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Copyright (C) Moneytor
 * -------------------------------------------------------------------------
 -->
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<a class="hddt"> POS </a>
			</div>	
		</div>

		</div>
		<div id="hder2">
		<div class="ui container">
			<div class="ui inverted segment">
			  <div class="ui inverted secondary pointing menu">
				<a class="active item" href="home">
				  Cart
				</a>
				<a class="item" href="products">
				  Products
				</a>
				<a class="item" href="logout">
				  Logout
				</a>
			  </div>
			</div>

			</div>	
		</div>
		</div>
		<!--end of to be included-->		<!--modal start-->
<div id="addCartmodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular yellow edit icon"
			style="margin-right: 10px;"></i>Add To Cart</div>
		
		<div class="content">
		
		<f:form modelAttribute="cart" action="addcart.htm" method="POST" class="ui form">
			<h2 class="form-signin-heading">Point of Sale</h2>
			<div class="inline fields">
						<div class="two wide field">
							<label for="prodName" class="sr-only">Product Name</label> 
						</div>
						<div class="fourteen wide field">
				            <input type="hidden" id="price" class="form-control"name="price">
			<select class="form-control" name="inputProduct" id="inputProduct" onchange="onSelect(),calculatePrice()" >
			<c:forEach items="${ productList }" var="p">	
				<option value="${p.quantity}|${p.price}|${ p.pName }|${ p.id }">${ p.pName }</option>
				</c:forEach>
			</select>
						</div>
				</div>
			
			<div class="inline fields">
						<div class="two wide field">
							<label for="quantity" class="sr-only">Quantity</label> 
						</div>
						<div class="fourteen wide field">
				            <select id="quantity" class="form-control"onchange="calculatePrice()"  ></select>
						</div>
				</div>
			 
				<div class="inline fields">
						<div class="two wide field">
							<label for="inputPrice" class="sr-only">Price</label> 
						</div>
						<div class="fourteen wide field">
				            <input readonly  type="text" id="inputPrice" class="form-control"
				placeholder="Price" name="price" required="" autofocus="" >
						</div>
				</div>
				 
				
		<f:input path="ID" id="inID" hidden="true"/>
		 <f:input path="name" id="inName" hidden="true"/> 
		<f:input path="price" id="inPrice" hidden="true"/> 
		<f:input path="quantity" id="inQuantity" hidden="true"/>
				
			<button type="submit" class="ui yellow labeled icon button" id="inSubmit" value= "Add to cart"><i class="remove circle outline icon"></i>Add to Cart </button>
			
		</f:form> <br>
		<button type="button" class="ui gray labeled icon button" id="cancelCartbtn"><i class="remove circle outline icon"></i>Cancel </button>
			
		</div>
</div>

		<!--modal end-->
	<div class="ui container">
		<div class="ui middle aligned center aligned grid">
		<a class="ui large yellow submit button aud" id="addCartbtn"><i class="add icon"></i></a>
	</div>
	</div>
	<div class="ui top aligned center aligned grid">
			<div class="column column2">
				<a class="hddst"> CART </a>
				<hr/>
				
				
				<table class="ui striped yellow fixed single line celled table">
				<thead>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Qty</th>
					<th>Price</th>
					<th>Total </th>
					<th> </th>
				</tr>
				</thead>
				<tbody>
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
				</tbody>
		</table>
			 Total: <%=request.getSession().getAttribute("total") %>
				
					<f:form modelAttribute="cart" action="checkout.htm" method="POST" class="form-signin">
						
			<input class="ui yellow labeled button" id ="inSubmit" type="submit" value= "Checkout"/>
		</f:form>
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
			<a></a>
		</div>

	</footer>
</html>
