$(document).ready(function(){
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
	
	function getParameterByName(name) {
	    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	$('#onBrandReSet').click(function(){
		
	});
});