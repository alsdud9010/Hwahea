/* Write here your custom javascript codes */
$(document).ready(function(){

	//링크 연결
	$('#category').click(function(){
		location.href='r_category.do';
	});
	
	$('#skinType').click(function(){
		location.href='r_skinType.do';
	});
	
	//좌측메뉴
	$(".accordion_banner .accordion_sub").hide();
	$(".accordion_banner .accordion_title").click(function() {
        if($(this).next("div").is(":visible")){
        $(this).next("div").slideUp("fast");
        }else {
            $(".accordion_banner .accordion_sub").slideUp("fast");
            $(this).next("div").slideToggle("fast");
        }
    });
	
	$('#example .dropdown-menu li > a').bind('click', function (e) {
	    var html = $(this).html();
	    $('#example button.dropdown-toggle').html(html + ' <span class="caret"></span>');
	});
	
	//브랜드 더보기-닫기
	$('.brand-more').click(function(){
		var more = $(this).val();
		if(more == '더보기'){
			$('.brand-search-content').css('max-height','none');
			$(this).attr('value','닫기');
		}else if(more == '닫기'){
			$('.brand-search-content').css('max-height','117px');
			$(this).attr('value','더보기');
			
		}
	});

});