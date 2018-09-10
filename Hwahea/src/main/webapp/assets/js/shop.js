$(document).ready(function(){
	$('.main_cate_wrap').mouseleave(function(){
		$('.sub_cate_list').hide();
	});
	$('.main_menu').mouseover(function(){
		$('.sub_cate_list').hide();
		$('.sub_'+$(this).attr('data-id')).show();
	});
	
});