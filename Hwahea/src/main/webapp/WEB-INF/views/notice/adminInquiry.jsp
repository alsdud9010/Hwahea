<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#heard').click(function(){
			var value = $(this).val().toLowerCase();
			$('#tbf tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		});
	});
</script>
    
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>문의</h1>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>받은 문의<small> 1:1 문의</small></h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">				
                          <select id="heard" class="form-control" required>
                            <option id="shop">1.화해 쇼핑 문의</option>
                            <option id="event">2.이벤트 문의</option>
                            <option id="service">3.서비스 불편, 오류 제보</option>
                            <option id="etc">4.사용 방법, 기타 문의</option>
                            <option id="idea">5.아이디어 제안, 칭찬</option>
                            <option id="cooperate">6.제휴 문의</option>
                          </select>
					</div>
				</div>

				<div class="x_panel">
					<div class="x_title">
						<table class="table">
							<thead>
								<tr>
									<th>문의 번호</th>
									<th>문의 유형</th>
									<th>문의 내용</th>
									<th>문의 날짜</th>
									<th>이메일</th>
									<th>회원 아이디</th>
								</tr>
							</thead>
							<tbody id="tbf">
								<tr>
									<th scope="row">1</th>
									<td>1.화해 쇼핑 문의</td>
									<td>안 댐 ㅠㅠ</td>
									<td>2018.09.06</td>
									<td>test@test.com</td>
									<td>dkfwfkf</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>