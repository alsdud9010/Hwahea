$(document).ready(function(){
	/*=============1:1문의 답변===========*/
	var one_num;
	
	$(document).on('click','.accordion_title',function(){
		one_num = $(this).attr('data-num');
		
		$('.one_reply').empty();
		oneUrl('oneReply.do',one_num);
	});
	/*공지사항 분류 ajax*/
	function oneUrl(url,one_num){
		
		$.ajax({
			type:'post',
			data:{one_num:one_num},
			url:url,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				selectOneData(data.list,one_num);
			},
			error:function(){
				alert('네트워크 오류');
			}
		});
		
	}
	
	function selectOneData(list,one_num){
		for(var i=0;i<list.length;i++){
			if(list[i].one_num == one_num){
				var output = '<li class="myq-a">'
				output += '<span><strong>답변완료</strong></span>';
				output+='<p>'+list[i].reone_content+'</p>';
				output+='<div class="myq-phr">';
				output+='문의에 대한 답변이 부족하거나 추가문의사항이 있으시면 새로운 문의사항으로 등록해주세요.';
				output+='<a href="../notice/my_questionWrite.do" class="go-ask-myq">새로운 문의하기</a>';
				output+='</div>';
				output+='</li>';
				
				$('.one_reply').append(output);
			}
		}
	}
	
});