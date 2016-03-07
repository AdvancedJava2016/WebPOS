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
function editMod(){
		$('#editUsermodal').modal({
		closable : false
	})
	$('#editUsermodal').modal('show');
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