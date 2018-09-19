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
			var skinType = $(this).attr('class');
			
			aJaxUrlAnswer('dictionarySkinTypeAjax.do',answer,skinType);
		});
		
		//건성
		$('.dry').click(function(){
			$('#loading').show();
			var answer = $(this).attr('data-type');
			var skinType = $(this).attr('class');
			
			aJaxUrlAnswer('dictionarySkinTypeAjax.do',answer,skinType);
		});
		
		//민감성
		$('.sensitive').click(function(){
			$('#loading').show();
			var answer = $(this).attr('data-type');
			var skinType = $(this).attr('class');
			
			aJaxUrlAnswer('dictionarySkinTypeAjax.do',answer,skinType);
		});
	})
	//기능성 성분
	$('#function').click(function(){
		$('#EWG').hide();
		$('.d_list').empty();
		$('.detail').empty();
		$('.left_content').show();
		
		//자외선
		$('.sunscreen').click(function(){
			$('#loading').show();
			var func = $(this).attr('data-type');
			
			aJaxUrlAnswer('dictionaryFuncAjax.do',func);
		});
		//주름개선
		$('.wrinkle').click(function(){
			$('#loading').show();
			var func = $(this).attr('data-type');
			
			aJaxUrlAnswer('dictionaryFuncAjax.do',func);
		});
		//미백기능
		$('.white').click(function(){
			$('#loading').show();
			var func = $(this).attr('data-type');
			
			aJaxUrlAnswer('dictionaryFuncAjax.do',func);
		});
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
	
	function aJaxUrlAnswer(url,answer,name){
		
		$('.d_info').show();
		$.ajax({
			type:'post',
			data:{answer:answer,
				  name:name
			},
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
	/*=================EWG 등급===================*/
				var grade = null;
				if(list[i].i_grade==0){
					grade='등급 미정';
				}else if(list[i].i_grade>=1 && list[i].i_grade<=2){
					grade='낮은 위험도';
				}else if(list[i].i_grade>=3 && list[i].i_grade<=6){
					grade='중간 위험도';
				}else if(list[i].i_grade==null){
					grade='등급 미등록';
				}
				else{
					grade='높은 위험도';
				}
				output+='	<li>';
				output+='		<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/level_'+ list[i].i_grade +'.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div class="text-bold">EWG등급</div>';
				output+='			<div>위험도 등급 : ' + grade + '</div>';
				output+='			<div>데이터 등급 : ' + list[i].i_datagrade + '</div>';
				output+='		</div>';
				output+='	</div>';
				output+='</li>';
	/*=================20가지 주의성분===================*/
				var w_img = '';
				var warning = '';
				if(list[i].i_warning==null){
					warning = '해당없음';
					w_img = 'warning_null';
				}else{
					warning = list[i].i_warning;
					w_img = 'warning';
				}
				output+='<li>';
				output+='	<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/' + w_img + '.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div class="text-bold">20가지 주의성분</div>';
				output+='			<div>' + warning + '</div>		';							
				output+='		</div>';
				output+='	</div>';
				output+='</li>';
	/*=================알레르기 피부타입===================*/
				var allergie = null;
				var a_img = '';
				if(list[i].i_allergie==null){
					allergie='해당없음';
					a_img = 'allergie_null';
				}
				if(list[i].i_allergie=='Y'){
					allergie='식약처가 고시한 알레르기 유발 성분입니다.';
					a_img = 'allergie';
				}
				output+='<li>';
				output+='	<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/' + a_img + '.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div class="text-bold">알레르기 주의성분</div>';
				output+='			<div>' + allergie + '</div>		';							
				output+='		</div>';
				output+='	</div>';
				output+='</li>';
	/*=================피부타입별 특이성분===================*/
				var skinType = '';
				var good = 0;
				var bad = 0;
				var s_img = '';
				if(list[i].i_oilly=='Y'){
					 skinType += '<span class="text-good">지성피부에 좋아요!</span><br>';
					 good += 1;
				}else if(list[i].i_oilly=='N'){
					skinType += '<span class="text-bad">지성피부는 피하세요!</span><br>';
					bad += 1;
				}
				if(list[i].i_dry=='Y'){
					skinType += '<span class="text-good">건성피부에 좋아요!</span><br>';	
					good += 1;
				}else if(list[i].i_dry=='N'){
					skinType += '<span class="text-bad">건성피부는 피하세요!</span><br>';
					bad += 1;
								}
				
				if(list[i].i_sensitive=='Y'){
					skinType += '<span class="text-good">민감성피부에 좋아요!</span><br>';
					good += 1;
				}else if(list[i].i_sensitive=='N'){
					skinType += '<span class="text-bad">민감성피부는 피하세요!</span><br>';
					bad += 1;
				}
				if(bad==0 && good >=1) {
					s_img = 'help_Y';
				}else if(good==0 && bad>=1){
					s_img = 'help_N';
				}else if(good==0 && bad==0){
					skinType += '해당없음';
					s_img = 'help_null';
				}else{
					s_img = 'help';
				}
				output+='<li>';
				output+='	<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/' + s_img + '.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div class="text-bold">피부타입별 특이성분</div>';
				output+='			<div>' + skinType + '</div>';							
				output+='		</div>';
				output+='	</div>';
				output+='</li>';
		/*=================기능성 성분 여부===================*/
				var func = '';
				var f_img = '';
				if(list[i].i_func=='S'){
					func += '<div class="text-func">자외선 차단 성분입니다 :)</div>';
					f_img = 'func_sun';
				}
				if(list[i].i_func=='W'){
					func += '<div class="text-func">미백 개선에 도움이 돼요 :)</div>';
					f_img = 'func_white';
				}
				if(list[i].i_func=='R'){
					func += '<div class="text-func">주름 개선에 도움이 돼요 :)</div>';
					f_img = 'func_wrinkle';
				}
				if(list[i].i_func==null){
					func += '<div>해당 없음</div>';
					f_img = 'func_null';
				}
				output+='<li>';
				output+='	<div class="d_list_detail_li">';
				output+='		<div class="d_list_detail_img">';
				output+='			<img class="img-responsive" src="../assets/img/dictionary/' + f_img + '.png" alt="">';
				output+='		</div>';
				output+='		<div class="d_list_detail_name">';
				output+='			<div class="text-bold">기능성 성분 여부</div>';
				output+=func;							
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
			backgroundColor :'#f9f9f9',
			boxShadow: 'none'
		});
	}
	
});