var wStatus=true;

$(document).ready(function(){
	$("#delete").click(function(){		
		if(wStatus){
			var pageNum=$("#delete").val();
			var query={
				num:$("#num").val()
				};
			
			$.ajax({
				type:"POST",
				url:"http://localhost:9090/kin/board/deletePro.jsp",
				data:query,
				success:function(data){
					if(data==1){
						alert("글이 삭제되었습니다.");
				//	var query="list.jsp?pageNum="+pageNum;
					//location.reload();
					location.href="http://localhost:9090/kin/board/questionList.jsp";
					}
				}
			});
		}
	});
	$("#cancle").click(function(){
		var pageNum=$("#cancle").val();
//		var query="list.jsp?pageNum="+pageNum;
		location.href="http://localhost:9090/kin/board/questionList.jsp";
	});
});
