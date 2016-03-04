<div id="editUser" class="modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular teal edit icon" style="margin-right: 10px;"></i>Administrator
	</div>
	<div class="content">
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
			<button class="btn btn-lg btn-primary btn-block" type="submit">Edit</button>
		</form>
	</div>
</div>