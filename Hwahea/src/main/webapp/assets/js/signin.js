$(function(){
	//아이디 중복 체크
	$('#confirmId').click(function(){
		if($('#m_id').val()==''){
			alert('아이디를 입력하세요!');
			$('#m_id').focus();
			return;
		}
		
		//var regMsg = new RegExp('^[A-Za-z0-9+]{4,12}$');
		/*var regMsg=/^[A-Za-z0-9+]{4,12}$/;
		if(!regMsg.test($('#id').val())){
			alert('영문, 숫자 4자이상 12자 이하 입력');
			$('#id').focus();
			return;
		}*/
		
		$('#message_id').text(''); //메시지 초기화
		$('#error_id').text('');//유효성체크시 보여지는 메시지 초기화
		$('#loading').show(); //로딩 이미지 노출
		
		$.ajax({
			url:'confirmId.do',
			type:'post',
			data:{m_id:$('#m_id').val()},
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				$('#loading').hide();//로딩 이미지 감추기
				
				if(data.result == 'idNotFound'){
					$('#message_id').css('color','#000')
					                .text('등록가능ID');
					checkId = 1;
				}else if(data.result == 'idDuplicated'){
					$('#message_id').css('color','red')
	                                .text('중복된 ID');
					$('#m_id').val('').focus();
	                checkId = 0;
				}else{
					alert('ID중복체크 오류');
				}
			},
			error:function(){
				$('#loading').hide();//로딩 이미지 감추기
				alert('네트워크 오류 발생');
			}
		});
	});
    // 회원 가입 처리
    $('#register_form').submit(function(){
       
        var email = $('#m_email').val();
        if(email == ''){
            alert('이메일을 입력하세요');
            $("#m_email").focus();
            return false;
        } else {
            var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!emailRegex.test(email)) {
                alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
                $("#m_email").focus();
                return false;
            }
        }
        
        if($("#m_nickname").val() ==''){
            alert('닉네임을 입력하세요');
            $("#m_nickname").focus();
            return false;
        }

        if($("#m_passwd").val() ==''){
            alert('비밀번호를 입력하세요');
            $("#m_passwd").focus();
            return false;
        }

        if($("#inputPasswordCheck").val() ==''){
            alert('비밀번호를 다시 한번 더 입력하세요');
            $("#inputPasswordCheck").focus();
            return false;
        }
        
        if($("#m_passwd").val()!== $("#inputPasswordCheck").val()){
            alert('비밀번호를 둘다 동일하게 입력하세요');
            return false;
        }
        
        if($("#inputName").val() ==''){
            alert('이름을 입력하세요');
            $("#inputName").focus();
            return false;
        }
        if($("#dry").is(":checked") == false && 
        	$("#middle").is(":checked") == false && 
        	$("#oily").is(":checked") == false && 
        	$("#mixed").is(":checked") == false ){
        	alert('피부타입을 선택해주세요.');
        	return false;
        }
        
        if($(".checkbox").is(":checked") == false ){
            alert('피부고민을 선택해주세요.');
            return false;      
        }
        
        if($("#inputMobile").val() ==''){
            alert('휴대폰 번호를 입력하세요');
            $("#inputMobile").focus();
            return false;
        }
    });

});
