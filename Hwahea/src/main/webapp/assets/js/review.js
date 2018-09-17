$(document).ready(function(){
	
	
	//=============================================================================제품 정보 부분 
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

	//=============================================================================성분 상세보기 팝업
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

	
	
	//=============================================================================모달창에서 리뷰 1개 출력하기 
	$(document).on('click','.like_re',function(){
		//리뷰 번호
		var re_num = $(this).attr('data-num');
		var re_id=$(this).attr('data-id');
		
		
		//기존 내용 초기화
		$('#review_append').empty();
		
		$.ajax({
			type:'post',
			data:{re_num:re_num,re_id:re_id},
			url:'oneReview.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				$(data.list).each(function(index,item){
						var review = '';
						review += '<div id="r_rate">';
						review += '<img src="../assets/img/star.png"> ';
						review += '<span class="reg_date"> '+item.re_regdate+'</span>';
						review += '</div><div class="margin-bottom-35"><hr class="hr-md"></div>';
						review += '<div id="review"><div id="good"><table><tr>';
						review += '<td id="g_icon"><img src="../assets/img/like.png"></td>';
						review += '<td id="mcontent">'+item.re_good+'</td>';
						review += '</tr></table></div><hr size="1" noshade>';
						review += '<div id="bad"><table><tr>';
						review += '<td id="b_icon"><img src="../assets/img/bad.png"></td>';
						review += '<td id="mcontent">'+item.re_bad+'</td>';
						review += '</tr></table></div><hr size="1" noshade>';
						review += '<div id="tip"><table><tr>';
						if(item.re_tip){
							review += '<td id="t_icon"><img src="../assets/img/tip.png"></td>';
							review += '<td id="mcontent">'+item.re_tip+'</td>';
						}
						review += '</tr></table></div>';
						if(item.re_filename1 || item.re_filename2 || item.re_filename3){
							review += '<div id="photos"><img src="imageView.do?re_num='+re_num+'&cnt=3"></div></div>';
							/*review += '<div id="photos"><img src="../assets/img/photo.PNG"></div></div>';*/
						}
						//아이디 비교 하기 넣기!
						if(re_id==$('#user_id').val()){
							review += '<div class="pmodal_ud"><input type="button" value="수정"><input type="button" value="삭제"></div>';
						}
						review += '<div class="pmodal_lrs"><ul>';
						review += '<li class="pmodal_like"><img src="../assets/img/plus/heart2.png" id="pmodal_l"> 좋아요</li>';
						review += '<li class="pmodal_re"><img src="../assets/img/plus/comments.png"> 댓글달기</li>';
						review += '<li class="pmodal_re" data-target="#myModal" data-toggle="modal"><img src="../assets/img/review/alarm.png"> 신고하기</li>';
						review += '</ul></div>';
						
						$('#review_append').append(review);
						
						var reply ='';
						
						reply += '<div class="pmodal_rform">';
						reply += '<form id="reply_form" action="writeReply.do">';
						reply += '<input type="hidden" name="re_num" value="'+item.re_num+'" id="re_num">';
						reply += '<input type="hidden" name="user_id" value="'+$('#user_id').val()+'" id="user_id">';
						reply += '<textarea name="rere_content" id="rere_content" cols="70" rows="4" placeholder="내용을 입력해 주세요."></textarea>';
						reply += '<input type="submit" value="댓글달기" ></form>';
						reply += '<div class="pmodal_rcount"><span class="letter-count">0 / 300</span></div> </div>';
						
						$('#reply_append').empty();
						$('#reply_append').append(reply);
				});
				$(data.member).each(function(index,member){
					var writer = '';
					
					writer += '<table><tr>';
					writer += '<td rowspan="3" id="w_profile"><img src="../assets/img/user.png"></td>';
					writer += '<td id="nick">'+member.m_id+'</td>';
					writer += '</tr><tr>';
					writer += '<td id="type">'+member.m_age;
					if(member.m_skintype==0){
						writer += ' / 건성';
					}else if(member.m_skintype==2){
						writer += ' / 지성';
					}else if(member.m_skintype==3){
						writer += ' / 복합성';
					}
					if(member.m_atopy==1){
						writer += ' / 아토피';
					}
					if(member.m_pimple==1){
						writer += ' / 여드름';
					}
					if(member.m_susceptilbility==1){
						writer += ' / 민감성';
					}
					writer += '</td>';
					writer += '</tr><tr>';
					writer += '<td id="recnt">리뷰 xx개</td>';
					writer += '<td id="bookmark"><img src="../assets/img/user_like.png"></td>';
					writer += '</tr> </table>';
					
					$('.writer').empty();
					$('.writer').append(writer);
					
				});
				
				
			},
			error:function(data){
				alert('리뷰 1개 호출 네트워크 오류');
			}
		});
	});
	
});