<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="topInclude.jsp"%>
<link rel='stylesheet' href='resources/css/signin.css'>
<title>TV5 Web POS - Admin</title>
</head>
<body>


	<table class="table">
	<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Quantity</td>
				<td>Total</td>
			</tr>
		<c:forEach items="${ productReportList }" var="x">
			
			<tr>
				<td>${ x.prod_id }</td>
				<td>${ x.name }</td>
				<td>${ x.qty }</td>
				<td>${ x.total }</td>
			</tr>
		</c:forEach>
	</table>

	<table class="table">
		<tr>
			<td>Date</td>
			<td>Cashier</td>
			<td>Income</td>
		</tr>
		<c:forEach items="${ income }" var="i">
			<tr>
				<td>${ i.date }</td>
				<td>${ i.cashier }</td>
				<td>${ i.total }</td>
			</tr>
		</c:forEach>
	</table>

</body>
<%@ include file="bottomInclude.jsp"%>
<script type="text/javascript" src="resources/js/user.js"></script>
</html>