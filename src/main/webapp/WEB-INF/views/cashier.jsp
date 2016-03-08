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
				<form>
					<div class="form-group">
						<label for="fname">Product</label> <input type="text"
							class="form-control" id="product" required>
					</div>
					<div class="form-group">
						<label for="pw">Quantity</label> <input type="number"
							class="form-control" id="qty" required>
					</div>
					<div class="form-group">
						<label for="pw">Price</label> <input type="number"
							class="form-control" id="price" required>
					</div>
					<button type="submit" class="btn btn-info">Add New Product</button>
				</form>
			</div>

			<div class="col-xs-6">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Trisha</td>
							<td>Lim</td>
							<td>trishalim</td>
						</tr>
						<tr>
							<th>Total:</th>
							<td></td>
							<td></td>
						</tr>
						
					</tbody>
				</table>
			<form>
				<div class="form-group">
					<label for="fname">Money</label> <input type="text"
						class="form-control" id="money" required>
				</div>
				<div class="form-group">
					<label for="pw">Change</label> <input type="number"
						class="form-control" id="change" required>
				</div>
			</form>
			</div>
		</div>
		
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>