<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Products</title>

<link rel="stylesheet" type="text/css" href="resources/js/semantic.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/semantic.js"></script>

<style>
</style>
</head>

<body style="background-color: #ebebeb;">
	<div class="ui inverted menu">
		<div class="right menu">
		<a class="active purple item" href="products"><i class="cubes icon"></i>Products</a>
			<a class="item" href="home"><i class="cart icon"></i>Cart</a>
			<a class="item" href="logout">Log Out</a>
		</div>
	</div>
	<div class="ui grid very padded relaxed stackable grid">
		<div class="eleven wide column" style="">
			<h3 class="ui purple center aligned icon header">
				<i class="circular cubes icon"></i>
			</h3>
			<table class="ui black fixed padded very piled raised celled table">
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
				<!-- <tfoot>
					<tr>
						<th colspan="3">
							<div class="ui right floated pagination menu">
								<a class="icon item"> <i class="left chevron icon"></i>
								</a> <a class="item">1</a> <a class="item">2</a> <a class="item">3</a>
								<a class="item">4</a> <a class="icon item"> <i
									class="right chevron icon"></i>
								</a>
							</div>
						</th>
					</tr>
				</tfoot> -->
			</table>
		</div>
		<div class="ui vertical divider"></div>
		<div class="five wide column">
			<div style="width: 80%; margin-top:60px;"
				class="ui piled very padded text container segment">
				<form class="ui form" action="addProduct" method="POST">
					<div class="field">
						<label>Product Name</label> <input type="text" name="pName">
					</div>
					<div class="field">
						<label>Quantity</label> <input type="number" name="quantity">
					</div>
					<div class="field">
						<label>Price</label> <input type="text" name="price">
					</div>
					<button class="ui purple fluid center aligned labeled icon button" type="submit"><i class="add icon"></i>Add
						New Product</button>
				</form>
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