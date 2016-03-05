function editUser(id, fName, lName, role, uName, password) {
	document.getElementById("editId").value = id;
	document.getElementById("editId").disabled = false;
	document.getElementById("editFirstName").value = fName;
	document.getElementById("editFirstName").disabled = false;
	document.getElementById("editLastName").value = lName;
	document.getElementById("editLastName").disabled = false;
	document.getElementById("editRole").value = role;
	document.getElementById("editRole").disabled = false;
	document.getElementById("editUsername").value = uName;
	document.getElementById("editUsername").disabled = false;
	document.getElementById("editPassword").value = password;
	document.getElementById("editPassword").disabled = false;
	$("#editUserForm").attr("action", "editUser");
	$("#editDeleteUserModalHeader").html('Edit user');
	$("#btnEditDeleteUserSubmit").html('Edit');
	$('#editDeleteUserModal').modal('show');
}

function deleteUser(id, fName, lName, role, uName, password) {
	document.getElementById("editId").value = id;
	document.getElementById("editFirstName").value = fName;
	document.getElementById("editFirstName").disabled = true;
	document.getElementById("editLastName").value = lName;
	document.getElementById("editLastName").disabled = true;
	document.getElementById("editRole").value = role;
	document.getElementById("editRole").disabled = true;
	document.getElementById("editUsername").value = uName;
	document.getElementById("editUsername").disabled = true;
	document.getElementById("editPassword").value = password;
	document.getElementById("editPassword").disabled = true;
	$("#editUserForm").attr("action", "deleteUser");
	$("#editDeleteUserModalHeader").html('Delete user');
	$("#btnEditDeleteUserSubmit").html('Delete');
	$('#editDeleteUserModal').modal('show');
}