
	$('.ui.dropdown').dropdown();
	$('#addCrB').hide();
	
	
	function addUser() {
		$('#add').modal('show');
		$('#add').modal({
			closable : false
		})
	}
	
	function addProd() {
		$('#addProd').modal('show');
		$('#addProd').modal({
			closable : false
		})
	}
	
	function showCart() {
		$('#cart').show();
		$('#crb').addClass('active');
		$('#products').hide();
		$('#prb').removeClass('active');
		$('#addPrB').hide();
	}
	
	function showProducts() {
		$('#cart').hide();
		$('#prb').addClass('active');
		$('#crb').removeClass('active');
		$('#products').show();
		$('#addPrB').show();
	}
	
	function checkout() {
		$('#checkout').modal('show');
	}
	
	$('.activating.element')
	  .popup()
	;
	
	$('.ui.popup')
	  .popup({
	    title   : 'Popup Title',
	    content : 'Hello I am a popup'
	  })
	;
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