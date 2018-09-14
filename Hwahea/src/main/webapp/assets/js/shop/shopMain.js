$(document).ready(function(){
	//shopMain 카테고리 목록 제어
	$('.main_cate_wrap').mouseleave(function(){
		$('.sub_cate_list').hide();
	});
	$('.main_menu').mouseover(function(){
		$('.sub_cate_list').hide();
		$('.sub_'+$(this).attr('data-id')).show();
	});
	
});