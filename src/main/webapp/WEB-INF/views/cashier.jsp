<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Simple POS by TRISHA JEAN LIM</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse pull-right">
          <ul class="nav navbar-nav">
            <li><a href="home">Cart</a></li>
            <li><a href="products">Products</a></li>
            <li><a href="logout">Log Out</a></li>
          </ul>
        </div>
      </div>
    </nav>
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<form method="POST" action="addProduct">
					<div class="form-group">
						<label for="fname">Product</label> <input type="text"
							class="form-control" id="product" name="pName" required>
					</div>
					<div class="form-group">
						<label for="pw">Quantity</label> <input type="number"
							class="form-control" name="quantity" id="qty" required>
					</div>
					<div class="form-group">
						<label for="pw">Price</label> <input type="number"
							class="form-control" id="price" name="price" required>
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
		</div>
		
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>