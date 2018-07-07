function regComment(num){
	var txtView = $("#txCmtArea."+num).val();
	
	
	if(txtView.trim()==""){
		alert("댓글을 입력해주세요..");
	} else{
		
		var query={
				boardRefNum:$("#cmtBoardNum").val(),
				content:$("#txCmtArea."+num).val()
		}
		$.ajax({
			type:"POST",
			url:"http://localhost:9090/kin/board/commentPro.jsp",
			data:query,
			success:function(data){
				if(data==1){
					alert("댓글이 등록되었습니다.");
					location.reload();
				}
			}
		});
	}
}