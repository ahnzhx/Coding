<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


 

</script>

<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
.footer .footer-bottom{}
* {
      text-align: center;
      font-size:30px;
       font-family: 'Hanna', cursive
    }


</style>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-file">
                            </span>게시판 상세페이지</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                       제목<input type="text" class="form-control" value="${info.title}"  readonly  />
                                    </div>
                                    
                                       
                                   
                                </div>
                            </div>
                            
                                <div class="col-md-12">
                                    <div class="form-group">
                                        회원메일<input type="text" class="form-control" value="${info.email}"  readonly  />
                                    </div>
                                    
                                       
                                    	게시판내용
                                </div>
                         	
                            ${info.content}
                            
                           
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="${info.date}"  readonly  />
                                    </div>
                                    
                                       
                                   
                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
              
                </div>
         <input type="button" class="btn btn-danger"  value="Back" onclick="history.back(1)">



</body>
</html>

