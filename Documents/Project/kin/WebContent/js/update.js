var wStatus=true;

$(document).ready(function(){
	$("#update").click(function(){
		
		formCheckIt();
		if(wStatus){
			var pageNum=$("#update").val();
			var query={subject:$("#subject").val(),
					content:$("#contentTextarea").val(),
					num:$("#num").val(),
					ref:$("#ref").val()
					};
			
			$.ajax({
				type:"POST",
				url:"http://localhost:9090/kin/board/updatePro.jsp",
				data:query,
				success:function(data){
					if(data==1){
						alert("글이 수정되었습니다.");
						location.reload();	
					}
				}
			});
		}
	});
	
	$("#cancle").click(function(){
		var pageNum=$("#cancle").val();
		var query="list.jsp?pageNum="+pageNum;
		$("#main_board").load(query);
	});
});

function formCheckIt(){
	wStatus=true;
	if(!$.trim($("#subject").val())){
		alert("제목을 입력하세요.");
		$("#subject").focus();
		wStatus=false;
		return false;
	}
	if(!$.trim($("#contentTextarea").val())){
		alert("내용을 입력하세요.");
		$("#contentTextarea").focus();
		wStatus=false;
		return false;
	}
}
