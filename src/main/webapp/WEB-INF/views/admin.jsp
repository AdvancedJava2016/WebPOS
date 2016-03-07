<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="col-xs-3">
				<form method="POST" action="addUser">
					<div class="form-group">
						<label for="fname">First Name</label> <input type="text"
							class="form-control" id="firstName" name="firstName" required>
					</div>
					<div class="form-group">
						<label for="pw">Last Name</label> <input type="text"
							class="form-control" id="pw" name="lastName" required>
					</div>
					<div class="form-group">
						<label for="pw">Role</label> <select class="form-control" name="role">
							<option value="admin" >Administrator</option>
							<option value="cashier">Cashier</option>
						</select>
					</div>
					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							class="form-control" id="username" name="username"required>
					</div>
					<div class="form-group">
						<label for="pw">Password</label> <input type="password" name="password"
							class="form-control" id="pw" required>
					</div>
					<button type="submit" class="btn btn-info">Add New User</button>
				</form>
			</div>

			<div class="col-xs-9">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Username</th>
							<th>Password</th>
							<th>Role</th>
							<th>Edit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items = "${ userList }" var = "u">
							<tr>
								<td>${ u.fName }</td>
								<td>${ u.lName }</td>
								<td>${ u.username }</td>
								<td>${ u.password }</td>
								<td>${ u.role }</td>
								<td>
									<button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#editUserModal" 
									onCLick="editUser(${u.id}, '${u.fName}', '${u.lName}', '${u.role}', '${u.username}', '${u.password}')">
									  Edit
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog"
		aria-labelledby="editUserModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Edit User</h4>
				</div>
				<div class="modal-body">
				<form id="editUserForm" method="POST" action="editUser">
					<div class="form-group">
						<label for="fname">ID</label> <input type="text"
							class="form-control" id="eID" name="id" hidden="true" required>
					</div>
					<div class="form-group">
						<label for="fname">First Name</label> <input type="text"
							class="form-control" id="efname" name="firstName" required>
					</div>
					<div class="form-group">
						<label for="pw">Last Name</label> <input type="text"
							class="form-control" id="elname" name="lastName" required>
					</div>
					<div class="form-group">
						<label for="role">Role</label> <select id="erole" name="role" class="form-control">
							<option value="admin" >Administrator</option>
							<option value="cashier">Cashier</option>
						</select>
					</div>
					<div class="form-group">
						<label for="username">Username</label> <input name="username" type="text"
							class="form-control" id="eusername" required>
					</div>
					<div class="form-group">
						<label for="pw">Password</label> <input name="password" type="password"
							class="form-control" id="epassword" required>
					</div>
					
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" onClick="deleteUser()" class="btn btn-info">Delete User</button>
					<button type="submit" class="btn btn-info">Save changes</button>
				</div>
				</form>
				</div>
				
			</div>
		</div>
	</div>
	
	
	<%@ include file="footer.jsp"%>
	<script type="text/javascript" src="resources/js/user.js"></script>
</body>
</html>