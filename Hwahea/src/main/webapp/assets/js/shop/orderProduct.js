$(document).ready(function(){
	var price = document.getElementsByClassName('info-content-price');

	var products_price = 0;
	var ship_price = 2500;
	var myPoint = document.getElementById('myPoint').innerHTML;
	$('#pointArea2').text('0 P');
	
	//총가격 구하기
	for(var i=0;i<price.length;i++){
		products_price += parseInt(price[i].value);
	}
	$('#products_price').text(addComma(products_price)+' 원');
	
	//배송비 설정
	if(total_price >= 50000){
		$('#ship_price').text('0 원');
		ship_price = 0;
	}else{
		//배송비 있을 때
		$('#ship_price').text(addComma(ship_price)+' 원');
	}
	
	var total_price = ship_price+products_price;
	$('#total_price').text(addComma(total_price)+' 원');
	
	//전액사용 포인트 체크 시
	$('#totalPoint').click(function(){
		if($('input:checkbox[id="totalPoint"]').is(":checked") == true){
			$('#pointArea').attr('value',myPoint);
			$('#pointArea2').text(addComma(myPoint)+' P');
			total_price = parseInt(products_price)+parseInt(ship_price);
			total_price -= parseInt(myPoint);
			$('#total_price').text(addComma(total_price)+' 원');
		}else{
			$('#pointArea').attr('value','');
			$('#pointArea2').text('0 P');
			total_price += parseInt(myPoint);
			$('#total_price').text(addComma(total_price)+' 원');
		}
	});
	
	//포인트칸 에 내용 입력시
	$(document).on('keyup','#pointArea',function(){
		var point = document.getElementById('pointArea').value;
		
		if(point > 4800){
			$('#pointArea').attr('value',0);
			$('#pointArea2').text('0 P');
			alert('고객님의 총 포인트는 '+myPoint+' 입니다.');
		}else{
			if(point == 0){
				total_price = parseInt(products_price)+parseInt(ship_price);
				$('#pointArea2').text('0 P');
				$('#total_price').text(addComma(parseInt(total_price))+' 원');
			}else{
				$('#pointArea2').text(addComma(point)+' P');
				if(point >= 100){
					total_price -= parseInt(point);
					$('#total_price').text(addComma(total_price)+' 원');
				}
			}
		}
	});
	
	
	//3자리 마다 콤마
	function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	
	//구매하기
	$(document).on('submit','#orderProduct_form',function(event){
		//var data = $(this).serialize();
		var quantities2 = document.getElementsByClassName('info-content-quantity');
		var products2 = document.getElementsByClassName('info-content-num');
		var quantities = [];
		var products = [];
		
		for(var i=0;i<quantities2.length;i++){
			quantities += quantities2[i].value;
		}
		
		for(var i=0;i<products2.length;i++){
			products += products2[i].value;
		}
		
		alert(quantities);
		alert(products);
		/*
		//등록
		$.ajax({
			type:'post',
			data:{
				data:data,
				quantities:quantities,
				products:products
			},
			url:'productOrder.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result=='logout'){
					alert('로그인해야 작성할 수 있습니다.');
				}else if(data.result == 'success'){
					alert('성공');
				}else{
					alert('등록시 오류 발생!');
				}
			},
			error:function(){
				alert('등록시 네트워크 오류 발생!');
			}
		});
		
		//기본 이벤트 제거
		event.preventDefault();
		*/
	});
	
});