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
			
			if($(this).attr('id')=='edit_content'){
				$('.count').text(remain);
			}
		}
	});

	
	/*-------------------------------------------------- 정보 수정 작성*/
	$('#edit_form').submit(function(){
		var select = $('#edit_cate option:selected').val();
		
		if(select<1){
			alert('카테고리를 선택해주세요!');
			return false;
		}
		if($('#edit_content').val()==''){
			alert('내용을 입력해주세요!');
			$('#edit_content').focus();
			return false;
		}
		if($('#edit_content').val().length<10 || $('#edit_content').val().length>300){
			alert('10자 이상, 300자 이하로 작성해주세요!');
			$('#edit_content').focus();
			return false;
		}
		
		
		//등록
		$.ajax({
			type:'post',
			data:{
				edit_cate:select,
                edit_content:$('#edit_content').val()
			},
			url:'editSuccess.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result == 'logout'){
					alert('로그인해야 작성할 수 있습니다.');
				}else if(data.result == 'success'){
					alert('수정 요청이 완료되었습니다!');
					initForm();
				}else{
					alert('등록시 오류 발생!');
				}
			},
			error:function(){
				alert('등록시 네트워크 오류 발생!');
			}
		});	
		event.preventDefault();
	});

	//입력 폼 초기화 
	function initForm(){
		$('#edit_cate').val('0').attr('selected','selected');
		$('textarea').val('');
		$('.count').text('0/300');	
	}
	

});