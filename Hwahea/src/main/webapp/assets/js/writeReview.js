$(document).ready(function(){
	/*--------------------------------------------------글자수 체크 */
	$(document).on('keyup','textarea',function(){
		//입력한 글자수 구하기
		var inputLength = $(this).val().length;

		if(inputLength>5000){//5000자 초과하는 경우
			$(this).val($(this).val().substring(0,5000));//300자를 초과하는 글자는 잘라냄
		}else{//5000자 이하인 경우
			var remain = inputLength;
			remain += '/5000';
			
			if($(this).attr('id')=='gre'){
				//좋았던 점 글자수 제어
				$('#g_count').text(remain);
			}else if($(this).attr('id')=='bre'){
				//아쉬운 점 글자수 제어
				$('#b_count').text(remain);
			}else if($(this).attr('id')=='tre'){
				//꿀팁 글자수 제어
				$('#t_count').text(remain);
			}

		}

	});


});