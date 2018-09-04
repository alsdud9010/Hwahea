/*이벤트*/
$(document).ready(function(){
	
	//이벤트 상세보기 hover
	$('.event_hover').addClass('event_none');

	$('.event_img').hover(function(){
		var num = $('.event_img').index(this);
		$('.event_img a').eq(num).removeClass('event_none');
	},function(){
		$('.event_hover').addClass('event_none');
	});
});