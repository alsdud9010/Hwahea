$(document).ready(function(){
	//탭이동 시 css 제어
	window.onload=function(){
		$('.select-cate').removeClass('cate-on');
		var cate_num = getParameterByName('category_num');
		var cate_de_num = getParameterByName('category_detail_num');
		
		if(cate_de_num == ''){
			$('.category-first').addClass('cate-on');
		}else{
			$('#id-'+cate_num+'And'+cate_de_num).addClass('cate-on');
		}
	}
	
	//파라미터값 받아오는 함수
	function getParameterByName(name) {
	    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	//브랜드 더보기-닫기
	$('.shop-brand-more').click(function(){
		var more = $(this).val();
		if(more == '더보기'){
			$('.shopList-search-content').css('max-height','none');
			$(this).attr('value','닫기');
		}else if(more == '닫기'){
			$('.shopList-search-content').css('max-height','117px');
			$(this).attr('value','더보기');
			
		}
	});
	
	//브랜드 선택 초기화
	$('#onBrandReset').click(function(){
		$("input[name=shop-search-brand]:checkbox").each(function() {
			$(this).attr("checked", false);
		});
	});
});