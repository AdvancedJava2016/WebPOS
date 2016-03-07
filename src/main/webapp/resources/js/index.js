$(document).ready(function() {
		$('#cashsales').hide();

});
	
$('#addUserbtn').click(function(){
	$('#addUsermodal').modal({
		closable : false
	})
	$('#addUsermodal').modal('show');

});

$('#cancelUserbtn').click(function(){
	$('#addUsermodal').modal('hide');

});

$('#addProductbtn').click(function(){
	$('#addProductmodal').modal({
		closable : false
	})
	$('#addProductmodal').modal('show');

});

$('#cancelProductbtn').click(function(){
	$('#addProductmodal').modal('hide');

});	

$('#addCartbtn').click(function(){
	$('#addCartmodal').modal({
		closable : false
	})
	$('#addCartmodal').modal('show');

});

$('#cancelCartbtn').click(function(){
	$('#addCartmodal').modal('hide');

});	
function editMod(id, fName, lName, role, uName, password){
		$('#editUsermodal').modal({
		closable : false
	})
	document.getElementById("eID").value = id;
	document.getElementById("efname").value = fName;
	document.getElementById("elname").value = lName;
	document.getElementById("erole").value = role;
	document.getElementById("eusername").value = uName;
	document.getElementById("epassword").value = password;
	$("#editUserForm").attr("action", "editUser");
	$('#editUsermodal').modal('show');
}

function deleteUser() {
	$("#editUserForm").attr("action", "deleteUser");
}

$('#ecancelUserbtn').click(function(){
	$('#editUsermodal').modal('hide');

});

$('#cashsalesbtn').click(function(){
	$('#productsales').hide();
	$('#cashsales').show();
});

$('#prodsalesbtn').click(function(){
	$('#productsales').show();
	$('#cashsales').hide();
});