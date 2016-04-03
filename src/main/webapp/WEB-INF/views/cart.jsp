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

<style>
</style>
</head>

<body style="background-color: #ebebeb;">
	<div class="ui inverted menu">
		<div class="right menu">
			<a class="item" href="products" ><i class="cubes icon"></i>Products</a> <a
				class="active purple item" href="home" ><i class="cart icon"></i>Cart</a> <a
				class="item" href="logout">Log Out</a>
		</div>
	</div>
	<div class="ui grid very padded relaxed stackable grid">
		<div class="eleven wide column" style="">
			<h3 class="ui center aligned icon header">
				<i class="circular purple inverted cart icon"></i>
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
					<tr>
						<td>ASUS Zenfone 2 ZE551ML 4/64</td>
						<td>2</td>
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
				<form class="ui form">
					<div class="field">
						<label>Product</label> <input type="text" name="first-name">
					</div>
					<div class="field">
						<label>Quantity</label> <input type="number" name="last-name">
					</div>
					<div class="field">
						<label>Price</label> <input type="text" name="password">
					</div>
					<button class="ui purple fluid center aligned labeled icon button"
						type="submit">
						<i class="add to cart icon"></i>Add To Cart
					</button>
				</form>
			</div>
			<div>
				<form class="ui form">
					<div class="ui action input fluid">
						<input type="text" placeholder="PHP 0.00">
						<button class="ui purple right labeled icon button">
							<i class="dollar icon"></i> Checkout
						</button>
					</div>
				</form>
				<div class="ui left action input fluid">
					<button class="ui button">
						<i class="cart icon" disabled></i> Change
					</button>
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