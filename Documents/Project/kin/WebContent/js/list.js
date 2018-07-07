$(document).ready(function(){

	//글쓰기 버튼을 누르면..
	$("#new").click(function(){
		$("#main_board").load("http://localhost:9090/kin/board/writeForm.jsp");
	});
	
	//답변 버튼을 누르면..
	$("#reply").click(function(){
		var rStr = $(this).attr('name');
		var arr=rStr.split(",");
		
		location.href="writeForm.jsp?num="+arr[0]+"&ref="+arr[1]+"&re_step="+arr[2]+"&re_level="+arr[3]+"&pageNum="+arr[4];
		
	});

	

     
});


//글수정 버튼을 누르면 바로 실행
function edit(editBtn){
	var rStr=editBtn.name;
	var arr=rStr.split(",");
	var query="updateForm.jsp?num="+arr[0];
	query+="&pageNum="+arr[1];
	$(".inner-content").load(query);
}

function del(delBtn){
	var rStr=delBtn.name;
	var arr=rStr.split(",");
	
	var query="deleteForm.jsp?num="+arr[0];
	query+="&pageNum="+arr[1];
	$("#mainbar").load(query);
}


function p(jumpBtn){
	var rStr=jumpBtn.name;
	var query="list.jsp?pageNum="+rStr;
	$("#mainbar").load(query);
}

function view(viewBtn){
	var rStr=delBtn.name;
	var arr=rStr.split(",");
	var query="view.jsp?num="+arr[0];
	query+="&pageNum="+arr[1];
	$("#mainbar").load(query);
}

function likeit(ref,board) {
	var query={refNum:ref, boardNum:board};
	$.ajax({
		type:"POST",
		url:"http://localhost:9090/kin/board/likeitPro.jsp",
		data:query,
		success:function(data){
			if(data==1){
				alert("추천 되었습니다.");
				location.reload();
			}else if(data==2){
				alert("추천이 취소 되었습니다.");
				location.reload();
			}else if(data==-1){
				alert("알수없는 오류.. 재시도하세요!");
			}
		}
	});
}

function LikePlzLogin(){
	alert("로그인한 사용자만 추천할 수 있습니다.");
}
s
function myLikeIt(){
	alert("자신의 글은 추천할 수 없습니다.");
}

//코멘트보기
function commentView(num){
	var query="comment.jsp?num="+num;
	$(".AnswerbtnList>.reply.num" + num).hide();
	$(".AnswerbtnList>.reply.disnum.num" + num).show();
	$("#commentArea.cmtNum" + num).load(query).hide().slideDown('fast');
}

//코멘트닫기
function commentClose(num){
	$(".AnswerbtnList>.reply.num" + num).show();
	$(".AnswerbtnList>.reply.disnum.num" + num).hide();
	$("#commentArea.cmtNum" + num).slideUp('fast');
}


//채택하기
function selectAnswer(num,num2){
	var query={
			selCheck:num,
			questionNum:num2
	}
	$.ajax({
		type:"POST",
		url:"http://localhost:9090/kin/board/selectAnswerPro.jsp",
		data:query,
		success:function(data){
			if(data==1){
				alert("채택해주셔서 감사합니다!");
				location.reload();
			}
		}
	});	
}


