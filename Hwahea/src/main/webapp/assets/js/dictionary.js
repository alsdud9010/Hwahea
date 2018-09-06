$(document).ready(function(){
	
	/*===성분 사전===*/
	$('.nav-item').click(function(){
		$('#EWG').hide();
	});
	$('.navbar-brand2').click(function(){
		location.href='dictionary.do';
	});
	
	/*===성분 디테일 팝업===*/
	$('.d_list_name').click(function(){
		$('.d_info').hide();
		$('.d_list_detail').show();
	});
	$('.d_list_detail-close').click(function(){
		$('.d_info').show();
		$('.d_list_detail').hide();
	});
});