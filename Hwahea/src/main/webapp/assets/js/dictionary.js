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
		$('.tab_left').css({
			backgroundColor :'#fff',
			boxShadow: '-1px 1px 40px 6px #c0c0c0b0 inset'
		});
	});
	$('.d_list_detail-close').click(function(){
		$('.d_info').show();
		$('.d_list_detail').hide();
		$('.tab_left').css({
			backgroundColor :'#f4f4f4',
			boxShadow: 'none'
		});
	});
	
	$('#warnings').click(function(){
		
		
		
	});
		
});