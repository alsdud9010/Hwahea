$(document).ready(function(){
	/*상단 메뉴바*/
	$(document).on('click','.notice_kind li',function(){
		var num = $('.notice_kind li').index(this);
		$('.notice_kind li').removeClass('notice_on');
		
		$('.notice_kind li').eq(num).addClass('notice_on');
	});
});