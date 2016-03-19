<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Products</title>

<link rel="stylesheet" type="text/css" href="js/semantic.css">
<link rel="stylesheet" type="text/css" href="js/custom.css">

<style>
</style>
</head>

<body>
	<div class="ui blue inverted menu">
		<h4 class="green item" style="margin-bottom: 0px !important;">
			<b>WEBPOS</b>
		</h4>
		<div class="right menu">
			<a class="item">Log Out</a>
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
					<tr>
						<td>ASUS Zenfone 2 ZE551ML 4/64</td>
						<td>27</td>
						<td>P 14,995.00</td>
					</tr>
					<tr>
						<td>iPhone 6s Plus 16GB (Rose Gold)</td>
						<td>4</td>
						<td>P 43,990.00</td>
					</tr>
					<tr>
						<td>My Phone Agua Rio</td>
						<td>29</td>
						<td>P 4,900.00</td>
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
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ASUS Zenfone 2 ZE551ML 4/64</td>
						<td>1</td>
						<td>P 14,995.00</td>
					</tr>
					<tr>
						<td>iPhone 6s Plus 16GB (Rose Gold)</td>
						<td>1</td>
						<td>P 43,990.00</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="2"><b>TOTAL:</b></th>
						<th colspan="1"><b>P 500,000.00</b></th>
					</tr>

				</tfoot>
			</table>
			
			<!-- ADD ITEMS TO CART -->
			<div class="ui container segment"
				style="padding: 15px !important; width:70%">
				<div class="ui form">
					<div class="four fields">
						<div class="field">
							<label>Product Name</label><select class="ui dropdown">
								<option value="">---</option>
								<option value="1">Pizza</option>
								<option value="0">Water</option>
								<option value="1">Milktea</option>
								<option value="0">Table</option>
							</select>
						</div>
						<div class="field">
							<label>Quantity</label> <input type="number">
						</div>
						<div class="field">
							<label>Price</label> <input type="text">
						</div>
						<div class="field">
							<button class="ui gray fluid center aligned labeled icon button"
								type="submit">
								<i class="add to cart icon"></i>Add To Cart
							</button>
							<button class="ui blue fluid center aligned labeled icon button"
								type="submit" style="margin-top: 5px !important"
								onclick="checkout()">
								<i class="money icon"></i>Checkout
							</button>
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
			<form class="ui form">
				<div class="field">
					<label>Product Name</label> <input type="text" id="pName"
						name="first-name">
				</div>
				<div class="field">
					<label>Quantity</label> <input type="number" name="last-name">
				</div>
				<div class="field">
					<label>Price</label> <input type="text" name="password">
				</div>
				<button class="ui blue fluid center aligned labeled icon button"
					type="submit">
					<i class="add icon"></i>Add New Product
				</button>
			</form>
		</div>
	</div>
</body>

<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/semantic.js"></script>
<script src="js/main.js"></script>
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