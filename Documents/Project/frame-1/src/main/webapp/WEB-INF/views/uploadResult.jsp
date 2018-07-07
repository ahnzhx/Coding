<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<title>Insert title here</title>
<style>

</style>
</head>
<body>

   
  <img src="/upload/${savedName}" width="300" height="200" id="room_img">
<script>
    var result = "${savedName}";
    var src= $('img').attr('src');
    parent.getimage(src);
 /*    call(src);
    function call(src){
    		parent.Msg(src);
    } */
</script>


</body>
</html>