$(function(){
	$('.new_referral, .edit_referral').on('change', '.referral-type', function(){
		$fields = $('.medical');
		if($(this).val() == 1){
			$fields.show().find('input, select').prop('disabled', false);
		}
		else {
			$fields.hide().find('input, select').prop('disabled', true);;
		}
	});
	$('body').on('click', '.js-change-chw-link', function(){
		$('#js-change-chw').slideDown('fast');
	});
});