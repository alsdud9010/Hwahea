$(document).ready(function(){
	/*--------------------------------------------------글자수 체크 */
	$(document).on('keyup','textarea',function(){
		//입력한 글자수 구하기
		var inputLength = $(this).val().length;

		if(inputLength>300){//5000자 초과하는 경우
			$(this).val($(this).val().substring(0,300));//300자를 초과하는 글자는 잘라냄
		}else{//5000자 이하인 경우
			var remain = inputLength;
			remain += '/300';
			
			if($(this).attr('id')=='editarea'){
				$('.count').text(remain);
			}

		}

	});


});