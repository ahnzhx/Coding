<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/index.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 입력</title>
<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
</head>
<style>
</style>
<jsp:include page = "../top.jsp" flush="false"/>
<body>
	<div id="container">
		<div class="SignUpForm">
			<form name="form1" method="post">
				<div class="SignUpForm--header">
					<h1>회원가입</h1>
					<p class="SignUpForm--description">
						<!-- react-text: 691 -->
						필요서류를 미리 준비해 두시면 빠르게 가입 하실 수 있습니다.
						<!-- /react-text -->
						<br> <em class="Bold">고객센터 1899-6840 / 팩스번호 02-554-9774</em>
					</p>
				</div>
				
				<div class="SignUpForm--personal__info">
					<table class="Table--header__left">
						<colgroup>
							<col style="width: 130px;">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th colspan="2">개인 정보 입력</th>
							</tr>
						</thead>
						<tbody>
							
							<tr>
								<th>본인 성명</th>
								<td><input type="text" name="name"
									placeholder="본인 성명을 입력해주세요."
									class="SignUpForm--input__name name" value="" required=""
									autocomplete="off">
									<p style="display: inline-block;">
										
								
							</tr>
							<tr>
								<th>휴대폰 번호</th>
								<td>
									<input type="text" name="phone" class="SignUpForm--input__name phone" value="" required=""
									autocomplete="off">
								-    -
								</td>
							
							</tr>
							
							<tr>
								<th>이메일 주소</th>
								<td style="padding: 10px 20px;">
								<input type="text" name="email" class="SignUpForm--input__name email" value=""
									required="">
								<button class = "checkmail">중복 확인</button>
								</td>
							</tr>
						
							<tr>
								<th>비밀번호</th>
								<td style="padding: 10px 20px;">
								<input type="password"
									name="passwd" placeholder="8자 이상, 문자, 숫자, 특수문자 포함" value=""
									required="" class="SignUpForm--input__name passwd">
									<span class="hidden">Caps Lock이 켜져있습니다.</span>
									<p class="hidden">
										<!-- react-text: 861 -->
										※
										<!-- /react-text -->
									</p></td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td style="padding: 10px 20px;"><input type="password"
									name="password_confirm" placeholder="다시 한번 비밀번호를 입력해주세요."
									class="SignUpForm--input__name repasswd" value=""
									required="">
									<p class="hidden">
										<!-- react-text: 867 -->
										※
										<!-- /react-text -->
									</p></td>
							</tr>
							
						</tbody>
					</table>
				</div>
				<div class="SignUpForm--footer">
					<p class="SignUpForm--warn Bold">
						<!-- react-text: 882 -->
						*공인중개사법 제18조 2의 취지에 적합한 표시의무(상호명, 등록관청에 신고된 전화번호, 소재지, 성명)를 기입하시기
						바랍니다.
						<!-- /react-text -->
						<br>
						<!-- react-text: 884 -->
						&nbsp; 이에 발생한 문제는 (주)스테이션3 에서 책임을 지지 않습니다.
						<!-- /react-text -->
					</p>
				</div>
				<div class="SignUpForm--btn__wrap">
					<button type="submit" class="Btn--xl Btn--white__blue">회원가입
						신청</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page = "../top2.jsp" flush="false"/>
	
	<script>
		
	
		
	
	
	
	
	
	$(function() {
			
		// 중복 확인 버튼을 누르면 자동 실행
		// 입력한 메일 값을 갖고 ?페이지 실행
		$(".checkmail").click(function(){
			if($(".email").val()){
				var query = {email:$(".email").val()};
			
			$.ajax({
				type : "post",
				url : "checkmail.do",
				data : query,
				success:function(data){
					if(data==1){
						alert('사용할 수 없는 메일');
						return false;
					}else if(data == -1)
						alert('사용할 수 있는 메일');
					
				}
			});
			}else{
				alert('사용할 메일을 입력');
				$(".email").focus();
			}
		})
		
		var checkPw = 0;
		
		/* $('.repasswd').blur(function(){
			if ($(".passwd").val() != $(".repasswd").val()) {
				checkPw=0;
			} else {
				checkPw=1;
			}
		}); */
		
		$(".Btn--white__blue").click(function() {
			if ($(".name").val() == '') {
				$(".name").focus();
				alert('이름을 입력하세요');
				return;
			} 
			else if ($(".phone").val() == '') {
				$(".phone").focus();
				alert('전화번호를 입력하세요');
				return;
			}
			else if ($(".email").val() == '') {
				$(".email").focus();
				alert('이메일을 입력하세요');
				return;
			} 
			else if ($(".passwd").val() == '') {
				$(".passwd").focus();
				alert('비밀번호를 입력하세요');
				return;
			} 
			
			else if ($(".repasswd").val() == '') {
				$(".repasswd").focus();
				alert('비밀번호를 확인하세요');
				return;
			} 
			
			if($(".passwd").val() != $(".repasswd").val()){
				alert('비밀번호가 다릅니다');
				return false;
			}
			
			alert('회원가입이 완료되었습니다');
		
		});
		
	});
</script>

</body>
</html>
<!-- <script>
$(document).ready(function(){

 $(".Btn--white__blue").click(function(){
	 alert("hi");
		 document.form1.action= "register.do";
		//문서에서 form1인 태그의 action(보낼주소)
		document.form1.submit();
		// 해당 url로 전송
 });
	
});
</script> -->

