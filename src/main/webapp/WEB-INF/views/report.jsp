<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<c:forEach items="${ productReportList }" var="x">
							<tr>
								<td>${ x.name }</td>
								<td>${ x.qty }</td>
								<td>${ x.total }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="col-xs-6">
				<h2>Income</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Date</th>
							<th>Cashier</th>
							<th>Income</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ income }" var="i">
							<tr>
								<td>${ i.date }</td>
								<td>${ i.cashier }</td>
								<td>${ i.total }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>