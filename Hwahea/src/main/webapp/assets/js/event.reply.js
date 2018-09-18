$(document).ready(function(){
   var event_num = $('#event_num').val();
   var currentPage;
   var count;
   var rowCount;
   var user_id = $('#m_id').val();
   
   /*//댓글창 초기화
   function initReply(){
      $('#').remove();
   }*/
   
   //댓글 목록
   
   //초기 데이터 목록 호출
   selectData(1,event_num);
   
   function selectData(pageNum, event_num){
      currentPage = pageNum;
      
      //처음 호출시 해당 ID의 div 내부 내용물 제거
      if(pageNum == 1){
         $('#ere_list').empty();
      }
      
      $.ajax({
         type:'post',
         data:{pageNum:pageNum,event_num:event_num},
         url:'listReply.do',
         dataType:'json',
         cache:false,
         timeout:30000,
         success:function(data){
            count = data.count;
            rowCount = data.rowCount;
            var output = '';
            if(count < 0 || data.list == null){
               alert('댓글 목록 호출 오류!');
               
            }/*else if(count = 0){
               output+='<li>';
               output+='댓글이 없습니다. </li>';
            }*/else{
               $(data.list).each(function(index,item){
                  if(event_num == item.event_num){
                     output+='<li>';
                     output+='<span class="ereply_no">'+item.ere_num+'</span>';
                     output+='<p class="ereply_txt">'+item.ere_content+'</p>';
                     output+='<span class="ereply_user">'+user_id+'</span>';
                     output+='<span class="ereply_date">'+item.ere_date+'</span>';
                     output+='</li>';
                  }
               });
               
               //문서 객체에 추가
               $('#ere_list').append(output);
            }
         },
         error:function(){
            alert('네트워크 오류!');
         }
      });
   }
   
   //댓글창 유효성 체크 + 댓글 등록
   $(document).on('submit','#ere_form',function(event){
      if($('#ere_content').val()==''){
         alert('댓글 내용을 입력하세요!');
         $('#ere_content').focus();
         return false;
      }
      
      var data = $(this).serialize();
     
      //등록
      $.ajax({
         type:'post',
         data:data,
         url:'writeReply.do',
         dataType:'json',
         cache:false,
         timeout:30000,
         success:function(data){
            if(data.result=='logout'){
               alert('로그인해야 작성할 수 있습니다.');
            }else if(data.result == 'success'){
               //목록 호출
               selectData(1,event_num);
               
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
   });
   
   //댓글 작성 폼 초기화
   function initForm(){
      $('#ere_content').val('');
   }
   
   
});
