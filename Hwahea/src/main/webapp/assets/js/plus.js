$(document).ready(function(){
	/*====================== 모달 ==================*/
	$('.click_pmodal').click(function(){
		var hp_num = $(this).attr('data-num');
		
		//기존 내용 초기화
		$('#pmodal_append').empty();
		
		$.ajax({
			type:'post',
			data:{hp_num:hp_num},
			url:'plusDetailAjax.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				$(data.list).each(function(index,item){
					if(hp_num == item.hp_num){
						var output = '<div id="fixed-header" class="fixed-header-noscroll">';
						output+='	<span class="pmodal_left">';
						output+='		<img class="pmodal_close" src="../assets/img/plus/modalLeft.png" data-dismiss="modal"></span>';
						output+='	<span class="pmodal_header">';
						output+='		<a href="${pageContext.request.contextPath}/plus/plusTrend.do">신상&amp;트렌드</a></span>';
						output+='		<button class="close" data-dismiss="modal">&times;</button>';
						output+='</div>';
						output+='<div class="modal-dialog modal-lg">';
						output+='<div class="modal-content">';
						output+='<div class="modal-body pmodal_c ex-body" style="text-align: center;"><br><br>';
						output+='	<img class="plusThumbnail3" src="../assets/img/plus/plusThumbnail.PNG" alt="">';
						output+='	<div class="pmodal_title">'+item.hp_title+'</div>';
						output+='	<div class="pmodal_profile">';
						output+='		<img src="../assets/img/plus/profile.png">'+item.m_id+'</div>';
						output+='	<div class="pmodal_icon">';
						output+='		<span><img class="plusLike" src="../assets/img/plus/heart.png" alt="like">'+item.hp_like+'</span>';
						output+='		<span><img class="plusLike" src="../assets/img/plus/scrap.png" alt="scrap">'+item.hp_scrap+'</span>';
						output+='		<span><img class="plusComments" src="../assets/img/plus/comments.png" alt="reply">77</span>';
						output+='		<span><img class="plusComments" src="../assets/img/plus/hits.png" alt="reply">'+item.hp_hit+'</span> ';
						output+='		<span class="pmodal_regDate">'+item.hp_reg_date+'</span></div>';
						output+='	<div class="margin-bottom-35"><hr class="hr-md"></div>';
						output+='	<div>'+item.hp_content+'</div>';
						output+='	<div class="pmodal_ud">';
						output+='		<input type="button" value="수정"> <input type="button" value="삭제"></div>';
						output+='	<div class="margin-bottom-20"><hr class="hr-md"></div>';
						output+='	<div class="pmodal_lrs">';
						output+='	<ul><li class="pmodal_like"><img src="../assets/img/plus/heart2.png" id="pmodal_l">좋아요</li>';
						output+='		<li class="pmodal_scrap"><img src="../assets/img/plus/scrap2.png" id="pmodal_s">스크랩</li>';
						output+='		<li class="pmodal_re"><img src="../assets/img/plus/comments.png">댓글달기</li></ul></div>';
						output+='<div class="pmodal_reply">';
						output+='	<div class="pmodal_wpro"><img src="../assets/img/plus/profile.png"><br>'+item.m_id+'</div>';
						output+='	<div class="pmodal_rform">';
						output+='		<form id="preply_form">';
						output+='		<input type="hidden" name="hp_num" value="'+item.hp_num+'" id="hp_num">';
						output+='		<input type="hidden" name="id" value="'+$('#user_id').val()+'" id="user_id">';
						output+='		<textarea class="pmodal_rtext" name="hpre_content" id="hpre_content" cols="71" rows="4" placeholder="내용을 입력해주세요"></textarea>';
						output+='		<input type="submit" value="댓글달기"></form></div>';
						output+='<div class="pmodal_rcount"><span class="letter-count">300 / 300</span></div>';
						output+='<div style="margin-top:-23px;margin-bottom:5px;"><hr class="hr-lg"></div>';
						output+='<div id="prere_area"></div>';
						output+='<div id="loading" style="display: none;">';
						output+='	<img src="${pageContext.request.contextPath}/assets/img/review/ajax-loader.gif"></div>';
						output+='</div></div>';
						output+='<div class="modal-footer">';
						output+='	<input type="button" value="목록" onclick="location.href="../plus/plusTrend.do"">';
						output+='	<input type="button" value="닫기" data-dismss="modal">';
						output+='</div>';
						output+='</div></div>';
						
						$('#pmodal_append').append(output);
					}
				});
			},
			error:function(data){
				alert('네트워크 오류');
			}
		});
	});	
});