<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Cart</title>

<link rel="stylesheet" type="text/css" href="resources/js/semantic.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/semantic.js"></script>
<script src="resources/js/user.js"></script>

<style>
</style>
</head>

<body style="background-color: #ebebeb;">
	<div class="ui inverted menu">
		<div class="right menu">
			<a class="item" href="products"><i class="cubes icon"></i>Products</a> <a
				class="active purple item" href="home"><i class="cart icon"></i>Cart</a> <a
				class="item" href="logout">Log Out</a>
		</div>
	</div>
	<div class="ui grid very padded relaxed stackable grid">
		<div class="eleven wide column" style="">
			<h3 class="ui center aligned icon header">
				<i class="circular purple inverted cart icon"></i>
			</h3>
			<table class="ui black fixed padded very piled raised celled table">
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
				<tfoot>
					<tr>
						<th colspan="2"><b>TOTAL:</b></th>
						<th colspan="1"><b>P 500,000.00</b></th>
					</tr>

				</tfoot>
			</table>
		</div>
		<div class="ui vertical divider"></div>
		<div class="five wide column">
			<div style="width: 80%;"
				class="ui piled very padded text container segment">
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
				<div class="ui left action input fluid">
					<f:form modelAttribute="cart" action="checkout.htm" method="POST" class="form-signin">
			<label for="checkout" class="sr-only">CHECKOUT</label> 				
			<input class="btn btn-lg btn-primary btn-block" id ="inSubmit" type="submit" value= "Checkout"/>
		</f:form>
					<input type="text" disabled>
				</div>
			</div>
		</div>
</body>
<script>
	$('.ui.dropdown').dropdown();

	function editUser() {
		$('#edit').modal('show');
		$('#edit').modal({
			closable : false
		})
	}
</script>
</html>