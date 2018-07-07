var status=true;

$(document).ready(function(){
	$("#login").click(function(){
		checkIt();
		if(status){
			var query={email:$("#email").val(),
					passwd:$("#passwd").val()};
			
			$.ajax({
				type:"POST",
				url:"http://localhost:9090/kin/member2/loginPro.jsp",
				data:query,
				success:function(data){
					if(data==1){
						location.reload();
					}else if(data==0){
						alert("비밀번호가 맞지 않습니다.");
						$("#passwd").val("");
						$("#passwd").focus();
					}else if(data==-1){
						alert("아이디가 맞지 않습니다.");
						$("#id").val("");
						$("#passwd").val("");
						$("#id").focus();
					}
				}
			});
			}
		
	});
	$("#logout").click(function(){
		$.ajax({
			type:"POST",
			url:"http://localhost:9090/kin/member2/logout.jsp",
			success:function(data){
				location.reload();
			}
		});
	});
});

function checkIt(){
	status=true;
	if(!$.trim($("#email").val())){
		alert("아이디를 입력하세요.");
		$("#email").focus();
		status=false;
		return false;
	}
	
	if(!$.trim($("#passwd").val())){
		alert("비밀번호를 입력하세요.");
		$("#passwd").focus();
		status=false;
		return false;
	}
	
}