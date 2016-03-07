<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="header.jsp"%>
<title>POS</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<h2>Products Sold</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Total Amount</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Trisha</td>
							<td>Lim</td>
							<td>trishalim</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-xs-6">
				<h2>Income</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Date</th>
							<th>Income</th>
							<th>Cashier</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Trisha</td>
							<td>Lim</td>
							<td>trishalim</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>