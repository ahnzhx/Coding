/**
 * 가입스크립트
 */
$(function(){
	$('#email').blur(function(){
		if($('#email').val()){
			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
			var emailCheck = $('#email').val();
			var query = {email:$('#email').val()};
			
			$.ajax({
				type:"POST",
				url:"http://localhost:9090/kin/member2/confirmId.jsp",
				data:query,
				success:function(data){
					if(data==1){
						$("#checkIdText>.redFont").html('이미 사용중인 이메일이라 사용할 수 없습니다.').show();
						$("#checkIdText>.normalFont").html('').hide();
						$('#email').val("");
						$('#email').focus();
						
						
					} else if (data==-1) { // -1은 존재하지 않음을 뜻함
						if (!emailCheck.match(regExp)) {
							$("#checkIdText>.redFont").html('이메일 형식이 올바르지 않습니다').show();
							$("#checkIdText>.normalFont").html('').hide();	
							$('#email').focus();
						} else{
							$("#checkIdText>.redFont").html('').hide();
							$("#checkIdText>.normalFont").html('사용 가능한 이메일입니다.').show();
						}
					}
				}
				});
		} else {
			$("#checkIdText>.redFont").html('ID를 입력해주세요');
			$("#checkIdText>.normalFont").html('');
			$('#email').focus();
		}
	});
	
	$("#openid_submit").click(function(){
		checkForm(); //입력 폼에 입력한 상황 체크
		if(status){
			var query={email:$("#email").val(),
			passwd:$("#passwd").val(),
			name:$("#name").val(),
			tel:$("#tel").val()};
			
			$.ajax({
				type:"POST",
				url:"http://localhost:9090/kin/member2/registerPro.jsp",
				data:query,
				success:function(data){
					if(data==1){
						alert("가입을 축하합니다");
						location.href="http://localhost:9090/kin/index.jsp";
					}
				}
			});
		}
	});
	
	$("#cancle").click(function(){
		window.location.href("main.jsp");
	});
});

function checkForm(){
	status=true;
	if(!$('#email').val()){
		alert("아이디 입력하세요.");
		$("#email").focus();
		status=false;
		return false;
	}
	if(!$('#passwd').val()){
		alert("비밀번호 입력하세요.");
		$("#passwd").focus();
		status=false;
		return false;
	}
	if($('#passwd').val()!=$("#repass").val()){
		alert("비밀번호를 동일하게 입력하세요.");
		$("#repass").focus();
		status=false;
		return false;
	}
	if(!$('#name').val()){
		alert("사용자 이름 입력하세요.");
		$("#name").focus();
		status=false;
		return false;
	}

	if(!$('#tel').val()){
		alert("전화번호 입력하세요.");
		$("#tel").focus();
		status=false;
		return false;
	}
}