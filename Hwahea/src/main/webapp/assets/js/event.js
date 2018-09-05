/*이벤트*/
$(document).ready(function(){
	
	$('.nav-item').click(function(){
		$('#hide_event').hide();
	});
	
	//이벤트 상세보기 hover
	$('.event_hover').addClass('event_none');

	$('.event_img').hover(function(){
		var num = $('.event_img').index(this);
		$('.event_img a').eq(num).removeClass('event_none');
	},function(){
		$('.event_hover').addClass('event_none');
	});
	
	//이벤트 개인정보 이용 동의 상세
	var flag = 0;
	$('#agree_txt1').hide();
	$('#agree_txt2').hide();
	$(document).on('click','.event_open',function(){
		var agree_img1 = document.getElementById('agree_img1');
		var agree_img2 = document.getElementById('agree_img2');
		
		if(flag == 1){
			$('#agree_txt1').hide();
			$('#agree_txt2').hide();
			agree_img1.src = '../assets/img/event/event_open.png';
			agree_img2.src = '../assets/img/event/event_open.png';

			flag = 0;
			return false;
		}
		
		agree_img1.src = '../assets/img/event/event_close.png';
		agree_img2.src = '../assets/img/event/event_close.png';
		
		$('#agree_txt1').show();
		$('#agree_txt2').show();
		
		flag = 1;
		
	});
});