/* Write here your custom javascript codes */
$(document).ready(function(){

	//링크 연결
	$('#r_category').click(function(){
		location.href='r_category.do';
	});
	
	$('#r_skinType').click(function(){
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

});