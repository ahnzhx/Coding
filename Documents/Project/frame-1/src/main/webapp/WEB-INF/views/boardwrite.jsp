<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<script>

    $(document).ready(function() {

        $('#summernote').summernote({

height : 500, // 에디터의 높이 

minHeight : null,

maxHeight : null,

focus : true,

lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경

        });

        $(".add-room").click(function() {
			if(${sessionScope.name==null}){
				alert('로그인을 먼저 해주세요');
			}
			});
    });



    var postForm = function() {

    var contents =  $('textarea[name="contents"]').html($('#summernote').code());
	
}

 

</script>

<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
.footer .footer-bottom{}
 #list {
      text-align: center;
      font-size:30px;
       font-family: 'Hanna', cursive
    }


</style>
</head>

<body>
<form id="articleForm" role="form" action="board_insert.do" method="post">
  <br style="clear: both">
  <h3 id="list" style="margin-bottom: 25px; text-align: center;">방 정보게시판 입력</h3>
  <div class="form-group">
    <input name="title" type="text" class="form-control" id="subject" name="subject" placeholder="제목을입력해주세요" required>
  </div>
  <div class="form-group">
    <textarea name="content" class="form-control" id="summernote" name="content" placeholder="content" maxlength="140" rows="7"></textarea>
  </div>
  <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">등록</button>
</form>


<input type="button" class="btn  btn-danger"  value="Back" onclick="history.back(1)">
</body>
</html>

