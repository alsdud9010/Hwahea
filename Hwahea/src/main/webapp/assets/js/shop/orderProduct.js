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
	$('#totalPriceArea').attr('value',total_price);
	
	//전액사용 포인트 체크 시
	$('#totalPoint').click(function(){
		if($('input:checkbox[id="totalPoint"]').is(":checked") == true){
			$('#pointArea').attr('value',myPoint);
			$('#pointArea2').text(addComma(myPoint)+' P');
			total_price = parseInt(products_price)+parseInt(ship_price);
			total_price -= parseInt(myPoint);
			$('#total_price').text(addComma(total_price)+' 원');
			$('#totalPriceArea').attr('value',total_price);
		}else{
			$('#pointArea').attr('value','');
			$('#pointArea2').text('0 P');
			total_price += parseInt(myPoint);
			$('#total_price').text(addComma(total_price)+' 원');
			$('#totalPriceArea').attr('value',total_price);
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
				$('#totalPriceArea').attr('value',total_price);
			}else{
				$('#pointArea2').text(addComma(point)+' P');
				if(point >= 100){
					total_price -= parseInt(point);
					$('#total_price').text(addComma(total_price)+' 원');
					$('#totalPriceArea').attr('value',total_price);
				}
			}
		}
	});
	
	
	//3자리 마다 콤마
	function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	
	//구매하기 + 유효성 체크
	$(document).on('submit','#orderProduct_form',function(event){
		
		if($('#order_name').val()==''){
			alert('주문자 이름을 입력하세요!');
			$('#order_name').focus();
			return false;
		}
		if($('#order_phone1').val()==''){
			alert('핸드폰 번호를 입력하세요!');
			$('#order_phone1').focus();
			return false;
		}
		if($('#order_phone2').val()==''){
			alert('핸드폰 번호를 입력하세요!');
			$('#order_phone2').focus();
			return false;
		}
		if($('#order_phone3').val()==''){
			alert('핸드폰 번호를 입력하세요!');
			$('#order_phone3').focus();
			return false;
		}
		if($('#buyer_email').val()==''){
			alert('이메일을 입력하세요!');
			$('#buyer_email').focus();
			return false;
		}
		if($('#buyer_name').val()==''){
			alert('받는 분 이름을 입력하세요!');
			$('#buyer_name').focus();
			return false;
		}
		if($('#buyer_phone1').val()==''){
			alert('배송지 연락처를 입력하세요!');
			$('#buyer_phone1').focus();
			return false;
		}
		if($('#buyer_phone2').val()==''){
			alert('배송지 연락처를 입력하세요!');
			$('#buyer_phone2').focus();
			return false;
		}
		if($('#buyer_phone3').val()==''){
			alert('배송지 연락처를 입력하세요!');
			$('#buyer_phone3').focus();
			return false;
		}
		if($('#buyer_zipcode').val()==''){
			alert('배송지 우편번호를 입력하세요!');
			$('#buyer_zipcode').focus();
			return false;
		}
		if($('#buyer_address1').val()==''){
			alert('배송지 주소를 입력하세요!');
			$('#buyer_address1').focus();
			return false;
		}
		if($('#buyer_address2').val()==''){
			alert('배송지 상세주소를 입력하세요!');
			$('#buyer_address2').focus();
			return false;
		}
		if($('input:radio[name=how]').is(':checked')==false){
			alert('결제 수단을 선택하세요!');
			return false;
		}
		
		var data = $(this).serialize();
		
		var products = document.getElementsByClassName('info-content-num');
		var quantities = document.getElementsByClassName('info-content-quantity2');
		
		var orderQuantity = [];
		var orderProduct = [];

		for(var i=0;i<products.length;i++){
			orderProduct.push(products[i].value);
		}
		
		for(var i=0;i<quantities.length;i++){
			orderQuantity.push(quantities[i].value);
		}
		
		data += '&orderProduct='+orderProduct+'&orderQuantity='+orderQuantity;
		
		//등록
		$.ajax({
			type:'post',
			data:data,
			url:'productOrder.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				if(data.result=='logout'){
					alert('로그인 후 구매해주세요.');
				}else if(data.result == 'success'){
					location.replace("/Hwahea/shop/orderComplete.do?order_num="+data.seqNum);
				}else{
					alert('구매시 오류 발생!');
				}
			},
			error:function(){
				alert('구매시 네트워크 오류 발생!');
			}
		});
		
		//기본 이벤트 제거
		event.preventDefault();
		
	});
	
});