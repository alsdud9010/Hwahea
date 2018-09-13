$(document).ready(function(){

	//페이지 재호출
	$('.navbar-brand2').click(function(){
		location.href='dictionary.do';
	});

	/*==========탭 클릭 시 이벤트 발생==========*/
	//20가지 주의성분
	$('#warnings').click(function(){
		$('#EWG').hide();
		$('.detail').empty();
		$('#loading').show();
		
		aJaxUrl('dictionaryWarningAjax.do');

	});
	//알레르기 주의성분
	$('#allergie').click(function(){
		$('#EWG').hide();
		$('.detail').empty();
		$('#loading').show();
		
		aJaxUrl('dictionaryAllergieAjax.do');
	});
	//피부타입별 주의성분
	$('#skinType').click(function(){
		$('#EWG').hide();
		$('.d_list').empty();
		$('.detail').empty();
		$('.left_content').show();
		
		//지성
		$('.oilly').click(function(){
			$('#loading').show();
			var answer = $(this).attr('data-type');
			
			aJaxUrlAnswer('dictionaryOillyAjax.do',answer);
		});
		
		//건성
		$('.dry').click(function(){
			$('#loading').show();
			var answer = $(this).attr('data-type');
			
			aJaxUrlAnswer('dictionaryDryAjax.do',answer);
		});
		
		//민감성
		$('.sensitive').click(function(){
			$('#loading').show();
			var answer = $(this).attr('data-type');
			
			aJaxUrlAnswer('dictionarySensitiveAjax.do',answer);
		});
	})
	//기능성 성분
	$('#function').click(function(){
		$('#EWG').hide();
		$('.detail').empty();
		$('#loading').show();
		
		aJaxUrl('dictionaryFuncAjax.do');
	});
	
	/*==========ajax==========*/
	function aJaxUrl(url){
		$('.d_info').show();
		$.ajax({
			type:'post',
			url:url,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				//로딩 이미지 감추기
				$('#loading').hide();

				getList(data.list);

				//성분 이름 클릭시 
				$('.tap_right_name').click(function(){
					$('.detail').empty();
					$('.d_info').hide();
					var num = $(this).attr('data-num');

					selectData(data.list,num);

					//성분 디테일 팝업 닫기 클릭
					$('.d_list_detail-close').click(function(){
						closeDetail("d_info");
					});		
				});

			},
			error:function(){
				$('#loading').hide();
				alert('네트워크 오류');
			}
		});
	}
	
	function aJaxUrlAnswer(url,answer){
		
		$('.d_info').show();
		$.ajax({
			type:'post',
			data:{answer:answer},
			url:url,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				$('#loading').hide();
				
				getList(data.list);
				
				//성분 이름 클릭시 
				$('.tap_right_name').click(function(){
					$('.detail').empty();
					$('.left_content').hide();
					var num = $(this).attr('data-num');

					selectData(data.list,num);
					
					//성분 디테일 팝업 닫기 클릭
					$('.d_list_detail-close').click(function(){
						closeDetail("left_content");
					});
				});
			},
			error:function(){
				$('#loading').hide();
				alert('네트워크 오류');
			}
		});
	}
	
	/*========functions========*/
	function getList(list){
		$('.d_list').empty();
		for(var i=0;i<list.length;i++){
			var output = '<li>';
			output+='	<div class="tap_right_img">';
			output+='		<img class="img-responsive" src="../assets/img/dictionary/level_'+ list[i].i_grade +'.png" alt="">';
			output+='	</div>';
			output+='	<div class="tap_right_name" data-num="' + list[i].i_num +'">';
			output+='		<div class="d_list_name">';
			output+='			<div><b>' + list[i].i_KName + '</b></div>';
			output+='			<div>' + list[i].i_EName + '</div>';
			output+='		</div>';
			output+='	</div>';
			output+='</li>';
			
			$('.d_list').append(output);
		}
	}
	
	function selectData(list,num){
		for(var i=0;i<list.length;i++){
			if(list[i].i_num==num){
				var output='<div class="d_list_detail">';
				output+='	<button class="d_list_detail-close">&times;</button>';
				output+='	<div class="d_list_detail_title">';
				output+='		<div class="d_KOname">' + list[i].i_KName + '</div>';
				output+='		<div class="d_ENname">' + list[i].i_EName + '</div>';
				output+='	<div>';
				output+='		배합목적 : <span>' + list[i].i_prop + '</span>';
				output+='	</div>';
				output+='</div>';
				output+='<ul class="d_list_detail_content">';
				output+='	<li>';
				output+='		<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/level_'+ list[i].i_grade +'.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div>EWG등급</div>';
				var grade = null;
				if(list[i].i_grade>=1 && list[i].i_grade<=2){
					grade='낮은 위험도';
				}else if(list[i].i_grade>=3 && list[i].i_grade<=6){
					grade='중간 위험도';
				}else if(list[i].i_grade==null){
					grade='등급 미등록';
				}
				else{
					grade='높은 위험도';
				}
				output+='			<div>위험도 등급 : ' + grade + '</div>';
				output+='			<div>데이터 등급 : ' + list[i].i_datagrade + '</div>';
				output+='		</div>';
				output+='	</div>';
				output+='</li>';
				output+='<li>';
				output+='	<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/warning.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div>20가지 주의성분</div>';
				output+='			<div>' + list[i].i_warning + '</div>		';							
				output+='		</div>';
				output+='	</div>';
				output+='</li>';
				output+='<li>';
				output+='	<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/allergie.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div>알레르기 피부타입</div>';
				var allergie = null;
				if(list[i].i_allergie == null){
					allergie='해당없음';
				}else{
					allergie='식약처가 고시한 알레르기 유발 성분입니다.';
				}
				output+='			<div>' + allergie + '</div>		';							
				output+='		</div>';
				output+='	</div>';
				output+='</li>';


				$('.detail').append(output);
				$('.d_list_detail').show()						
				$('.tab_left').css({
					backgroundColor :'#fff',
					boxShadow: '-1px 1px 40px 6px #c0c0c0b0 inset'
				});
			}
		}
	}
	
	function closeDetail(option){
		$('.d_list_detail').hide();
		if(option=="d_info"){
			$('.d_info').show();
		}
		if(option=="left_content"){
			$('.left_content').show();
		}
		$('.tab_left').css({
			backgroundColor :'#f4f4f4',
			boxShadow: 'none'
		});
	}
	
});