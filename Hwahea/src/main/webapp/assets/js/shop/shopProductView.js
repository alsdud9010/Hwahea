$(document).ready(function(){
	$(".accordion_banner .accordion_sub").hide();
	$(".accordion_banner .accordion_title").click(function() {
		if ($(this).next("div").is(":visible")) {
			$(this).next("div").slideUp("fast");
		} else {
			$(".accordion_banner .accordion_sub").slideUp("fast");
			$(this).next("div").slideToggle("fast");
		}
	});

	$("#go-ask-write").click(function(event){
		$("#product_board_form").modal();
	});

	
	//shopProductView tab fixed
	var bannerOffset = $('.productView-middle-declare').position();
	var askPosition = $('#select-tab-ask').offset().top;
	var brandPosition = $('#select-tab-brand').offset().top;
	$(window).scroll(function(){ 
		if($(document).scrollTop() > bannerOffset.top) {
			$('.productView-middle-select').addClass('shopTabFixed');
		} else {
			$('.productView-middle-select').removeClass('shopTabFixed');
		}
	});

	//tab 누르면 이동
	$('.middle-select-tab > ul > li').click(function(){
		var scrollPosition = $('#select-tab-'+$(this).attr('data-target')).offset().top;
		$('html,body').animate({scrollTop : scrollPosition}, 'fast');
	});
	
	//탭 색깔
	$(window).on('scroll', function() {
		$('.scorll-target').each(function() {
			if($(window).scrollTop() > ($(this).offset().top)-10) {
				var id = $(this).attr('id');
				$('.middle-select-tab ul li').removeClass('tab-selected');
				$('.select-tab-'+$(this).attr('data-selected')).addClass('tab-selected');
			}
		});
	});
	
	//문의하기 modal 유효성체크
	$('#pbWrite_form').submit(function(){
		var select = $('#select-ask-kind option:selected').val();
		var lock = document.getElementById('ask-lock');
	    
		if(select == "unselect") {
			alert("문의 유형을 선택해주세요!");
		    return false;
		}
		
		if($('#product-ask-content').val() == ""){
			alert("문의 내용을 입력해주세요!");
		    return false;
		}
	});
	
	//비밀글 none-click
	$('.ask-question-and-answer').click(function(){
		if($('#private-content-'+$(this).attr('data-private')).hasClass('private-content') == true){
			$('#private-'+$(this).attr('data-private')).hide();
		}
	});
	
	//=============== 상품문의 Admin
	//답변등록
	$('.answer-add').click(function(event){
		var num = $(this).attr('data-private');
		if($('#pbr_content_'+num).val()==''){
			alert('답변 내용을 입력하세요');
			$('#pbr_content_'+num).focus();
			return false;
		}
		var pbr_id = document.getElementById('pbr_id_'+num).value;
		var pbr_head = document.getElementById('pbr_head_'+num).value;
		var pbr_content = document.getElementById('pbr_content_'+num).value;
		var p_num = document.getElementById('pbr_p_num_'+num).value;
		var brand_num = document.getElementById('pbr_brand_num_'+num).value;
		
		//등록
		$.ajax({
			type:'post',
			data:{
				p_num:p_num,
				brand_num:brand_num,
				pbr_id:pbr_id,
				pbr_head:pbr_head,
				pbr_content:pbr_content
			},
			url:'writePBReply.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result=='logout'){
					alert('로그인 해야 작성할 수 있습니다.');
				}else if(data.result=='AdminLogin'){
					alert('관리자만 작성할 수 있습니다.');
				}else if(data.result=='success'){
					alert('답변이 완료되었습니다!');
					location.replace("/Hwahea/shop/shopProductView.do?p_num="+p_num+"&brand_num="+brand_num);
				}else{
					alert('등록시 오류 발생');
				}
			},
			error:function(){
				alert('등록시 네트워크 오류 발생!');
			}
		});
		//기본 이벤트 제거
		event.preventDefault();
	});
	
	//textarea에 내용 입력시 글자수 체크
	$(document).on('keyup','textarea',function(){
		//입력한 글자수를 수함
		var inputLength = $(this).val().length;
		
		if(inputLength>300){ //400자를 넘어선 경우
			$(this).val($(this).val().substring(0,400));
		}else{ //400자 이하인 경우
			var remain = 400-inputLength;
			remain += '/400';
			if($(this).attr('id')=='re_content'){
				//등록 폼 글자수 
				$('.add-edit-form .letter-count').text(remain);
			}else{
				//수정 폼 글자수
				$('.add-edit-form .letter-count').text(remain);
			}
		}
	});
	
	//구매하기 클릭
	$('input.item-buy').click(function(){
		var user_id = document.getElementById('user_id').value;
		if(user_id == ''){
			alert('로그인 후 이용해주세요!');
			return false;
		}else{
			var quantity = document.getElementById('quantity').value;
			var p_num = document.getElementById('orderProduct').value;
			location.href="/Hwahea/shop/orderProduct.do?p_num="+p_num+"&quantity="+quantity;		
		}
	});
	
	//장바구니 등록
	$('input#item-cart').click(function(event){
		var quantity = document.getElementById('quantity').value;
		var cart_product = document.getElementById('orderProduct').value;
		var price = document.getElementById('orderPrice').value;
		alert(quantity);
		alert(cart_product);
		alert(price);
		var cart_price = Math.floor(price);
		alert(cart_price);
		//등록
		$.ajax({
			type:'post',
			data:{
				quantity:quantity,
				cart_product:cart_product,
				cart_price:cart_price
			},
			url:'addCart.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result=='logout'){
					alert('로그인 후 이용해 주세요!');
				}else if(data.result=='success'){
					var save_confirm = function ()
					{
						if (confirm('장바구니 등록이 완료되었습니다! 쇼핑을 계속하시겠습니까?')) {
							return false;
						} else {
							location.href="/Hwahea/shop/orderProduct.do?";
						}
					}
				}else{
					alert('장바구니 등록시 오류 발생');
				}
			},
			error:function(){
				alert('등록시 네트워크 오류 발생!');
			}
		});
		//기본 이벤트 제거
		event.preventDefault();
	});
	
});