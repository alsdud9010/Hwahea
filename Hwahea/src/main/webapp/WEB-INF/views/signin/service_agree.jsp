<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js" ></script>
<style type="text/css">
input.error, textarea.error { /* INPUT 박스 */
	border:1px solid red;
}
p.error { /* 에러메시지 */
	display: block;
	color:red;
	font-weight: normal;
	text-align: right;
}
.agreebutton{
	width:100%;
	font-weight:bold;
	font-size:15px;
	padding:10px 0px 10px 0px;
	background:#eeeeee;
	color:#555555;
	cursor:pointer;
	border-radius:4px !important;
	border:1px solid rgba(0,0,0,0.08);
}
</style>
<div class="container content">
	<div class="row">
		<div class="col-sm-offset-2 col-sm-8">
            <form name='nJoin' role="form" id="joinForm" action="${pageContext.request.contextPath}/signin/m_signin.do"autocomplete="off">
				<div class="panel panel-default">
					<div class="panel-heading">
						Create Account
					</div> <!-- panel heading -->
					
					<div class="panel-body">
						<div class="form-group pull-left">
							<label class="control-label"> 회원가입 약관 </label>
							<div class="col-xs-12">
								<textarea class="form-control" readonly rows="10" cols="100">제1조(목적)
이 약관은 화해(화장품을 해석하다)가 운영하는 홈페이지(이하 "홈페이지"라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버홈페이지과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
※ 「PC통신 등을 이용하는 전자거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」


제2조(정의)
① "홈페이지"란 사업자가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버홈페이지을 운영하는 사업자의 의미로도 사용합니다.

② "이용자"란 "홈페이지"에 접속하여 이 약관에 따라 "홈페이지"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ "회원"이라 함은 "홈페이지"에 개인정보를 제공하여 회원등록을 한 자로서, "홈페이지"의 정보를 지속적으로 제공받으며, "홈페이지"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ "비회원"이라 함은 회원에 가입하지 않고 "홈페이지"가 제공하는 서비스를 이용하는 자를 말합니다.


제3조 (약관의 명시와 개정)
① "홈페이지"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면(전면)에 게시합니다.

② "홈페이지"는 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에 관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

③ "홈페이지"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.

④ "홈페이지"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "홈페이지"에 송신하여 "홈페이지"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다.


제4조(서비스의 제공 및 변경)
① "홈페이지"는 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "홈페이지"가 정하는 업무

② "홈페이지"는 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화·용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화·용역의 내용 및 제공일자를 명시하여 현재의 재화·용역의 내용을 게시한 곳에 그 제공일자 이전 7일부터 공지합니다.

③ "홈페이지"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 "홈페이지"는 이로 인하여 이용자가 입은 손해를 배상합니다. 단, "홈페이지"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제5조(서비스의 중단)
① "홈페이지"는 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

② 제1항에 의한 서비스 중단의 경우에는 "홈페이지"는 제8조에 정한 방법으로 이용자에게 통지합니다.

③ "홈페이지"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 "홈페이지"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제6조(회원가입)
① 이용자는 "홈페이지"가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② "홈페이지"는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "홈페이지"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "홈페이지"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립 시기는 "홈페이지"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "홈페이지"에 대하여 그 변경사항을 알려야 합니다.


제7조(회원 탈퇴 및 자격 상실 등)
① 회원은 "홈페이지"에 언제든지 탈퇴를 요청할 수 있으며 "홈페이지"는 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각 호의 사유에 해당하는 경우, "홈페이지"는 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. "홈페이지"를 이용하여 구입한 재화·용역 등의 대금, 기타 "홈페이지"가용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 "홈페이지" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
4. "홈페이지"를 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "홈페이지"가 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "홈페이지"는 회원자격을 상실시킬 수 있습니다.

④ "홈페이지"가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.


제8조(회원에 대한 통지)
① "홈페이지"가 회원에 대한 통지를 하는 경우, 회원이 "홈페이지"에 제출한 전자우편 주소로 할 수 있습니다.

② "홈페이지"는 불특정다수 회원에 대한 통지의 경우 1주일이상 "홈페이지" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다.


제9조(구매신청)
"홈페이지"가용자는 "홈페이지"상에서 이하의 방법에 의하여 구매를 신청합니다.
1. 성명, 비밀번호, 전화번호, 핸드폰번호, 주소, E-MAIL 입력
2. 재화 또는 용역의 선택
3. 결제방법의 선택
4. 이 약관에 동의한다는 표시(예, 마우스 클릭)


제10조 (계약의 성립)
① "홈페이지"는 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 "홈페이지" 기술상 현저히 지장이 있다고 판단하는 경우

② "홈페이지"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.


제11조(지급방법)
홈페이지"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 하나로 할 수 있습니다.
1. 계좌이체
2. 신용카드결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급 등


제12조(수신확인통지·구매신청 변경 및 취소)
① "홈페이지"는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.

③ "홈페이지"는 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체 없이 그 요청에 따라 처리합니다.


제13조(배송)
"홈페이지"는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "홈페이지"의 고의·과실로 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상합니다.


제14조(환급, 반품 및 교환)
① "홈페이지"는 이용자가 구매 신청한 재화 또는 용역이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일 이내에 계약해제 및 환급절차를 취합니다.

② 다음 각 호의 경우에는 "홈페이지"는 배송된 재화일지라도 재화를 반품 받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다. 다만 그 요구기한은 배송된 날로부터 20일 이내로 합니다.
1. 배송된 재화가 주문내용과 상이하거나 "홈페이지"가 제공한 정보와 상이할 경우
2. 배송된 재화가 파손, 손상되었거나 오염되었을 경우
3. 재화가 광고에 표시된 배송기간보다 늦게 배송된 경우
4. 방문판매 등에 관한 법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 이용자의 청약이 이루어진 경우


제15조(개인정보보호)
① "홈페이지"는 이용자의 정보 수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.
다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
1. 희망ID(회원의 경우)
2. 비밀번호(회원의 경우)
3. 이름
4. 별명
5. E-MAIL
6. 주소
7. 전화번호
8. 휴대번호
9. 메일링서비스
10. SMS 수신여부

② "홈페이지"가 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.

③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "홈페이지"가 집니다. 다만, 다음의 경우에는 예외로 합니다.
1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우

④ "홈페이지"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공 받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률 제16조제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑤ 이용자는 언제든지 "홈페이지"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "홈페이지"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "홈페이지"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.

⑥ "홈페이지"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.

⑦ "홈페이지" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.


제16조("홈페이지"의 의무)
① "홈페이지은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는 데 최선을 다하여야 합니다.

② "홈페이지"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ "홈페이지"가 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ "홈페이지"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.


제17조( 회원의 ID 및 비밀번호에 대한 의무)
① 제15조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "홈페이지"에 통보하고 "홈페이지"의 안내가 있는 경우에는 그에 따라야 합니다.


제18조(이용자의 의무)
이용자는 다음 행위를 하여서는 안 됩니다.
1. 신청 또는 변경 시 허위내용의 등록
2. "홈페이지"에 게시된 정보의 변경
3. "홈페이지"가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시
4. "홈페이지" 기타 제3자의 저작권 등 지적재산권에 대한 침해
5. "홈페이지" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위


제19조(연결"홈페이지"와 피연결"홈페이지" 간의 관계)
① 상위 "홈페이지"와 하위 "홈페이지"가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "홈페이지"(웹 사이트)라고 하고 후자를 피연결 "홈페이지"(웹사이트)라고 합니다.

② 연결 "홈페이지"는 피연결 "홈페이지"가 독자적으로 제공하는 재화·용역에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결 "홈페이지"의 사이트에서 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.


제20조(저작권의 귀속 및 이용제한)
① "홈페이지"가 작성한 저작물에 대한 저작권 기타 지적재산권은 "홈페이지"에 귀속합니다.

② 이용자는 "홈페이지"를 이용함으로써 얻은 정보를 "홈페이지"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.


제21조(분쟁해결)
① "홈페이지"는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.

② "홈페이지"는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③ "홈페이지"와 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.


제22조(재판권 및 준거법)
① "홈페이지"와 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다.

② "홈페이지"와 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.
</textarea>
							</div>
							<div class="col-xs-12">
								<div class="checkbox pull-right">
									<label for="join_user_agree">
										<input type="checkbox" name="join_user_agree" id="join_user_agree" value="1"/>
										회원가입 약관에 동의합니다.</label>
								</div>
							</div>
						</div>
						<div class="form-group pull-left">
							<label class="control-label"> 개인정보 처리방침 안내 </label>
							<div class="col-xs-12">
								<textarea class="form-control" readonly rows="10" cols="100">


○ 본 방침은부터 2018년 9월 06일부터 시행됩니다.

1. 개인정보의 처리 목적은 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.

가. 홈페이지 회원가입 및 관리

회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 만14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 각종 고지·통지, 고충처리, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다.

나. 민원사무 처리

민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락·통지, 처리결과 통보 등을 목적으로 개인정보를 처리합니다.

다. 재화 또는 서비스 제공

물품배송, 서비스 제공, 청구서 발송, 콘텐츠 제공, 맞춤 서비스 제공, 본인인증, 연령인증, 요금결제·정산, 채권추심 등을 목적으로 개인정보를 처리합니다.

라. 마케팅 및 광고에의 활용

신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.

마. 개인영상정보

범죄의 예방 및 수사, 시설안전 및 화재예방, 교통단속, 교통정보의 수집·분석 및 제공 등을 목적으로 개인정보를 처리합니다.



2. 개인정보 파일 현황

1. 개인정보 파일명
- 개인정보 항목 : 자택주소, 비밀번호, 생년월일, 성별, 로그인ID, 휴대전화번호, 이름, 이메일, 접속 IP 정보, 쿠키, 접속 로그
- 수집방법 : 서면양식, 홈페이지, 전화/팩스, 제휴사로부터 제공 받음
- 보유근거 : 보유근거
- 보유기간 : 1년
- 관련법령 : 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년, 대금결제 및 재화 등의 공급에 관한 기록 : 5년, 계약 또는 청약철회 등에 관한 기록 : 5년, 표시/광고에 관한 기록 : 6개월



3. 개인정보의 처리 및 보유 기간

① 화해는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유,이용기간 내에서 개인정보를 처리,보유합니다.

② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
1.홈페이지 회원가입 및 관리
홈페이지 회원가입 및 관리와 관련한 개인정보는 수집.이용에 관한 동의일로부터 1년까지 위 이용목적을 위하여 보유.이용됩니다.
-보유근거 : 보유근거
-관련법령 : 1)소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
2) 대금결제 및 재화 등의 공급에 관한 기록 : 5년
3) 계약 또는 청약철회 등에 관한 기록 : 5년
4) 표시/광고에 관한 기록 : 6개월

