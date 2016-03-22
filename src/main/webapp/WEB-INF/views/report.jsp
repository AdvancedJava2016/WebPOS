<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin</title>

<link rel="stylesheet" type="text/css" href="resources/js/semantic.css">
<link rel="stylesheet" type="text/css" href="resources/js/custom.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/semantic.js"></script>
<style>
</style>
</head>

<body>
	<div class="ui blue inverted menu">
		<h4 class="item" style="margin-bottom: 0px !important;">
			<b>WEBPOS</b>
		</h4>
		<div class="right menu">
			<a class="item" href="logout">Log Out</a>
		</div>
	</div>
	<br>
	<br>
	<div class="ui text container" style="min-width: 70%">
		<h3 class="ui dividing header">Report</h3>

		<table class="ui fixed padded blue  table">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Total Quantity</th>
					<th>Total Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ productReport }" var="u">
					<tr>
						<td>${ u.pName }</td>
						<td>${ u.quantity }</td>
						<td>${ u.quantity*u.price }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<table class="ui fixed padded blue  table">
			<thead>
				<tr>
					<th>Income Per Day</th>
					<th>Cashier</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ productReport }" var="u">
					<tr>
						<td>${ u.pName }</td>
						<td>${ u.quantity }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>

<script src="resources/js/main.js"></script>
<script src="resources/js/user.js"></script>
</html>