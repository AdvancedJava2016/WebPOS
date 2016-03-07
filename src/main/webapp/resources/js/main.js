
	$('.ui.dropdown').dropdown();
	$('#addCrB').hide();
	function editUser() {
		$('#edit').modal('show');
		$('#edit').modal({
			closable : false
		})
	}
	
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