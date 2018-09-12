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
			
			if($(this).attr('id')=='re_good'){
				//좋았던 점 글자수 제어
				$('#g_count').text(remain);
			}else if($(this).attr('id')=='re_bad'){
				//아쉬운 점 글자수 제어
				$('#b_count').text(remain);
			}else if($(this).attr('id')=='re_tip'){
				//꿀팁 글자수 제어
				$('#t_count').text(remain);
			}
		}
	});
	
	
	//--------------------------------별점 매기기
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-36251023-1']);
	_gaq.push(['_setDomainName', 'jqueryscript.net']);
	_gaq.push(['_trackPageview']);

	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();


});