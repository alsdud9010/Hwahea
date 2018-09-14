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
	$('.like_re').on('click',function(){
		//리뷰 번호
		var re_num = $(this).attr('data-num');
		
		var data = $(this).serialize();
		
		$.ajax({
			type:'post',
			data:data,
			url:'oneReview.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				var review = '';
				review += '<div id="good"><table><tr>';
				review += '<td id="g_icon"><img src="${pageContext.request.contextPath}/assets/img/like.png"></td>';
				review += '<td id="content">'+data.re_good+'</td>';
				review += '</tr></table></div><hr size="1" width="50%" noshade>';
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				$('#modal01').find('#review').append(review);
				
			},
			error:function(){
				alert('네트워크 오류 발생!');
			}
		});	
		
	});
	
	
	
	
	
	
	
	
	
});