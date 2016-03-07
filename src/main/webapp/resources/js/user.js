function editUserModal(id, fName, lName, role, username, password) {
	$('#edit').modal('show');
	$('#edit').modal({
		closable : false
	})
	
	document.getElementById("eID").value = id;
	document.getElementById("efname").value = fName;
	document.getElementById("elname").value = lName;
	document.getElementById("erole").value = role;
	document.getElementById("eusername").value = username;
	document.getElementById("epassword").value = password;
	$("#editUserForm").attr("action", "editUser");
}

function deleteUser() {
	$("#editUserForm").attr("action", "deleteUser");
}