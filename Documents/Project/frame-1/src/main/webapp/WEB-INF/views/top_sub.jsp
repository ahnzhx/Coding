<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="web.css" rel="stylesheet">
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#11 input {
   display: inline;
   float: left;
}

.11 {
   height: 80px;
   display: block;
   float: left;
}
</style>

</head>
<div class="container">
   <div id="search-component">
      <div class="container">
         <div class="filter clearfix">
            <div class="filter-dropdown">

               <div class="title active">
                  <h2 class="name">매물종류</h2>
               
                  
                  <ul class="hide">
                     <span>매물종류</span>
                     <br>

                     <div class="11" style="display: block;">
                        <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" checked="" value="월세 + 전세">
                           <span class="name">월세 + 전세</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="월세"> <span
                           class="name">월세</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="전세"> <span
                           class="name">전세</span>
                        </label>
                     </div>

                  </ul>
               </div>


               <div class="title active2">
                  <h2 class="name">거래종류</h2>
                  <ul class="hide">
                     <span>거래종류</span>
                     <br>

                     <div class="11" style="display: block;">
                        <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" checked="" value="월세 + 전세">
                           <span class="name">전체</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="월세"> <span
                           class="name">중개</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="전세"> <span
                           class="name">직거래</span>
                        </label>
                     </div>

                  </ul>
               </div>
               <div class="title active3">
                  <h2 class="name">방 종류</h2>
                  <ul class="hide">
                     <span>방 종류</span>
                     <br>

                     <div class="11" style="display: block;">
                        <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" checked="" value="월세 + 전세">
                           <span class="name">전체</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="월세"> <span
                           class="name">원룸</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="전세"> <span
                           class="name">1.5룸</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" checked="" value="월세 + 전세">
                           <span class="name">투룸</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="월세"> <span
                           class="name">쓰리룸</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" value="전세"> <span
                           class="name">오피스텔</span>
                        </label><br> <label class="checkbox-wrap clearfix"> <input
                           class="checkbox" type="checkbox" checked="" value="월세 + 전세">
                           <span class="name">아파트</span>
                        </label><br>

                     </div>

                  </ul>
               </div>

               <div class="title active4">
                  <h2 class="name">매물종류</h2>
                  
                        </div>
                        <div class="price-select-list to">
                        </div>


                     </div>
                  </div>
               </div>
            </div>
            <script>
               $(document).ready(function() {
                  // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
                  $(".name").click(function() {
                     // 현재 클릭한 태그가 a 이기 때문에
                     // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
                     $(this).next("ul").toggleClass("hide");
                  });
               });
            </script>
</html>