$(document).ready(function(){
	
	var flag = 0;
	
	//좋아요, 스크랩 누르면 사진 변화
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
	$(document).on('click','.pmodal_scrap',function(){
		var scrap = document.getElementById('pmodal_s');
		
		if(flag == 1){
			//스크랩 해제
			scrap.src = '../assets/img/plus/scrap2.png';
			$('.pmodal_scrap').css({
				backgroundColor:'#fff',
				color:'#83B14E'
			});
			flag = 0;
			return false;
		}
		
		scrap.src = '../assets/img/plus/scrap.png';
		$('.pmodal_scrap').css({
			backgroundColor:'#83B14E',
			color:'#fff'
		});
		flag = 1;
		
	});
	//좋아요, 스크랩 hover 설정
	$('.pmodal_like').hover(function(){
		if(flag == 0){
			$('.pmodal_like').css({
				backgroundColor:'#83B14E',
				color:'#fff',
				cursor:'pointer'
			});
		}else{
			$('.pmodal_like').css({
				backgroundColor:'#fff',
				color:'#83B14E',
				cursor:'pointer'
			});
		}
		
	},function(){
		if(flag == 0){
			$('.pmodal_like').css({
				backgroundColor:'#fff',
				color:'#83B14E',
				cursor:'pointer'
			});
		}else{
			$('.pmodal_like').css({
				backgroundColor:'#83B14E',
				color:'#fff',
				cursor:'pointer'
			});
		}
		
	});
	$('.pmodal_scrap').hover(function(){
		if(flag == 0){
			$('.pmodal_scrap').css({
				backgroundColor:'#83B14E',
				color:'#fff',
				cursor:'pointer'
			});
		}else{
			$('.pmodal_scrap').css({
				backgroundColor:'#fff',
				color:'#83B14E',
				cursor:'pointer'
			});
		}
		
	},function(){
		if(flag == 0){
			$('.pmodal_scrap').css({
				backgroundColor:'#fff',
				color:'#83B14E',
				cursor:'pointer'
			});
		}else{
			$('.pmodal_scrap').css({
				backgroundColor:'#83B14E',
				color:'#fff',
				cursor:'pointer'
			});
		}
		
	});
	
	
/*============================ 댓글 ================================*/
	
	var currentPage;
	var count;
	var rowCount;
	var hp_num;
	var m_auth;
	
	//댓글쓰기 버튼 누르면 댓글창으로 커서 이동
	$(document).on('click','.pmodal_re',function(){
		$('.pmodal_rtext').val('');
		$('.pmodal_rtext').focus();
	});
	
	//댓글 목록
	$(document).on('click','.click_pmodal',function(){
		hp_num = $(this).attr('data-num');
		m_auth = $(this).attr('data-auth');
		
		//초기 데이터 목록 호출
		selectData(1, hp_num);
	});
	
	function selectData(pageNum, hp_num){
		currentPage = pageNum;
		
		if(pageNum==1){
			$('#prere_area').empty();
		}
		
		$.ajax({
			type:'post',
			data:{pageNum:pageNum,hp_num:hp_num},
			url:'listReply.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				count = data.count;
				rowCount = data.rowCount;
				var output = '<div class="pmodal_reback" id="pmodal_reply"><div class="pre_total">전체('+count+')</div>';
				output+='<div class="pmodal-bottom-10"><hr class="hr-md"></div>';
				
				if(count < 0 || data.list == null){
					alert('댓글 목록 호출 오류!');
					
				}else if(count = 0){
					output+='<div class="pmodal_rere">';
					output+='	<div>댓글이 없습니다.</div></div></div>';
				}else{
					$(data.list).each(function(index,item){
						if(hp_num == item.hp_num){
								if(item.hpre_depth == 0){
									output+='	<div class="pmodal_rere">';
									output+='		<div class="pmodal_rpro">';
									output+='			<img src="../assets/img/plus/profile.png">';
									output+='			<span class="pmodal_wrere">'+item.hpre_id+'</span>';
									if(item.m_auth==1){
										output+='	<span class="grade_welcome"><input type="button" value="Welcome"></span>';
									}else if(item.m_auth==2){
										output+='	<span class="grade_family"><input type="button" value="Family"></span>';
									}else if(item.m_auth==3){
										output+='	<span class="grade_vip"><input type="button" value="VIP"></span>';
									}else if(item.m_auth==4){
										output+='	<span class="grade_vvip"><input type="button" value="VVIP"></span>';
									}
									output+='			<span class="pmodal_drere">'+item.hpre_date+'</span></div>';
									output+='		<div class="pmodal_trere">'+item.hpre_content+'</div>';
									output+='		<div class="pmodal_brere">';
									
									if($('#user_id').val()==item.hpre_id){
										//로그인한 아이디가 댓글 작성자 아이디와 같을 때
										output+='		<a class="pmodal_same" id="rere_write" data-num="'+item.hpre_num+'" data-depth="'+item.hpre_depth+'">댓글달기</a>';
										output+='		<span class="pre_btn"><input type="button" value="수정">';
										output+='			  <input type="button" value="삭제"></span>';
									}else{
										output+='		<a class="pmodal_diff" id="rere_write" data-num="'+item.hpre_num+'" data-depth="'+item.hpre_depth+'">댓글달기</a>';
									}
									output+='<div id="pmodal_reform"></div>';
									output+='<div id="pmodal_'+item.hpre_num+'"></div>'
									output+='<div class="margin-bottom-20"><hr class="hr-md"> </div>';
									output+='</div></div>';
									
								}else if(item.hpre_depth == 1){
									output+='<div class="prere_back">';
									output+='<div class="pmodal_rere">';
									output+='<div class="pmodal_rpro">';
									output+='	<span class="prere_depth"><img src="../assets/img/shop/answer-point.png"></span>';
									output+='	<img src="../assets/img/plus/profile.png">';
									output+='	<span class="pmodal_wrere">'+item.hpre_id+'</span>';
									if(m_auth==1){
										output+='	<span class="grade_welcome"><input type="button" value="Welcome"></span>';
									}else if(m_auth==2){
										output+='	<span class="grade_family"><input type="button" value="Family"></span>';
									}else if(m_auth==3){
										output+='	<span class="grade_vip"><input type="button" value="VIP"></span>';
									}else if(m_auth==4){
										output+='	<span class="grade_vvip"><input type="button" value="VVIP"></span>';
									}
									output+='	<span class="prere_time">'+item.hpre_date+'</span></div>';
									output+='<div class="prere_text">'+item.hpre_content+'</div>';
									output+='<div class="pmodal_brere">';
									if($('#user_id').val()==item.hpre_id){
										//로그인한 아이디가 댓글 작성자 아이디와 같을 때
										output+='	<a class="pmodal_same" id="rere_write" data-num="'+item.hpre_num+'" data-depth="'+item.hpre_depth+'">댓글달기</a>';
										output+='		<span class="pre_btn"><input type="button" value="수정">';
										output+='			  <input type="button" value="삭제"></span>';
									}else{
										output+='	<a class="pmodal_diff" id="rere_write" data-num="'+item.hpre_num+'" data-depth="'+item.hpre_depth+'">댓글달기</a>';
									}
									output+='<div id="pmodal_reform"></div>';
									output+='<div class="margin-bottom-20"><hr class="hr-md"> </div>';
									output+='</div></div></div>';
									
								}else if(item.hpre_depth >= 2){
									output+='<div class="prere_back">';
									output+='<div class="pmodal_rere">';
									output+='<div class="pmodal_rpro">';
									output+='	<span class="prere_depth"><img src="../assets/img/shop/answer-point.png"></span>';
									output+='	<img src="../assets/img/plus/profile.png"> ';
									output+='	<span class="pmodal_wrere">'+item.hpre_id+'</span>';
									if(item.m_auth==1){
										output+='	<span class="grade_welcome"><input type="button" value="Welcome"></span>';
									}else if(item.m_auth==2){
										output+='	<span class="grade_family"><input type="button" value="Family"></span>';
									}else if(item.m_auth==3){
										output+='	<span class="grade_vip"><input type="button" value="VIP"></span>';
									}else if(item.m_auth==4){
										output+='	<span class="grade_vvip"><input type="button" value="VVIP"></span>';
									}
									output+='	<span class="prere_time">'+item.hpre_date+'</span></div>';
									output+='<div class="prere_text"><span class="rere_writer">dragon</span>'+item.hpre_content+'</div>';
									output+='<div class="pmodal_brere">';
									if($('#user_id').val()==item.hpre_id){
										//로그인한 아이디가 댓글 작성자 아이디와 같을 때
										output+='	<a class="pmodal_same" id="rere_write" data-num="'+item.hpre_num+'" data-depth="'+item.hpre_depth+'">댓글달기</a>';
										output+='		<span class="pre_btn"><input type="button" value="수정">';
										output+='			  <input type="button" value="삭제"></span>';
									}else{
										output+='	<a class="pmodal_diff" id="rere_write" data-num="'+item.hpre_num+'" data-depth="'+item.hpre_depth+'">댓글달기</a>';
									}
									output+='	<div class="pmodal_reform" data-num="1"></div>';
									output+='	<div class="margin-bottom-20"><hr class="hr-md"> </div>';
									output+='</div></div></div>';
								}
								
						}
					});
					
					output += '</div>';
					
					//문서 객체에 추가
					$('#prere_area').append(output);
					
					/*//paging button 처리
					if(currentPage>=Math.ceil(count/rowCount)){
						//다음 페이지가 없음.
						$('.paging-button').hide();
					}else{
						//다음페이지 존재
						$('.paging-button').show();
					}*/
				}
			},
			error:function(){
				//로딩 이미지 감추기
				$('#loading').hide();
				alert('네트워크 오류!');
			}
		});
	}
	
	//댓글창 초기화
	function initReply(){
		$('#pmodal_reply').remove();
	}
	
	//댓글창 유효성 체크 + 댓글 등록
	$(document).on('submit','#preply_form',function(event){
		if($('#hpre_content').val()==''){
			alert('댓글 내용을 입력하세요!');
			$('#hpre_content').focus();
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
				if(data.result=='logout'){
					alert('로그인해야 작성할 수 있습니다.');
				}else if(data.result == 'success'){
					//폼 초기화
					initForm();
					
					//목록 호출
					selectData(1,hp_num);
					
				}else{
					alert('등록시 오류 발생!');
				}
			},
			error:function(){
				alert('등록시 네트워크 오류 발생!');
			}
		});
		
		//기본 이벤트 제거
		event.preventDefault();
		
	});
	
	//댓글 작성 폼 초기화
	function initForm(){
		$('#hpre_content').val('');
		$('.pmodal_rcount .letter-count').text('300/300');
	}
	
