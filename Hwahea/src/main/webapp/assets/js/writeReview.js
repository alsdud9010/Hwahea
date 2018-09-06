$(document).ready(function(){

	var flag = 0;
	var txt = document.getElementById('startext');
	var Msg;

	for(i=1;i<=5;i++){
		$('#nstar'+i).click(function(){
			if(flag==1){//별 제거하기 
				$(this).attr({
					src:"../assets/img/starno.png",
					width:30,
					height:30
				}).show();
				flag =0;
				return false;
			}
			
			$(this).attr({
				src:"../assets/img/star.png",
				width:30,
				height:30
			}).show();
			flag = 1;	
			
			switch(i){
				case 1: Msg = "최악이에요!";break;
				case 2: Msg = "별로예요!";break;
				case 3: Msg = "무난했어요!";break;
				case 4: Msg = "괜찮았어요!";break;
				case 5: Msg = "완전 추천합니다!";break;
				default: "";
			
			}
			txt.innerHTML = Msg;
			
		});
	}

});