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
			<a class="item">Log Out</a>
		</div>
	</div>
	<div class="ui grid very padded relaxed stackable grid">
		<div class="ui basic modal" id="add">
			<div style="width: 80%;"
				class="ui piled very padded text container segment">
				<form class="ui form" action="addUser" method="POST">
					<div class="field">
						<label>First Name</label> <input type="text" name="firstName">
					</div>
					<div class="field">
						<label>Last Name</label> <input type="text" name="lastName">
					</div>
					<div class="field">
						<label>Role</label> <select name="role" class="ui dropdown">
							<option value="admin">Administrator</option>
							<option value="cashier">Cashier</option>
						</select>
					</div>
					<div class="field">
						<label>Username</label> <input type="text" name="username">
					</div>
					<div class="field">
						<label>Password</label> <input type="password" name="password">
					</div>
					<button class="ui right floated labeled icon button">
						<i class="cancel icon"></i>Cancel
					</button>
					<button class="ui blue right floated labeled icon button"
						type="submit">
						<i class="add user icon"></i>Add New User
					</button>
				</form>
			</div>
		</div>
		<div class="three wide column"></div>
		<div class="ten wide column">
			<div style="margin-bottom: 10px !important;">
				<button class="divfix circular ui massive activating element blue icon button" data-content="Add New User" data-variation="basic" onclick="addUser()">
					<i class="icon add user"></i>
				</button>
			</div>

			<table class="ui fixed padded blue very piled raised celled table">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
						<th>Password</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ userList }" var="u">
						<tr>
							<td><a class="ui brown" href="#" onClick="editUserModal('${ u.id }', '${ u.fName }', '${ u.lName }', '${ u.role }', '${ u.username }', '${ u.password }')">${ u.fName }</a></td>
								<td>${ u.lName }</td>
								<td>${ u.username }</td>
								<td>${ u.password }</td>
								<td>${ u.role }</td>
						</tr>
					</c:forEach>
				</tbody>
				<!-- <tfoot>
					<tr>
						<th colspan="3">
							<div class="ui right floated pagination menu">
								<a class="icon item"> <i class="left chevron icon"></i>
								</a> <a class="item">1</a> <a class="item">2</a> <a class="item">3</a>
								<a class="item">4</a> <a class="icon item"> <i
									class="right chevron icon"></i>
								</a>
							</div>
						</th>
					</tr>
				</tfoot> -->
			</table>
		</div>
	</div>

	<div id="edit" class="ui modal">
		<div class="header">Edit User</div>
		<div style="width: 80%;"
			class="ui piled very padded text container segment">
			<form class="ui form" id="editUserForm" action="editUser" method="POST">
				<div class="field">
						<label>ID</label> <input type="text" name="id" id="eID">
					</div>
				<div class="field">
					<label>First Name</label> <input type="text" name="firstName" id="efname">
				</div>
				<div class="field">
					<label>Last Name</label> <input type="text" name="lastName" id="elname">
				</div>
				<div class="field">
					<label>Role</label> <select name="role" id="erole"class="ui">
						<option value="">---</option>
						<option value="admin">Administrator</option>
						<option value="cashier">Cashier</option>
					</select>
				</div>
				<div class="field">
					<label>Username</label> <input type="text" name="username" id="eusername">
				</div>
				<div class="field">
					<label>Password</label> <input type="password" name="password" id="epassword">
				</div>
				<div class="actions">
			<div class="ui gray right labeled icon button"><button type="submit" onClick="deleteUser()">
				Delete User <i class="trash icon"></i></button>
			</div>
			<div class="ui purple right labeled icon"><button type="submit">
				Save <i class="checkmark icon"></i></button>
			</div>
			<div class="ui black deny button">Cancel</div>
		</div>
			</form>
		</div>
		
	</div>
</body>

<script src="resources/js/main.js"></script>
<script src="resources/js/user.js"></script>
</html>