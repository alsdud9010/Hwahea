$(document).ready(function(){
	
	/*====================공지사항=================*/
	var notice_kind;
	
	$(document).on('click','.notice_kind',function(){
		notice_kind = $(this).attr('data-kind');
		
		$('.notice_table').empty();
		noticeUrl('noticeKind.do',notice_kind);
	});
	/*공지사항 분류 ajax*/
	function noticeUrl(url,notice_kind){
		
		$.ajax({
			type:'post',
			data:{notice_kind:notice_kind},
			url:url,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				selectNoticeData(data.list,notice_kind);
			},
			error:function(){
				alert('네트워크 오류');
			}
		});
		
	}
	
	function selectNoticeData(list,notice_kind){
		for(var i=0;i<list.length;i++){
			if(list[i].notice_kind == notice_kind){
				var output = '<tr>';
				output+='<td>'+list[i].notice_num+'</td>';
				output+='<td class="notice_txt">';
				if(list[i].notice_kind == 0){
					output+='<strong class="NK01">일반</strong>';
				}else if(list[i].notice_kind == 1){
					output+='<strong class="NK02">블라인드</strong>';
				}else{
					output+='<strong class="NK03">이벤트</strong>';
				}
				output+='<a href="../notice/noticeView.do?num='+list[i].notice_num+'">';
				output+= list[i].notice_title;
				output+='</a></td>'
				output+='<td>'+list[i].notice_reg_date+'</td>';
				output+='</tr>';
				
				$('.notice_table').append(output);
			}
		}
	}
	
	
	/*=======================FAQ======================*/
	var faq_kind;
	
	$(document).on('click','.faq_kind',function(){
		faq_kind = $(this).attr('data-kind');
		
		$('.faq_accordion').empty();
		faqUrl('faqKind.do',Number(faq_kind));
		
	});
	
	/*공지사항 분류 ajax*/
	function faqUrl(url,faq_kind){
		
		$.ajax({
			type:'post',
			data:{faq_kind:faq_kind},
			url:url,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				selectFaqData(data.list,faq_kind);
				
				$(".faq_accordion .accordion_sub").hide();
			},
			error:function(){
				alert('네트워크 오류');
			}
		});
		
	}
	
	function selectFaqData(list,faq_kind){
		for(var i=0;i<list.length;i++){
			if(list[i].faq_kind == faq_kind){
				var output = '<div class="accordion_title">';
				output+='<ul class="faq_list">';
				output+='<li>';
				output+='<span class="faq_arrow">';
				output+='	<span class="faq_open"><img src="../assets/img/shop/down-arrow.png"></span>';
				output+='</span>';
				output+='<span class="faq_q" style="text-align:center;">Q</span>';
				output+='<span class="faq_category">';
				if(list[i].faq_kind == 1){
					output+='<span>회원/멤버십</span>';
				}else if(list[i].faq_kind == 2){
					output+='<span>주문/결제</span>';
				}else if(list[i].faq_kind == 3){
					output+='<span>배송</span>';
				}else if(list[i].faq_kind == 4){
					output+='<span>교환/반품/환불</span>';
				}else if(list[i].faq_kind == 5){
					output+='<span>이벤트</span>';
				}else if(list[i].faq_kind == 6){
					output+='<span>성분사전</span>';
				}
				output+='</span>';
				output+='<span class="faq_tit"><span>'+list[i].faq_title+'</span></span>';
				output+='</li>';
				output+='</ul>';
				output+='</div>';
				output+='<div class="accordion_sub faq_txt">';
				output+='<div>'+list[i].faq_content+'</div>';
				output+='</div>';
				
				$('.faq_accordion').append(output);
			}
		}
	}
});