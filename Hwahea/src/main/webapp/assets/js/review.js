$(document).ready(function(){
	
	var flag = 0;
	
	//좋아요 누르면 사진 변화
	$(document).on('click','#like_like',function(){
		var like = document.getElementById('like_l');
		
		if(flag == 1){
			//좋아요 해제
			like.src = '../assets/img/plus/heart2.png';
			$('#like_like').css({
				backgroundColor:'#fff',
				color:'#83B14E'
			});
			flag = 0;
			return false;
		}
		
		like.src = '../assets/img/plus/heart.png';
		$('#like_like').css({
			backgroundColor:'#83B14E',
			color:'#fff'
		});
		
		flag = 1;
	});
	//좋아요, 스크랩 hover 설정
	$('#like_like').hover(function(){
		if(flag == 0){
			$('#like_like').css({
				backgroundColor:'#83B14E',
				color:'#fff',
				cursor:'pointer'
			});
		}else{
			$('#like_like').css({
				backgroundColor:'#fff',
				color:'#83B14E',
				cursor:'pointer'
			});
		}
		
	},function(){
		if(flag == 0){
			$('#like_like').css({
				backgroundColor:'#fff',
				color:'#83B14E',
				cursor:'pointer'
			});
		}else{
			$('#like_like').css({
				backgroundColor:'#83B14E',
				color:'#fff',
				cursor:'pointer'
			});
		}
		
	});
	
	//모달창 좋아요 누를 때 색상 변화
	$(document).on('click','.pmodal_like',function(){
		var like = document.getElementById('pmodal_l');
		
		if(flag == 1){
			//좋아요 해제
			like.src = '../assets/img/plus/heart2.png';
			$('.pmodal_like').css({
				backgroundColor:'#fff',
				color:'#83B14E'
			});
			flag = 0;
			return false;
		}
		
		like.src = '../assets/img/plus/heart.png';
		$('.pmodal_like').css({
			backgroundColor:'#83B14E',
			color:'#fff'
		});
		
		flag = 1;
	});
	
	
	
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
		$('#pmodal_reform').append(rereply);

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
				$('.pmodal_rcount .letter-count').text(remain);
			}else if($(this).attr('id')=='prere_content'){
				//댓글폼 글자수
				$('#prere_first .letter-count').text(remain);
			}/*else{
				//수정폼 글자수(id==mre_content)
				$('#pre_first .letter-count').text(remain);
			}*/
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
	




	
	
	
});