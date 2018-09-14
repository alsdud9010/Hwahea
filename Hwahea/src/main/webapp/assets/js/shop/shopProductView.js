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
	
	
});