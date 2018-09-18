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
		clickBrand();
	});
	
	
	//================= 브랜드 검색 
	//체크한 값들 받아오기
	$('.brand-search').click(function(){
		clickBrand();
	});
	
	
	//==== ajax 통신
	//ajax 브랜드 검색
	function clickBrand(){
		var chk = document.getElementsByName('shop-search-brand'); // 체크박스객체를 담는다
		var len = chk.length;    //체크박스 전체 개수
		var checkRow = '';      //체크된 체크박스의 value를 담기위한 변수
		var checkCnt = 0;       //체크된 체크박스의 개수
		var checkLast = '';     //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수
		var brandSearch = '';         //체크된 체크박스의 모든 value 값을 담는다
		var cnt = 0;                 

		var category_num = getParameterByName('category_num');
		var category_detail_num = getParameterByName('category_detail_num');
		
		for(var i=0; i<len; i++){
			if(chk[i].checked == true){
				checkCnt++;        //체크된 체크박스의 개수
				checkLast = i;     //체크된 체크박스의 인덱스
			}
		} 

		for(var i=0; i<len; i++){
			if(chk[i].checked == true){  //체크가 되어있는 값 구분
				checkRow = chk[i].value;

				if(checkCnt == 1){            //체크된 체크박스의 개수가 한 개 일때,
					//brandSearch.push(checkRow);
					brandSearch += checkRow;
				}else{                        //체크된 체크박스의 개수가 여러 개 일때,
					if(i == checkLast){         //체크된 체크박스 중 마지막 체크박스일 때,
						//brandSearch.push(checkRow);
						brandSearch += checkRow;
					}else{
						//brandSearch.push(checkRow);
						brandSearch += checkRow+",";
					}				
				}
				cnt++;
				checkRow = '';    //checkRow초기화.
			}
		}

		$.ajax({
			type:'post',
			data:{
				category_num:category_num,
				category_detail_num:category_detail_num,
				brandSearch:brandSearch
			},
			url:'shopBrandSearch.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				var output = '';
				if(data.productCnt < 0 || data.list == null){
					alert('댓글 목록 호출 오류!');
				}else if(data.productCnt == 0){
					$('.shopList-product-list').empty();
					document.getElementById('productCnt').innerHTML = '0 ';
					output+='<p class="none-product">등록된 상품이 없습니다.</p>';
					$('.shopList-product-list').append(output);
				}else{
					document.getElementById('productCnt').innerHTML = data.productCnt+' ';
					getList(data.list);
				}
			},
			error:function(){
				alert('네트워크 오류');
			}
		});
	}
	
	
	
	
	//==== ajax write tag
	function getList(list){
		$('.shopList-product-list').empty();
		for(var i=0;i<list.length;i++){
			var discount = ((100-+list[i].p_discount)/100)*list[i].p_price;
			var output = '<li class="pl-flag">';
			output += '	<div class="pl-info">';
			output += '	<a href="/Hwahea/shop/shopProductView.do?p_num='+list[i].p_num+'&brand_num='+list[i].brand_num+'"';
			output += 'class="pl-thumb productsList">';
			output += '<img src="/Hwahea/shop/shopProductImageView.do?p_num='+list[i].p_num+'" onerror="common.errorImg(this);"></a>';
			output += '<div class="pl-name">';
			output += '<a href="/Hwahea/shop/shopProductView.do?p_num='+list[i].p_num+'&brand_num='+list[i].brand_num+'" class="goodsList">';
			output += '<span class="pl-brand">'+list[i].brand_name+'</span>';
			output += '<p class="pl-product-name">'+list[i].p_name+' '+list[i].p_capacity+'ml</p></a></div>';
			output += '<p class="pl-price">';
			output += '<span class="pl-product-tx">';
			output += '<span class="pl-product-price">'+addComma(list[i].p_price)+'</span>원 </span>';
			output += '<span id="pl-product-price" style="display:none;">'+list[i].p_price+'</span>';
			output += '<span id="pl-product-discount" style="display:none;">'+list[i].p_discount+'</span>';
			output += '<span class="pl-product-sale">';
			output += '<span class="pl-product-price" id="shop-discount">'+addComma(discount)+'원</span>';
			output += '</p>';
			output += '</div>';
			output += '</li>';
				
			$('.shopList-product-list').append(output);
		}
	}
	
	//3자리 마다 콤마
	function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	
	
	
	
	
	
	
});