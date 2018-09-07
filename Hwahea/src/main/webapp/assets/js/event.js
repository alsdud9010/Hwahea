/*이벤트*/
$(document).ready(function(){
	var flag = 0;
	
	//이벤트 상세보기 hover
	$('.event_hover').addClass('event_none');

	$('.event_img').hover(function(){
		var num = $('.event_img').index(this);
		$('.event_img a').eq(num).removeClass('event_none');
	},function(){
		$('.event_hover').addClass('event_none');
	});
	
	//이벤트 찜하기
	var event_wish = $('#eList li:first span a');
	
	$('#eList li span a').on('click',function(){
		//이벤트 찜하기 해제
		if(flag == 1){
			if($('img',this).attr('data-num') == 0){
				//flag == 1, data-num == 0 이면 즐찾 해제 후 flag를 0으로 변경 하단의 if문 실행하지 않도록 return false
				$('img',this).attr('src',$('img',this).attr('src').replace('wish.png','not_wish.png'));
				event_wish = $(this);
				
				alert('찜하기가 취소되었어요 :(');
				
				$('img',this).attr('data-num',$('img',this).attr('data-num').replace('0','1'));
				flag = 0;
				return false;
			}else{
				//flag == 1, data-num == 1 이면 즐찾을 취소하려는 하트가 아니므로(이미 취소되어 있는 하트) -> flag를 바꿔주고 하단의 if문 실행하도록 함
				flag = 0;
			}
		}
		
		//이벤트 찜하기
		if(flag == 0){
			if($('img',this).attr('data-num') == 1){
				//flag == 0, data-num ==1 이면 하트 변경 -> flag = 1로 바꿔줌
				$('img',this).attr('src',$('img',this).attr('src').replace('not_wish.png','wish.png'));
				event_wish = $(this);
				
				alert('마이페이지 \'찜한 이벤트\'에 담겼어요 :)');
				
				$('img',this).attr('data-num',$('img',this).attr('data-num').replace('1','0'));
				flag = 1;
			}else{
				//flag == 0, data-num = 0 이면 즐찾하려는 하트가 아님(이미 즐찾이 되어있는 하트) -> flag 바꿔줌
				flag = 1;
			}
		}
	});
	
	//이벤트 개인정보 이용 동의 상세
	$(".accordion_banner .accordion_sub").hide();
	$(".accordion_banner .accordion_title").click(function() {
		if ($(this).next("div").is(":visible")) {
			$(this).next("div").slideUp("fast");
		} else {
			$(".accordion_banner .accordion_sub").slideUp("fast");
			$(this).next("div").slideToggle("fast");
		}
	});
	
	//댓글쓰기 창 비우기
	$(document).on('click','.event_rtext',function(){
		if($('.event_rtext').val()=='내용을 입력해주세요. (최대 100자)'){
			$('.event_rtext').val('');
		}
	});
	//댓글쓰기 창 문구 다시 채우기
	$(document).on('blur','.event_rtext',function(){
		if($('.event_rtext').val()==''){
			$('.event_rtext').val('내용을 입력해주세요. (최대 100자)');
		}
	});
});