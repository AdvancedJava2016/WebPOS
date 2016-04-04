
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



function calculatePrice(){
	var a = document.getElementById("quantity").value;
	var b = document.getElementById("price").value;
	document.getElementById("inputPrice").value = a * b;
	document.getElementById("inPrice").value = a * b;
	document.getElementById("inQuantity").value = a;
	document.getElementById("quantity").reset;
	
}


function onSelect(p){
	
	var x = document.getElementById("inputProduct").value;
	var result = x.split('|');
	// alert(result[0]); //quantity 
	//$('#quantity').empty().append('<option selected="selected" value="0">0</option>');
	var $select = $('#quantity');
	$select.empty();
    for (i=1;i<=result[0];i++){
        $select.append($('<option></option>').val(i).html(i))
    }	
   // document.getElementById("inputPrice").value = result[0];
    document.getElementById("price").value = result[1];
    document.getElementById("inName").value = result[2];
    document.getElementById("inID").value = result[3];
    
}

$(document).ready(function() {
		$('#inputProduct').prepend('<option selected="selected" value="0">Select Product</option>');
		$('#quantity').prepend('<option selected="selected" value="">Quantity</option>');
	});
