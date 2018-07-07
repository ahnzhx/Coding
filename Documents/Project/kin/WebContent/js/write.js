var wStatus=true;

$(document).ready(function(){
	$("#regist").click(function(){
		formCheckIt();
		if(wStatus){
			var historyURIGO = $("#history").val();
			
			var pageNum=$("#regist").val();
			var query={
					subject:$("#subject").val(),
					content:$("#contentTextarea").val(),
					ref:$("#ref").val(),
					re_step:$("re_step").val(),
					re_level:$("#re_level").val(),
					num:$("#num").val(),
					tag:$("#tag").val()};

		$.ajax({
			type:"POST",
			url:"http://localhost:9090/kin/board/writePro.jsp",
			data:query,
			success:function(data){
				if(data==1){
					alert("글이 등록되었습니다.");
					location.href=historyURIGO;	
				}
			}
		});
		}
	});
	
	$("cancle").click(function(){
		var pageNum=$("#cancle").val();
		var query="list.jsp?pageNum="+pageNum;
			$("#main_board").load(query);
	});
});

function formCheckIt(){
	wStatus=true;
	if(!$.trim($("#subject").val())){
		alert("제목을 입력하세요");
		$("#subject").focus();
		wStatus=false;
		return false;
	}
	if(!$.trim($("#contentTextarea").val())){
		alert("내용을 입력하세요");
		$("#contentTextarea").focus();
		wStatus=false;
		return false;
	}
	
	if(!$.trim($("#tag").val())){
		alert("태그를 입력하세요");
		$("#tag").focus();
		wStatus=false;
		return false;
	}	

	
	
}