/*=========================== 대댓글 ================================*/
	//댓글달기 글씨 누르면 대댓글 폼 나타내기
	$(document).on('click','#rere_write',function(){
		//댓글쓰기 버튼 다시 눌렀을 때,대댓글 작성폼 초기화
		if(flag == 1){
			initReForm();
			flag = 0;
			return false;
		}
		//작성자 아이디
		var user_id = $('#user_id').val();
		//댓글 글번호
		var hpre_num = $(this).attr('data-num');
		//댓글 depth
		var hpre_depth = $(this).attr('data-depth');
		
		//댓글쓰기폼 UI
		var rereply = '<form id="pre_form">';
		rereply += '	<input type="hidden" name="hp_num" value="'+hp_num+'" id="hp_num">';
		rereply += '	<input type="hidden" name="hpre_num" value="'+hpre_num+'" id="hpre_num">';
		rereply += '	<input type="hidden" name="id" value="'+user_id+'" id="user_id">';
		rereply += '	<input type="hidden" name="hpre_depth" value="'+(Number(hpre_depth)+1)+'" id="hpre_depth">';
		rereply += '<div class="pmodal_reback2">';
		rereply += '<div class="pmodal_rpro2">';
		rereply += '<img src="../assets/img/plus/profile.png">';
		rereply += '<span class="pmodal_wrere">'+user_id+'</span>';
		if(m_auth==1){
			rereply+='	<span class="grade_welcome"><input type="button" value="Welcome"></span>';
		}else if(m_auth==2){
			rereply+='	<span class="grade_family"><input type="button" value="Family"></span>';
		}else if(m_auth==3){
			rereply+='	<span class="grade_vip"><input type="button" value="VIP"></span>';
		}else if(m_auth==4){
			rereply+='	<span class="grade_vvip"><input type="button" value="VVIP"></span>';
		}
		rereply += '	<div id="pre_second"><textarea rows="4" cols="55" name="hpre_content" id="prere_content" class="pmodal_rtext2"></textarea>';
		rereply += '	<span class="prere_btn"><input type="submit" value="등록"> <input type="button" value="취소" class="prere_reset"></span></div>';
		rereply += '	<div id="prere_first"><span class="letter-count">300/300</span></div>';
		rereply += '</div>';
		rereply += '</form>';
		
		//문서 객체에 추가
		/*$('#pmodal_reform').append(rereply);*/
		$(this).parents('.pmodal_brere').append(rereply);

		flag = 1
	});
	
	//대댓글창 유효성 체크 + 대댓글 등록*********************************************************
	$(document).on('submit','#pre_form',function(event){
		if($('.pmodal_rtext2').val()==''){
			alert('댓글 내용을 입력하세요!');
			$('.pmodal_rtext2').focus();
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
				if(data.result=='logout'){
					alert('로그인해야 작성할 수 있습니다.');
				}else if(data.result == 'success'){
					//폼 초기화
					initReForm();
					
					//목록 호출
					selectData(1,hp_num);
					
				}else{
					alert('등록시 오류 발생!');
				}
			},
			error:function(){
				alert('등록시 네트워크 오류 발생!');
			}
		});
		
		//기본 이벤트 제거
		event.preventDefault();
		
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