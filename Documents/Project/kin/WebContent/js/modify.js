var status=true;

$(document).ready(function(){
	//modify.jsp 페이지의 정보수정 버튼을 클릭하면 자동실행
	//입력한 비밀번호를 갖고 membercheck.jsp페이지 실행
	$("#modify").click(function(){
		var query={passwd:$("#passwd").val()};
		
		$.ajax({
			type:"post",
			url:"http://localhost:9090/kin/member2/memberCheck.jsp",
			data:query,
			success:function(data){
			if(data==1){
				$("#content").load("http://localhost:9090/kin/member2/modifyForm.jsp?passwd="+$("#passwd").val());
	
			}else {
				alert("비밀번호가 맞지 않습니다");
				$("#passwd").val("");
				$("#passwd").focus();
			}
		}
		});
	
	});
	
	$("#modifyProcess").click(function(){
		checkForm(); //입력 폼에 입력한 상황 체크
		var query={
				email:$("#email").val(),
				passwd:$("#passwd").val(),
				name:$("#name").val(),
				tel:$("#tel").val()};
		
		$.ajax({
			type:"post",
			url:"http://localhost:9090/kin/member2/modifyPro.jsp",
			data:query,
			success:function(data){
				if(data==1){
					alert("회원정보가 수정되었습니다.");
					location.href="http://localhost:9090/kin/index.jsp";
				} else {
					alert("알 수 없는 에러");
				}
			}
		});
	});
	
	$("#cancle").click(function(){
		location.href="main.jsp";
	});
	
	$("#delete").click(function(){
		var query={passwd:$("#passwd").val()};
	
	$.ajax({
		type:"post",
		url:"http://localhost:9090/kin/member2/memberCheck.jsp",
		data:query,
		success:function(data){
			if(data==1){
				$.ajax({
					type:"post",
					url:"http://localhost:9090/kin/member2/deletePro.jsp",
					data:query,
					success:function(data){
						if(data==1){
							alert("회원 탈퇴가 되었습니다.");
							location.href="http://localhost:9090/kin/index.jsp";
						}
					}
				});	
			}else{
				alert("비밀번호가 맞지 않습니다");
				$("#passwd").val("");
				$("#passwd").focus();		
			}
			}
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
});