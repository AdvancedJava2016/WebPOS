<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="topInclude.jsp"%>
<link rel='stylesheet' href='resources/css/signin.css'>
<title>IWC Web POS - Admin</title>
</head>
<body>
	Hello ${ username }!

	<div class="container">
		<form class="form-signin" method="POST" action="addUser">
			<h2 class="form-signin-heading">Create new user</h2>
			<label for="inputFirstName" class="sr-only">First name</label> <input
				type="text" id="inputFirstName" class="form-control"
				placeholder="First name" name="firstName" required="" autofocus="">
			<label for="inputLastName" class="sr-only">Last name</label> <input
				type="text" id="inputLastName" class="form-control"
				placeholder="Last name" name="lastName" required="" autofocus="">
			<select class="form-control" name="role">
				<option value="admin">admin</option>
				<option value="cashier">cashier</option>
			</select> <label for="inputUsername" class="sr-only">Username</label> <input
				type="text" id="inputUsername" class="form-control"
				placeholder="Username" name="username" required="" autofocus="">
			<label for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="Password" name="password" required="">
			<button class="btn btn-lg btn-primary btn-block" type="submit">Create</button>
		</form>
	</div>
	<div id="usersList" class="container">
		<table>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Role</th>
					<th>Username</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ userList }" var="u">
					<tr>
						<td>${ u.fName }</td>
						<td>${ u.lName }</td>
						<td>${ u.role }</td>
						<td>${ u.username }</td>
						<td>${ u.password }</td>
						<td><button onCLick="localhost:8080/webpos/deleteUser/${u.id}">delete</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>