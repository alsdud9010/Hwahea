$(document).ready(function(){
	var flag=0;
	$('.like_like').on('click',function(){
		if(flag==1){//좋아요 취소하기(하트 비우기)
			if($(this).attr('data-num')==0){
				//flag==1 이고 data-num==0이면 하트를 비우고, flag 0으로 변경. 
				$('img',this).attr('src','../assets/img/plus/heart2.png');
				
				$(this).attr('data-num','1');
				flag=0;
				return false;
			}else{
				//flag==1 이고 data-num==1이면 좋아요 눌린 상태가 아니므로 아무 것도 변하지 않음.
				flag=0;
			}
		}
		
		if(flag==0){//좋아요 누르기(하트 채우기)
			if($(this).attr('data-num')==1){
				//flag==0 이고 data-num==1이면 하트를 채우고, flag=1로 변경
				$('img',this).attr('src','../assets/img/plus/heart.png');
				
				$(this).attr('data-num','0'); 
				flag=1;
			}else{
				//flag==0, data-num==0 이면 아무 것도 변하지 않음.
				flag=1;
			}
		}
	});	
	

	
	//모달창 좋아요 누를 때 색상 변화
	$(document).on('click','.pmodal_like',function(){
		var like = document.getElementById('pmodal_l');
		
		if(flag == 1){
			//좋아요 해제
			like.src = '../assets/img/plus/heart2.png';
			$('.pmodal_like').css({
				color:'#83B14E'
			});
			flag = 0;
			return false;
		}
		
		like.src = '../assets/img/plus/heart.png';
		$('.pmodal_like').css({
			color:'#83B14E'
		});
		
		flag = 1;
	});
	
	var currentPage;
	var count;
	var rowCount;
	
	//댓글 목록
	function selectData(pageNum, num){
		currentPage = pageNum;
		
		if(pageNum==1){
			//처음 호출시는 해당 ID의 div의 내부 내용물을 제거
			$('.pmodal_reback').empty();
		}
		//로딩 이미지 노출
		$('#loading').show();
		
		$.ajax({
			type:'post',
			data:{pageNum:pageNum,num:num},
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
				}else{
					$(list).each(function(index,item){
						var output = '<div class="pmodal_rere"><div class="pmodal_rpro">';
						//이미지 변경하기!!!!!!!!!!!!!!!!!
						output += '<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png">';
						output += '<span class="pmodal_wrere">'+item.re_id+'</span>';
						//등급 변경하기!!!!!!!!!!!!!!!!!!!!!!!!!!!
						output += '<span class="plusGrade"><input type="button" value="VIP"></span>';
						output += '<span class="pmodal_drere">'+item.rere_regdate+'</span>';
						output += '</div><div class="pmodal_brere"><div class="replyview">';
						output += '<div class="pmodal_trere">'+item.rere_content+'</div>';
						output += '<a class="pmodal_same" id="rere_write">댓글달기</a>';
						output += '<input type="button" value="수정" class="modify-btn">';
						output += '<input type="button" value="삭제">';
						output += '</div></div><div class="margin-bottom-20"><hr class="hr-md"></div></div>';
					
						if($('#user_id').val()==item.id){
							//로그인 한 아이디가 댓글 작성자 아이디와 같을 때
							output += '<input type="button" data-num="'+item.re_num+'" data-id="'+item.id+'" value="수정" class="modify-btn">';
							output += '<input type="button" data-num="'+item.re_num+'" data-id="'+item.id+'" value="삭제" class="delete-btn">';
						}
						/*output += 		'<hr size="1" noshade>';
						output += 	'</div>';
						output += '</div>';*/
						
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
	$(document).on('click','.pmodal_rtext',function(){
		if($('.pmodal_rtext').val()=='내용을 입력해 주세요'){
			$('.pmodal_rtext').val('');
		}
	});
	
	//댓글달기 글씨 누르면 대댓글 폼 나타내기
	$(document).on('click','#rere_write',function(){
		//댓글쓰기 버튼 다시 눌렀을 때,대댓글 작성폼 초기화
		if(flag == 1){
			initReForm();
			flag = 0;
			return false;
		}
		//댓글 글번호
		/*var re_num = $(this).attr('data-num');
		//작성자 아이디
		var id = $(this).attr('data-id');
		//댓글 내용
		var content = $(this).parent().find('p').text(); */
		
		//댓글쓰기폼 UI
		var rereply = '<form id="pre_form">';
		/*rereply += '	<input type="hidden" name="num" value="'+re_num+'" id="num">';
		rereply += '	<input type="hidden" name="id" value="'+id+'" id="user_id">';
		rereply += '';
		rereply += $('#user_id').val(); */
		rereply += '<div class="pmodal_reback2">';
		rereply += '<div class="pmodal_rpro2">';
		rereply += '<img src="../assets/img/plus/profile.png">';
		rereply += '<span class="pmodal_wrere">blue</span>';
		rereply += '<span class="plusGrade"><input type="button" value="VIP"></span>';
		rereply += '<span class="pmodal_drere"></span></div>';
		rereply += '	<textarea rows="3" cols="55" name="re_content" id="prere_content" class="pmodal_rtext2"></textarea>';
		rereply += '	<div id="prere_first"><span class="letter-count">300/300</span></div>';
		rereply += '	<div id="pre_second"><input type="submit" value="등록"> <input type="button" value="취소" class="prere_reset"></div>';
		rereply += '</div>';
		rereply += '</form>';
		
		//문서 객체에 추가
		/*$('#pmodal_reform').append(rereply);*/
		$(this).parents('.pmodal_brere').append(rereply);

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
			if($(this).attr('id')=='pre_content'){
				//등록폼 글자수
				$('.letter-count').text(remain);
			}else if($(this).attr('id')=='pmodal_rtext'){
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
	});
	
	//대댓글 작성폼 초기화
	function initReForm(){
		$('#pre_form').remove();
	}
	
	
	//댓글 수정 버튼 클릭시 수정폼 노출
	$(document).on('click','.modify-btn',function(){
		/*//댓글 글번호
		var re_num = $(this).attr('data-num');
		//작성자 아이디
		var id = $(this).attr('data-id');*/
		//댓글 내용
		var content = $(this).parent().find('.pmodal_trere').text();
		
		
		//댓글 수정폼 UI
		var modifyUI = '<form id="mre_form">';
			/*modifyUI += '<input type="hidden" name="re_num" id="mre_num" value="'+re_num+'">';
			modifyUI += '<input type="hidden" name="id" id="id" value="'+id+'">';*/
			modifyUI += '<textarea rows="3" cols="75" name="re_content" id="mre_content" class="rep-content">'+content+'</textarea><br>';
			modifyUI += '<div id="mre_first"><span class="letter-count">300/300</span></div><br>';
			modifyUI += '<div id="mre_second">';
			modifyUI += '	<input type="submit" value="수정">';
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
	
	

	/*----------------성분 상세보기 팝업*/
	var win;
	
	$('#ingreimg').on('click',function(){
		win = window.open('ingreSpec.do','성분','width=950,height=1000,toolbar=no,location=no');
		win.moveTo(200, 200);
	});
	
	$('#ingreimg2').on('click',function(){
		win = window.open('ingreSpec.do','성분','width=950,height=1000,toolbar=no,location=no');
		win.moveTo(200, 200);
	});
	
	$('#pibuimg').on('click',function(){
		win = window.open('ingreSpec.do','성분','width=950,height=1000,toolbar=no,location=no');
		win.moveTo(200, 200);
	});
	
	$('#giimg').on('click',function(){
		win = window.open('ingreSpec.do','성분','width=950,height=1000,toolbar=no,location=no');
		win.moveTo(200, 200);
	});

	
	
	
	
	
	
	
	
	
	
	
	
	
});