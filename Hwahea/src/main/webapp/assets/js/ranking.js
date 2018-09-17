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
			$('.brand-search-content').css('max-height','400px');
			$(this).attr('value','닫기');
		}else if(more == '닫기'){
			$('.brand-search-content').css('max-height','117px');
			$(this).attr('value','더보기');
			
		}
	});
	
	//브랜드 라디오 체크
	$("input[name=brand-search-brand]").click(function(){
		var arrRd = document.getElementsByName('brand-search-brand');

		for(var i = 0; i < arrRd.length; i++) {
			if(arrRd[i].checked == true){
				
				$.ajax({
					type:'post',
					data:{brand_num:arrRd[i].value},
					url:'brand_ranking.do',
					dataType:'json',
					cache:false,
					timeout:30000,
					success:function(data){
						var list = data.list;
						$('.ranking').empty();
						$(list).each(function(index,item){
						
							var output = '<div class="row">';
							output+='<ul>';
							output+='	<li class="ranking_num"><h1>' + (index+1) + '</h1></li>';
							output+='	<li class="col-md-2 ranking-img">';
							output+='		<a href="#"> <img class="img-responsive" src="../assets/img/ranking/'+ item.c_photo +'" alt=""></a>';
							output+='	</li>';
							output+='	<li class="ranking_names">';
							output+='		<div class="ranking_brandName">' + item.brand + ' </div>';
							output+='		<div class="ranking_productName">';
							output+='			<strong> ' + item.c_name + '</strong>';
							output+='		</div>';
							output+='		<div class="r_list_by-author">';
							output+='			<strong>' + item.c_price + '원</strong> <span>/ ' + item.c_capacity + 'g</span>';
							output+='		</div>';
							output+='	</li>';
							var rate = item.c_rate;
							var star = null;
							if(rate>=0 && rate<=1){
								star="★☆☆☆☆";
							}else if(rate>1 && rate<=2){
								star="★★☆☆☆";
							}else if(rate>2 && rate<=3){
								star="★★★☆☆";
							}else if(rate>3 && rate<=4){
								star="★★★★☆";
							}else{
								star="★★★★★";
							}
							output+='	<li class="ranking_stars">' + item.c_rate + star + '</li>';
							output+='	<li class="ranking_shopping"> ';
							output+='		<ul>';
							output+='			<li class="buy">';
							output+='				<img class="img-responsive" src="../assets/img/ranking/buy.png" alt="">';
							output+='			</li>';
							output+='			<li class="cart">';
							output+='				<img class="img-responsive" src="../assets/img/ranking/cart.png" alt="">';
							output+='			</li>';
							output+='		</ul> ';
							output+='	</li>';
							output+='</ul>';
							output+='</div>';
							
							$('.ranking').append(output);
						});
					},
					error:function(){
						alert('네트워크 오류 발생!');
					}
				});	
				
				break;
			} 
		}
	});
		
});