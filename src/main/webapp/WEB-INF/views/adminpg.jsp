<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin</title>

<link rel="stylesheet" type="text/css" href="resources/js/semantic.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/semantic.js"></script>

<style>
a.purple {
	color: #75005e !important;
}
</style>
</head>

<body style="background-color: #ebebeb;">
	<div class="ui inverted menu">
		<div class="right menu">
			<a class="item" href="home">Users</a>
			<a class="item" href="report">Reports</a>
			<a class="item" href="logout">Log Out</a>
		</div>
	</div>
	<div class="ui grid very padded relaxed stackable grid">
		<div class="five wide column">
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
							<option value="admin">Admin</option>
							<option value="cashier">Cashier</option>
						</select>
					</div>
					<div class="field">
						<label>Username</label> <input type="text" name="username">
					</div>
					<div class="field">
						<label>Password</label> <input type="password" name="password">
					</div>
					<button class="ui purple fluid center aligned labeled icon button"
						type="submit">
						<i class="add user icon"></i>Add New User
					</button>
				</form>
			</div>
		</div>
		<div class="ui vertical divider">
			<i class="star icon"></i>
		</div>
		<div class="eleven wide column" style="">
			<h3 class="ui center aligned icon header">
				<i class="circular inverted users icon"></i>
			</h3>
			<table class="ui black fixed padded very piled raised celled table">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ userList }" var="u">
						<tr>
							<td><a class="purple" href="#"
								onClick="editUserModal('${ u.id }', '${ u.fName }', '${ u.lName }', '${ u.role }', '${ u.username }', '${ u.password }')">${ u.fName }</a></td>
							<td>${ u.lName }</td>
							<td>${ u.username }</td>
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

	<div id="edit" class="ui basic modal">
		<div style="width: 80%;"
			class="ui piled very padded text container segment">
			<form class="ui form" id="editUserForm" action="editUser"
				method="POST">
				<div class="field">
					<label>ID</label> <input type="text" id="eID" name="id">
				</div>
				<div class="field">
					<label>First Name</label> <input type="text" id="efname"
						name="firstName">
				</div>
				<div class="field">
					<label>Last Name</label> <input type="text" id="elname"
						name="lastName">
				</div>
				<div class="field">
					<label>Role</label> <select name="role" id="erole" class="">
						<option value="admin">Admin</option>
						<option value="cashier">Cashier</option>
					</select>
				</div>
				<div class="field">
					<label>Username</label> <input type="text" id="eusername"
						name="username">
				</div>
				<div class="field">
					<label>Password</label> <input type="password" id="epassword"
						name="password">
				</div>
				<div class="ui divider"></div>
				<div class="field actions right" style="float:right!important">
						<button class="ui gray right labeled icon button"
							onClick="deleteUser()" type="submit">
							<i class="trash icon"></i>Delete User
						</button>
						<button class="ui purple right labeled icon button" type="submit">
							<i class="checkmark icon"></i>Save
						</button>
					<div class="ui black deny button">Cancel</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="resources/js/user.js"></script>
<script>
	$('.ui.dropdown').dropdown();
</script>
</html>