-예외사유 : 없음



4. 정보주체의 권리,의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.

① 정보주체는 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
1. 개인정보 열람요구
2. 오류 등이 있을 경우 정정 요구
3. 삭제요구
4. 처리정지 요구
② 제1항에 따른 권리 행사는 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 화해는 이에 대해 지체 없이 조치하겠습니다.
③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.


5. 처리하는 개인정보의 항목 작성

① ('www.anysounsel.or.kr')는 다음의 개인정보 항목을 처리하고 있습니다.

1홈페이지 회원가입 및 관리
- 필수항목 : 비밀번호, 로그인ID, 이름, 이메일
- 선택항목 : 생년월일, 휴대전화번호



6. 개인정보의 파기는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

-파기절차
이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
-파기기한
이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.

-파기방법
전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.


7. 개인정보의 안전성 확보 조치 는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.

1. 개인정보의 암호화
이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.

2. 해킹 등에 대비한 기술적 대책
해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.

3. 개인정보에 대한 접근 제한
개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.

4. 접속기록의 보관 및 위변조 방지
개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.



8. 개인정보 보호책임자 작성

①개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.


▶ 개인정보 보호책임자
성명 : 박정화
직급 : 팀장
연락처 : 031-413-9410, anycounsel@hanmail.net, 031-485-9979

