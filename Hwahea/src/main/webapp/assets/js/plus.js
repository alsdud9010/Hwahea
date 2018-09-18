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
	
	
	/*======================화해플러스 카테고리 별 메인페이지=======================*/
	
/*	var hp_kind = null;
	//신상&트렌드
	$(document).on('click','#plusTrend',function(){
		$('#plusC_list').empty();
		hp_kind = $(this).attr('data-num');
		plusUrl('plusTrend.do',hp_kind);
	});
	//인기템리뷰
	$(document).on('click','#plusReview',function(){
		$('#plusC_list').empty();
		hp_kind = $(this).attr('data-num');
		plusUrl('plusReview.do',hp_kind);
	});
	//화장품팩트체크
	$(document).on('click','#plusFactCheck',function(){
		$('#plusC_list').empty();
		hp_kind = $(this).attr('data-num');
		plusUrl('plusFactCheck.do',hp_kind);
	});
	//뷰티팁
	$(document).on('click','#plusBeauty',function(){
		$('#plusC_list').empty();
		hp_kind = $(this).attr('data-num');
		plusUrl('plusBeauty.do',hp_kind);
	});
	//쇼핑팁
	$(document).on('click','#plusShopping',function(){
		$('#plusC_list').empty();
		
		plusUrl('plusShopping.do',hp_kind);
	});
	
	function plusUrl(url,hp_kind){
		$.ajax({
			type:'post',
			data:{hp_kind:hp_kind},
			url:url,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				$(document).on('click','.plusCategory',function(){
					hp_kind = $(this).attr('data-num');
					getCategory(data.list,hp_kind);
				});
			},
			error:function(){
				alert('네트워크 오류!');
			}
		});
	}*/
	
/*	function getCategory(list,hp_kind){
		var output = '<div class="row">';
		output += '<div class="plusCategory">';
		output += '<h2><strong>';
		var plus_title = null;
		if(hp_kind == 0){
			plus_title = '신상&amp;트렌드';
		}else if(hp_kind == 1){
			plus_title = '인기템리뷰';
		}else if(hp_kind == 2){
			plus_title = '화장품 팩트체크';
		}else if(hp_kind == 3){
			plus_title ='뷰티팁';
		}else if(hp_kind == 4){
			plus_title = '쇼핑팁';
		}
		output += plus_title;
		output += '</strong></h2></div>';End of plusCategory
		output += '</div></div>';
		
		for(var i=0;i<list.length;i++){
			if(list[i].hp_kind == hp_kind){
				output += '<div class="magazine-news">';
				output += '<div class="row">';
				output += '	<div class="col-md-4">';
				output += '		<div class="plusThumbnail">';
				output += '			<a href="#" class="click_pmodal" data-num="'+list[i].hp_num+'" data-toggle="modal" data-target="#plus_modal">';
				output += '			<img src="../assets/img/plus/plusThumbnail.PNG"></a>';
				output += '		</div>';End of plusThumbnail
				output += '		<div class="plusTitle">';
				output += '			<a href="#" class="click_pmodal" data-num="'+list[i].hp_num+'" data-toggle="modal" data-target="#plus_modal">'+list[i].hp_title+'</a>';
				output += '		</div>';End of plusTitle
				output += '		<table class="plusTable">';
				output += '			<tr><th><img class="plusLike" src="../assets/img/plus/heart.png" alt="like">'+list[i].hp_like+'</th>';
				output += '				<th><img class="plusLike" src="../assets/img/plus/scrap.png" alt="scrap">'+list[i].hp_scrap+'</th>';
				output += '				<th><img class="plusComments" src="../assets/img/plus/comments.png" alt="reply">'+list[i].hpre_cnt+'</th>';
				output += '				<th><img class="plusComments" src="../assets/img/plus/hits.png" alt="hit">'+list[i].hp_hit+'</th></tr>';
				output += '		</table>';End of plusTable
				output += '		<div class="plusDetail">';
				output += '			<hr class="hrinPlus">';
				output += '			<span>'+plus_title+'</span> ';
				output += '			<span class="plusUser">'+list[i].m_id+'&nbsp;&nbsp;'+list[i].hp_reg_date+'</span>';
				output += '		</div>';End of plusDetail
				output += '	</div>';End of col-md-4
				output += '</div>';End of row
				output +='<div class="margin-bottom-35"><hr class="hr-md"></div>';
			}
		}
		
		$('#plusC_list').append(output);
	}*/
	
});