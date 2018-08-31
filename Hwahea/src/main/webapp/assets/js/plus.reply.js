$(document).ready(function(){
	
	//좋아요, 스크랩 누르면 사진 변화
	$(document).on('click','.pmodal_like',function(){
		
	});
	
	//댓글쓰기 버튼 누르면 대댓글 폼 나타내기
	$(document).on('click','#rere_write',function(){
			//댓글 글번호
/*			var re_num = $(this).attr('data-num');
			//작성자 아이디
			var id = $(this).attr('data-id');
			//댓글 내용
			var content = $(this).parent().find('p').text();
	*/
			//댓글쓰기폼 UI
			var rereply = '<form id="pre_form">';
/*			rereply += '	<input type="hidden" name="num" value="'+re_num+'" id="num">';
			rereply += '	<input type="hidden" name="id" value="'+id+'" id="user_id">';
			rereply += '';
			rereply += $('#user_id').val(); */
			rereply += '<div class="pmodal_reback2">';
			rereply += '<div class="pmodal_rpro2">';
			rereply += '<img src="../assets/img/plus/profile.png">';
			rereply += '<span class="pmodal_wrere">blue</span>';
			rereply += '<span class="plusGrade"><input type="button" value="VIP"></span>';
			rereply += '<span class="pmodal_drere">1시간 전</span></div>';
			rereply += '	<textarea rows="3" cols="55" name="re_content" id="prere_content" class="pmodal_rtext2"></textarea>';
			rereply += '	<div id="prere_first"><span class="letter-count">0/300</span></div>';
			rereply += '	<div id="pre_second"><input type="submit" value="등록"> <input type="button" value="취소" class="prere_reset"></div>';
			rereply += '</div>';
			rereply += '</form>';
			
			//문서 객체에 추가
			$('#pmodal_reform').append(rereply);
			
			//입력한 글자수 셋팅
			var inputLength = $('#prere_content').val().length;
			var remain = 300 - inputLength;
			remain += '/300';
	
			//문서 객체에 반영
			$('#prere_first .letter-count').text(remain);
		});
	
	//대댓글 작성폼 취소 버튼 클릭시 대댓글 작성폼 초기화
	$(document).on('click','.prere_reset',function(){
		initReForm();
	});
	
	//대댓글 작성폼 초기화
	function initReForm(){
		$('#pre_form').remove();
	}
	
});