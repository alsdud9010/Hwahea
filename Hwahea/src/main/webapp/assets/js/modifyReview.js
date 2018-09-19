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
	//입력한 글자수 셋팅
	var inputLength1 = $('#re_good').val().length;
	var remain1 = 5000-inputLength1;
	remain1 += '/5000';
	$('#gcount #g_count').text(remain1);
	
	var inputLength2 = $('#re_bad').val().length;
	var remain2 = 5000-inputLength2;
	remain2 += '/5000';
	$('#bcount #b_count').text(remain2);
	
	var inputLength3 = $('#re_tip').val().length;
	var remain3 = 5000-inputLength3;
	remain3 += '/5000';
	$('#tcount #t_count').text(remain3);
	
	
	
	
	
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
	
	
	//----------------------------------사진 업로드 시 미리보기
	var upload1 = $('#ex_file1');
	var upload2 = $('#ex_file2');
	var upload3 = $('#ex_file3');
    var preview1 = $('#preview1');
    var preview2 = $('#preview2');
    var preview3 = $('#preview3');
    var deletefile1 = $('#deletefile1');
    var deletefile2 = $('#deletefile2');
    var deletefile3 = $('#deletefile3');
       
    upload1.on('change',function (e) {
        var get_file = e.target.files;
 
        var image = document.createElement('img');
 
        /* FileReader 객체 생성 */
        var reader = new FileReader();
 
        /* reader 시작시 함수 구현 */
        reader.onload = (function (aImg) {
            console.log(1);
 
            return function (e) {
                console.log(3);
                /* base64 인코딩 된 스트링 데이터 */
                aImg.src = e.target.result
            }
        })(image)
 
        if(get_file){
            /* 
                get_file[0] 을 읽어서 read 행위가 종료되면 loadend 이벤트가 트리거 되고 
                onload 에 설정했던 return 으로 넘어간다.
                이와 함게 base64 인코딩 된 스트링 데이터가 result 속성에 담겨진다.
            */
            reader.readAsDataURL(get_file[0]);
            console.log(2);
        }
 
        preview1.append(image);
        
        var deletebtn1='';
        deletebtn1 += '<input type="button" value="사진1 삭제" id="delete1">'
        deletefile1.append(deletebtn1);
        
        $('#delete1').on('click',function(){
        	preview1.empty();
        	deletefile1.empty();
        	$('#ex_file1').val('');
        });
        
    })
    
    upload2.on('change',function (e) {
        var get_file = e.target.files;
 
        var image = document.createElement('img');
 
        /* FileReader 객체 생성 */
        var reader = new FileReader();
 
        /* reader 시작시 함수 구현 */
        reader.onload = (function (aImg) {
            console.log(1);
 
            return function (e) {
                console.log(3);
                /* base64 인코딩 된 스트링 데이터 */
                aImg.src = e.target.result
            }
        })(image)
 
        if(get_file){
            /* 
                get_file[0] 을 읽어서 read 행위가 종료되면 loadend 이벤트가 트리거 되고 
                onload 에 설정했던 return 으로 넘어간다.
                이와 함게 base64 인코딩 된 스트링 데이터가 result 속성에 담겨진다.
            */
            reader.readAsDataURL(get_file[0]);
            console.log(2);
        }
 
        preview2.append(image);
        
        var deletebtn2='';
        deletebtn2 += '<input type="button" value="사진2 삭제" id="delete2">'
        deletefile2.append(deletebtn2);
        
        $('#delete2').on('click',function(){
        	preview2.empty();
        	deletefile2.empty();
        	$('#ex_file2').val('');
        });
    })
    
    upload3.on('change',function (e) {
        var get_file = e.target.files;
 
        var image = document.createElement('img');
 
        /* FileReader 객체 생성 */
        var reader = new FileReader();
 
        /* reader 시작시 함수 구현 */
        reader.onload = (function (aImg) {
            console.log(1);
 
            return function (e) {
                console.log(3);
                /* base64 인코딩 된 스트링 데이터 */
                aImg.src = e.target.result
            }
        })(image)
 
        if(get_file){
            /* 
                get_file[0] 을 읽어서 read 행위가 종료되면 loadend 이벤트가 트리거 되고 
                onload 에 설정했던 return 으로 넘어간다.
                이와 함게 base64 인코딩 된 스트링 데이터가 result 속성에 담겨진다.
            */
            reader.readAsDataURL(get_file[0]);
            console.log(2);
        }
        preview3.append(image);
        
        var deletebtn3='';
        deletebtn3 += '<input type="button" value="사진3 삭제" id="delete3">'
        deletefile3.append(deletebtn3);
        
        $('#delete3').on('click',function(){
        	preview3.empty();
        	deletefile3.empty();
        	$('#ex_file3').val('');
        });
    })
    
    $('#oridelete1').on('click',function(){
    	$('#photos1').empty();
    });
    $('#oridelete2').on('click',function(){
    	$('#photos2').empty();
    });
    $('#oridelete3').on('click',function(){
    	$('#photos3').empty();
    });
    
    
    $('#modify_form').on('submit',function(){
    	/*if($('#re_good').val()==''){
    		alert('좋았던 점을 작성해주세요!');
    		$('#re_good').focus();
    		return false;
    	}*/
    	/*if($('#re_bad').val()==''){
    		alert('아쉬운 점을 작성해주세요!');
    		$('#re_bad').focus();
    		return false;
    	}*/
    	
    	
    	
    });
    
    
    

});