$(function(){
	$("#getInfo").click(function(){
		var query={subject:$("#subject").val(),
				reg_date:$("#reg_date").val(),
				name:$("#name").val(),
				email:$("#email").val(),
				tel:$("#tel").val(),
				money:$("#money").val()};
		$.ajax({
			type:"post",
			url:"mypage.jsp",
			data:query,
			success(data){
				if(data==1){
					alert("정보 로드 완료");
				}
			}	
		});
	});
});
	