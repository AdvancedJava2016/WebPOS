<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>POS</title>
</head>
<body>
	<div class="ui blue inverted menu">
		<h4 class="item" style="margin-bottom: 0px !important;">
			<a href=""><b>WEBPOS</b></a>
		</h4>
		<div class="right menu">
			<a class="item" href="home">Users</a> <a class="item" href="report">Report</a>
			<a class="item" href="logout">Log Out</a>
		</div>
	</div>
	<div class="ui grid very padded relaxed stackable grid">
		<div class="eight wide column">
			<h2>Products Sold</h2>
			<table class="ui fixed padded blue very piled raised celled table">
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

		<div class="eight wide column">
			<h2>Income</h2>
			<table class="ui fixed padded blue very piled raised celled table">
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
</body>
<link rel="stylesheet" type="text/css" href="resources/js/semantic.css">
<link rel="stylesheet" type="text/css" href="resources/js/custom.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/semantic.js"></script>
</html>