$(document).ready(function(){
	var total_price = document.getElementById('total_price').value;
	var discount_price = document.getElementsByClassName('discount_price');
	
	var dis_price = 0;
	
	for(var i=0;i<discount_price.length;i++){
		dis_price += parseInt(discount_price[i].value);
	}
	
	$('#priceArea2').text(addComma(dis_price));
	$('#priceArea').text(addComma(total_price));
	$('#priceArea3').text(addComma(total_price));
	
	var plusPoint = Math.round(dis_price*0.01);
	$('#plusPoint').text(addComma(plusPoint));
	
	if(total_price >= 50000){
		$('#ship_price').text(0);
	}else{
		$('#ship_price').text(addComma(2500));
	}
	
	//3자리 마다 콤마
	function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
});