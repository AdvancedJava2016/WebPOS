<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<title>Products</title>

<link rel="stylesheet" type="text/css" href="resources/js/semantic.css">
<link rel="stylesheet" type="text/css" href="resources/js/custom.css">

<style>
</style>
</head>

<body>
	<div class="ui blue inverted menu">
		<h4 class="green item" style="margin-bottom: 0px !important;">
			<b>WEBPOS</b>
		</h4>
		<div class="right menu">
		<a class="item" href="products" ><i class="cubes icon"></i>Products</a> <a
				class="item" href="home" ><i class="cart icon"></i>Cart</a>
			<a class="item" href="logout">Log Out</a>
		</div>
	</div>
	<div class="ui grid padded">

		<!-- TOP BUTTONS -->
		<div>
			<div class="ui blue labeled icon pointing menu">
				<a id="prb" class="active item"><i class="cubes icon"
					onclick="showProducts()"></i> Products</a> <a id="crb" class="item"><i
					class="cart icon" onclick="showCart()"></i> Cart</a>
				<div class="right menu"
					style="position: absolute !important; right: 15px;">
					<a id="addPrB" class="item"><i class="add icon"
						onclick="addProd()"></i> Add New Product</a>
				</div>
			</div>
		</div>

		<!-- MANAGE PRODUCTS -->
		<div id="products">
			<table class="ui black fixed padded very piled raised celled table"
				style="margin-top: 15px;">
				<thead>
					<tr>
						<th>Product Name</th>
						<th>Quantity</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ productList }" var="p">
							<tr>
								<td>${ p.pName }</td>
								<td>${ p.quantity }</td>
								<td>${ p.price }</td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<!-- CART -->
		<div id="cart" hidden>
			<table class="ui black fixed padded very piled raised celled table"
				style="margin-top: 15px;">
				<thead>
					<tr>
						<th>Product Name</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Total Price</th>
						<th>Remove</th>
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
							<td> <a href="./remove.htm?id= ${c.ID }" onClick="return confirm('Are you sure?')"> </td>
						</tr>
				</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="2"><b>TOTAL:</b></th>
						<th colspan="1"><b><%=request.getSession().getAttribute("total") %></b></th>
					</tr>

				</tfoot>
			</table>
			
			<!-- ADD ITEMS TO CART -->
			<div class="ui container segment"
				style="padding: 15px !important; width:70%">
				<div class="ui form">
                <f:form modelAttribute="cart" action="addcart.htm" method="POST">
					<div class="four fields">
						<div class="field">
							<label>Product Name</label>
                            <input type="hidden" id="price" class="form-control"name="price">
			                 <select class="form-control" name="inputProduct" id="inputProduct" onchange="onSelect(),calculatePrice()" >
                             <c:forEach items="${ productList }" var="p">	
                            <option value="${p.quantity}|${p.price}|${ p.pName }|${ p.id }">${ p.pName }</option>
                            </c:forEach>
                        </select>
                        
						</div>
						<div class="field">
							<label>Quantity</label>
                            <select id="quantity" class="form-control"onchange="calculatePrice()"  ></select>
						</div>
						<div class="field">
							<label>Price</label>
                            <input readonly  type="text" id="inputPrice" class="form-control"
				placeholder="Price" name="price" required="" autofocus="" >
                <f:input path="ID" id="inID" hidden="true"/>
		 <f:input path="name" id="inName" hidden="true"/> 
		<f:input path="price" id="inPrice" hidden="true"/> 
		<f:input path="quantity" id="inQuantity" hidden="true"/>
						</div>
						<div class="field">
							<input class="btn btn-lg btn-primary btn-block" id ="inSubmit" type="submit" value= "Add to cart"/>
								<i class="add to cart icon"></i>Add To Cart
							
							
                                </f:form>
								<f:form modelAttribute="cart" action="checkout.htm" method="POST" class="form-signin">
			<label for="checkout" class="sr-only">CHECKOUT</label> 				
			<input class="btn btn-lg btn-primary btn-block" id ="inSubmit" type="submit" value= "Checkout"/>
		</f:form>
		
							
						</div>
					</div>
				</div>
			</div>
			<!-- END ADD TO CART MODAL -->
			
			<!-- CHECKOUT MODAL -->
			<div id="checkout" class="ui basic small modal">
				<div style="width: 50%"
					class="ui piled very padded text container segment">
					<form class="ui form">
						<div class="field">
							<label>Cash</label> <input type="text" id="pName">
						</div>
						<div class="field">
							<label>Change</label> <input type="number" disabled>
						</div>
						<button class="ui blue fluid center aligned labeled icon button"
							type="submit">
							<i class="add icon"></i>Checkout
						</button>
					</form>
				</div>
			</div>
			<!-- END CHECKOUT MODAL -->
			
		</div>
	</div>

	<!-- ADD PRODUCT MODAL -->
	<div id="addProd" class="ui basic small modal">
		<div style="width: 50%"
			class="ui piled very padded text container segment">
			<form class="ui form" method="POST" action="addProduct">
				<div class="field">
					<label>Product Name</label> <input type="text" id="pName"
						name="pName">
				</div>
				<div class="field">
					<label>Quantity</label> <input type="number" name="quantity">
				</div>
				<div class="field">
					<label>Price</label> <input type="text" name="price">
				</div>
				<button class="ui blue fluid center aligned labeled icon button"
					type="submit">
					<i class="add icon"></i>Add New Product
				</button>
			</form>
		</div>
	</div>
</body>

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/semantic.js"></script>
<script src="resources/js/main.js"></script>
<script src="resources/js/user.js"></script>
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