② 정보주체께서는 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 화해는 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.


9. 개인정보 열람청구 ① 정보주체는 개인정보 보호법 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. 화해는 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.

▶ 개인정보 열람청구 접수·처리 부서
담당자 : 박정화
연락처 : 031-413-9410

② 정보주체께서는 제1항의 열람청구 접수․처리부서 이외에, 행정안전부의 ‘개인정보보호 종합지원 포털’ 웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.

▶ 행정안전부 개인정보보호 종합지원 포털 → 개인정보 민원 → 개인정보 열람등 요구 (본인확인을 위하여 아이핀(I-PIN)이 있어야 함)


10. 개인정보 열람청구
아래의 기관은 화해 와는 별개의 기관으로서, 화해의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다.

▶ 개인정보 침해신고센터 (한국인터넷진흥원 운영)
- 소관업무 : 개인정보 침해사실 신고, 상담 신청
- 홈페이지 : privacy.kisa.or.kr
- 전화 : (국번없이) 118
- 주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터

▶ 개인정보 분쟁조정위원회 (한국인터넷진흥원 운영)
- 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)
- 홈페이지 : privacy.kisa.or.kr
- 전화 : (국번없이) 118
- 주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터

▶ 대검찰청 사이버범죄수사단 : 02-3480-3573 (www.spo.go.kr)
▶ 경찰청 사이버범죄수사단 : 1566-0112 (www.netan.go.kr)



11. 개인정보 처리방침 변경

① 이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
</textarea>
							</div>
							<div class="col-xs-12">
								<div class="checkbox pull-right">
									<label for="join_priv_agree">
										<input type="checkbox" name="join_priv_agree" id="join_priv_agree" value="1"/>
										개인정보 처리방침에 동의합니다.
									</label>
								</div>
							</div>
						</div>
					</div>
					<div style="overflow: hidden">
						<button class="panel-footer col-sm-offset-3 col-sm-6 agreebutton" 
						style="margin-left: 0em;">회원가입</button>
					</div>
				</div>
			</form>	
		</div>
	</div>
</div>
<script type="text/javascript">
    $(function() {
        // 유효성 검사 지원
        $("#joinForm").validate({
            rules: {
                join_user_agree: { required:true },
                join_priv_agree: { required:true }
            },
            messages: {
                join_user_agree: { required:'회원가입 약관에 동의하셔야 회원가입 하실 수 있습니다.' },
                join_priv_agree: { required:'개인정보 처리방침에 동의하셔야 회원가입 하실 수 있습니다.' }
            },
            errorPlacement: function(error, element) {
                element.parent("label").parent(".checkbox").parent("div").after(error);
                error.addClass("col-xs-12");
            },
            errorClass: "error",
            errorElement: "p"
        });
    });
</script>