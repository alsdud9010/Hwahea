$(document).ready(function(){
	var flag=0;

	//=============================================================================리뷰 댓글 부분
	var currentPage;
	var count;
	var rowCount;
	var re_num;
	
	//모달창 클릭 시 
	$(document).on('click','.like_re',function(){
		re_num = $(this).attr('data-num');
		
		//기존 목록 초기화 
		$('.pmodal_reback').empty();
		
		//초기 데이터 (목록) 호출
		selectData(1,re_num);
	});
	
	//댓글 목록
	function selectData(pageNum, re_num){
		currentPage = pageNum;
		
		if(pageNum==1){
			//처음 호출시는 해당 ID의 div의 내부 내용물을 제거
			$('.pmodal_reback').empty();
		}
		//로딩 이미지 노출
		$('#loading').show();
		
		$.ajax({
			type:'post',
			data:{pageNum:pageNum,re_num:re_num},
			url:'listReply.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				//로딩이미지 감추기
				$('#loading').hide();
				count = data.count;
				rowCount = data.rowCount;
				var list = data.list;
				
				if(count < 0 || list == null){
					alert('목록 호출 오류 발생!');
				}else if(count = 0){
					output+='<div class="pmodal_rere">';
					output+='	<div>댓글이 없습니다.</div></div></div>';
				}else{
					$(list).each(function(index,item){
						var output = '<div class="pmodal_rere"><div class="pmodal_rpro">';
						output += '<input type="hidden" id="re_num" value="'+re_num+'">';
						//이미지 변경하기!!!!!!!!!!!!!!!!!
						output += '<img src="../assets/img/plus/profile.png">';
						output += '<span class="pmodal_wrere">'+item.re_id+'</span>';
						//등급 변경하기!!!!!!!!!!!!!!!!!!!!!!!!!!!
						output += '<span class="plusGrade"><input type="button" value="VIP"></span>';
						output += '<span class="pmodal_drere">'+item.rere_regdate+'</span>';
						output += '</div><div class="pmodal_brere"><div class="replyview">';
						output += '<div class="pmodal_trere">'+item.rere_content+'</div>';
						if($('#user_id').val()==item.re_id){
							//로그인 한 아이디가 댓글 작성자 아이디와 같을 때
							output += '<input type="button" data-num="'+item.rere_num+'" data-id="'+item.re_id+'" value="수정" class="modify-btn">';
							output += '<input type="button" data-num="'+item.rere_num+'" data-id="'+item.re_id+'" value="삭제" class="delete-btn">';
						}
						output += '<a class="pmodal_same" id="rere_write" data-num="'+item.rere_num+'" data-id="'+item.re_id+'">답글달기</a>';
						output += '</div></div><div class="margin-bottom-20"><hr class="hr-md"></div></div>';
					
						//문서 객체에 추가
						$('.pmodal_reback').append(output);
					});
					//paging button 처리
					if(currentPage>=Math.ceil(count/rowCount)){
						//다음 페이지가 없음.
						$('.paging-button').hide();
					}else{
						//다음페이지 존재
						$('.paging-button').show();
					}
				}
				
			},
			error:function(){
				//로딩 이미지 감추기
				$('#loading').hide();
				alert('네트워크 오류!');
			}			
		});
	}
	
	
	//댓글쓰기 버튼 누르면 댓글창으로 커서 이동
	$(document).on('click','.pmodal_re',function(){
		$('.pmodal_rtext').val('');
		$('.pmodal_rtext').focus();
	});
	
	
	//댓글창 유효성 체크 + 댓글 등록
	$(document).on('submit','#reply_form',function(event){
		if($('#re_content').val()==''){
			alert('댓글 내용을 입력해주세요!');
			$('#re_content').focus();
			return false;
		}
		
		var data = $(this).serialize();
		
		//등록
		$.ajax({
			type:'post',
			data:data,
			url:'writeReply.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result == 'logout'){
					alert('로그인해야 작성할 수 있습니다.');
				}else if(data.result == 'success'){
					//폼 초기화
					initForm();
					//목록 호출
					selectData(1,$('#re_num').val());
				}else{
					alert('등록시 오류 발생!');
				}
			},
			error:function(){
				alert('댓글 등록시 네트워크 오류 발생!');
			}
		});		
		//기본 이벤트 제거
		event.preventDefault();
	});
	
	//댓글 작성 폼 초기화
	function initForm(){
		$('#rere_content').val('');
		$('.pmodal_rcount .letter-count').text('300/300');	
	}
	
	//댓글 삭제
	$(document).on('click','.delete-btn',function(){
		//댓글 번호
		var rere_num = $(this).attr('data-num');
		
		//작성자 아이디
		var id = $(this).attr('data-id');
		
		$.ajax({
			type:'post',
			url:'deleteReply.do',
			data:{rere_num:rere_num,id:id},
			dataType:'json',
			cache:false, 
			timeout:30000,
			success:function(data){
				if(data.result=='logout'){
					alert('로그인해야 삭제할 수 있습니다.');
				}else if(data.result=='success'){
					alert('삭제 완료!');
					selectData(1,re_num);
				}else if(data.result=='wrongAccess'){
					alert('타인의 글은 삭제할 수 없습니다.');
				}else{
					alert('삭제시 오류 발생!!');
				}
			},
			error:function(){
				alert('네트워크 오류 발생!');
			}
			
		});
		
	});
	
	
	
	//답글달기 글씨 누르면 대댓글 폼 나타내기
	$(document).on('click','#rere_write',function(){
		
		//답글쓰기 버튼 다시 눌렀을 때,대댓글 작성폼 초기화
		if(flag == 1){
			flag = 0;
			return false;
		}
		//부모댓글 글번호
		var re_num = $(this).attr('data-num');
		//부모댓글의 작성자 아이디
		var id = $(this).attr('data-id');
		
		//답글쓰기폼 UI
		var rereply = '<form id="pre_form">';
		rereply += '<hr>';
		rereply += '	<input type="hidden" name="re_num" value="'+re_num+'" id="re_num">';//부모 댓글 번호
		rereply += '	<input type="hidden" name="user_id" value="'+$('#user_id').val()+'" id="user_id">';//현재 로그인된 아이디 (대댓글 쓰려는 아이디)
		rereply += '<div class="pmodal_reback2">';
		rereply += '<div class="pmodal_rpro2">';
		rereply += '<img src="../assets/img/plus/profile.png">';
		rereply += '<span class="pmodal_wrere">'+$('#user_id').val()+'</span>';
		rereply += '<span class="plusGrade"><input type="button" value="VIP"></span>';
		rereply += '</div>';
		rereply += '	<textarea rows="3" cols="75" name="rere_content" id="prere_content" class="pmodal_rtext2" placeholder="내용을 입력해주세요."></textarea>';
		rereply += '	<div id="prere_first"><span class="letter-count">300/300</span></div>';
		rereply += '	<div id="pre_second"><input type="submit" value="등록"> <input type="button" value="취소" class="prere_reset"></div>';
		rereply += '</div>';
		rereply += '</form>';
		
		$(this).text('');
		//문서 객체에 추가
		/*$('#pmodal_reform').append(rereply);*/
		/*$(this).parents('.pmodal_brere').append(rereply);*/
		$(this).append(rereply);

		flag = 1
	});
	
	$(document).on('keyup','textarea',function(){
		//입력한 글자 수를 구함
		var inputLength = $(this).val().length;
		if(inputLength > 300){//300자를 넘어선 경우
			alert('댓글은 300자를 초과해서 작성하실 수 없습니다.');
			$(this).val($(this).val().substring(0,300));
		}else{//300자 이하인 경우
			var remain = 300 - inputLength;

			remain += '/300';
			if($(this).attr('id')=='re_content'){
				//등록폼 글자수
				$('.letter-count').text(remain);
			}else if($(this).attr('id')=='rere_content'){
				//댓글등록폼 글자수
				$('.pmodal_rcount .letter-count').text(remain);
			}else if($(this).attr('id')=='prere_content'){
				//댓글폼 글자수
				$('#prere_first .letter-count').text(remain);
			}else if($(this).attr('id')=='mre_content'){
				//수정폼 글자수(id==mre_content)
				$('#mre_first .letter-count').text(remain);
			}
		}
			
	});
	
	//대댓글 작성폼 취소 버튼 클릭시 대댓글 작성폼 초기화
	$(document).on('click','.prere_reset',function(){
		initReForm();
		$('.pmodal_same').text('답글달기');
	});
	
	//대댓글 작성폼 초기화
	function initReForm(){
		$('#pre_form').remove();
	}
	
	
	//댓글 수정 버튼 클릭시 수정폼 노출
	$(document).on('click','.modify-btn',function(){
		//댓글 글번호
		var re_num = $(this).attr('data-num');
		//작성자 아이디
		var re_id = $(this).attr('data-id');
		//댓글 내용
		var content = $(this).parent().find('.pmodal_trere').text();
		
		
		//댓글 수정폼 UI
		var modifyUI = '<form id="mre_form">';
			modifyUI += '<input type="hidden" name="rere_num" id="rere_num" value="'+re_num+'">';
			modifyUI += '<input type="hidden" name="re_id" id="re_id" value="'+re_id+'">';
			modifyUI += '<textarea rows="3" cols="75" name="rere_content" id="mre_content" class="rep-content">'+content+'</textarea><br>';
			modifyUI += '<div id="mre_first"><span class="letter-count">300/300</span></div><br>';
			modifyUI += '<div id="mre_second">';
			modifyUI += '	<input type="submit" value="수정" id="'+re_id+'">';
			modifyUI += '	<input type="button" value="취소" class="re-reset">';
			modifyUI += '</div>';
			modifyUI += '</form>';
			
			//이전에 이미 수정하는 댓글이 있을 경우 수정버튼을 클릭하면 숨김 sub-item을 환원시키고 
			//수정폼을 초기화함.
			initModifyForm();
			
			//지금 클릭해서 수정하고자 하는 데이터는 감추기
			//수정버튼을 감싸고 있는 div
			$(this).parent().hide();
			
			//수정폼을 수정하고자 하는 데이터가 있는 div에 노출
			$(this).parents('.pmodal_brere').append(modifyUI);
			
			//입력한 글자수 셋팅
			var inputLength = $('#mre_content').val().length;
			var remain = 300-inputLength;
			remain += '/300';
			
			//문서객체에 반영
			$('#mre_first .letter-count').text(remain);
			
			
	});
	
	
	//댓글 수정폼 취소 버튼 클릭시 수정폼 초기화
	$(document).on('click','.re-reset',function(){
		initModifyForm();
	});
	
	
	//댓글 수정폼 초기화
	function initModifyForm(){
		$('.replyview').show();
		$('#mre_form').remove();
	}
	
	
	//댓글 수정하기
	$(document).on('submit','#mre_form',function(event){
		if($('#rere_content',this).val() == ''){
			alert('내용을 입력하세요!');
			$('#rere_content',this).focus();
			return false;
		}
		//폼에 입력한 데이터 반환
		var data = $(this).serialize();

		//수정
		$.ajax({
			url:'updateReply.do',
			type:'post',
			data:data,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result == 'logout'){
					alert('로그인해야 수정할 수 있습니다.');
				}else if(data.result == 'success'){
					$('#mre_form').parent().find('p').text($('#rere_content').val());				
					//수정폼 초기화
					initModifyForm();
					selectData(1,re_num);
					
				}else if(data.result == 'wrongAccess'){
					alert('타인의 글은 수정할 수 없습니다.');
				}
			},
			error:function(){
				alert('네트워크 오류');
			}
		});
		//기본이벤트 제거
		event.preventDefault();
	});

	
	
});