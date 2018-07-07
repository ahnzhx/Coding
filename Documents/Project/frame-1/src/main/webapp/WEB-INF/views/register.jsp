<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/web.css" rel="stylesheet">
<title>title here</title>

</head>

<style>
.room-upload-wrap .content .submit-wrap {
	width: 100%;
	margin-bottom: 66px;
	text-align: center;
}
iframe { width:400px; height:220px;  margin-left :15px;}
</style>
<jsp:include page="top.jsp" />


<div class="container">
	<div id="room-component">
		<div data-reactid=".0">
			<div class="room-upload-wrap" data-reactid=".0.0">
				<div class="title" data-reactid=".0.0.0">
					<h2>
						<img src="resources/img/title-01.png" alt="방 등록하기">
					</h2>
					<div class="description clearfix">
						<p>
							<span>- 등록한 방 정보는 직거래 매물로 등록되며, 최대 30일까지 노출 후 거래완료 상태로
								전환됩니다.</span><br> <span>- 방 등록이 완료된 매물은 방 정보와 회원정보(연락처, 메일
								등)와 함께 노출됩니다.</span><br> <span>- 거래완료된 매물을 완료처리하지 않은 경우
								허위매물 등록으로 이용이 제한될 수 있습니다</span><br> <span>- 매물 관리규정에 위배 되거나
								신고된 매물은 비공개 또는 삭제처리되며 경고 및 제재조치를 받을 수 있습니다.</span><br> <em>-
								부동산 중개사는 직거래 매물을 등록할 수 없으며, 공인중개사회원 가입 후 이용하시기 바랍니다.</em>
						</p>
					</div>
				</div>
				<div class="content">
					<div class="LocationAddress">
						<h3>
							<img src="resources/img/title-02.png" alt="위치 정보">
						</h3>
						<table class="table">
							<caption class="caption">매물 등록 주소입력 항목</caption>
							<colgroup>
								<col style="width: 131px;">
								<col style="width: 425px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th>주소</th>
									<td style="padding-right: 10px;"><p
											class="location-discription" style="margin-bottom: 10px;">
											<i
												class="dabang-icon dabang-icon-exclamation-circle icon-size-lg"></i><span>도로명,
												건물명, 지번에 대해 통합검색이 가능합니다.</span>
										</p>

										<p class="Address-row Address-row--typing">


											<!-- /////////////////////////////////////////검색창 ////////////////////////////////////////////////////////////////////////// -->

											<!--  검색 쿼리 창 -->
											<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->

										 <input type="text" name=""
												class="postcodify_address addr1 form-control" value="" /><br> <input
												type="text" name="" class="form-control postcodify_extra_info addr2"
												value="" />
											<button class="btn btn-blue btn-xl border-radius-large" id="postcodify_search_button">검색</button>
											
											<!--  검색 쿼리창 끝 -->
											
										</p>

										<p class="location-discription clearfix"
											style="margin-top: 10px; color: #ef4351;"></p></td>
									<td style="padding-left: 0;"><div class="DaumMap-mask">
											<div class="DaumMap"></div>
										</div></td>
								</tr>
							</tbody>
						</table>
				 	<!--  사진업로드 -->
				
					
				<form id="form1" action="uploadForm.do" method="post" enctype="multipart/form-data" target="zeroFrame">
				<br>
								<td style="padding-right: 10px;"><p
											class="location-discription" style="margin-bottom: 10px;">
											<i style="margin-left:15px;"
												class="dabang-icon dabang-icon-exclamation-circle icon-size-lg"></i><span>
												선택하신 이미지로 등록하실경우 이미지 선택 후 이미지미리보기를 눌러주세요</span>
										</p>
				
				<!-- target = "iframe1">	 -->					
				<input type="file" name="file" >
				<input type="submit" value="이미지미리보기">
				
				</form>
				<br>
				<!-- <iframe name="iframe1"></frame> -->
				<iframe name="zeroFrame">
					
				</iframe>
										
								
				 
				</div>		
				<!-- 사진업로드 끝 -->
					
					<div class="basic-wrap" style="margin-top:10px">
						<h3 data-reactid=".0.0.1.1.0">
							<img src="resources/img/title-03.png" alt="기본 정보">
						</h3>
						<table class="table">
							<caption class="caption">기본 정보</caption>
							<colgroup>
								<col style="width: 131px;">
								<col>
								<col style="width: 131px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th>방 종류</th>
									<td colspan="3" style="position: relative;">
										<!-- 방 종류 select --> <select class="form-control room_type"
										id="room_type" name='room_type'><option value="0">방
												종류 선택</option>
											<option value="1">1</option>
											<option value="1.5">1.5</option>
											<option value="2">2</option>
											<option value="3">3</option></select> <!-- 방 종류 select -->

										<div
											style="display: inline-block; width: 600px; position: absolute; top: 9px;">
											<p
												style="margin-left: 25px; color: #585858; line-height: 18px;">
												<span data-reactid=".0.0.1.1.1.2.0.1.1.0.1"> </span><span
													data-reactid=".0.0.1.1.1.2.0.1.1.0.2">오피스텔, 아파트는
													다방앱에서 등록 가능 합니다.</span>
											</p>
											<p
												style="margin-left: 25px; color: #585858; line-height: 18px;"
												data-reactid=".0.0.1.1.1.2.0.1.1.1">
												<span data-reactid=".0.0.1.1.1.2.0.1.1.1.1"> </span><span
													data-reactid=".0.0.1.1.1.2.0.1.1.1.2">다방에서는 고시원(텔)등의
													고시원업 매물 등록을 제한합니다(차단조치)</span>
											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th>거래 종류</th>
									<td colspan="3" class="transaction-type"><div
											class="transaction-item">
											<select class="form-control lease_type" id = 'lease_type' name='lease_type'><option
													value="0">방 종류 선택</option>
												<option value="월세">월세</option>
												<option value="전세">전세</option>
											</select>

										</div>
										<div class="transaction-item lease_type"
											style="padding: 5px 10px; line-height: 18px; color: #ef4351;">
											<span>거래종류를 추가해 주세요.  첫 번째 선택한 거래종류가 우선 노출
												됩니다.</span><br> <span style="font-size: 12px;">(예치금이 있는
												경우 보증금 입력란에 필히 예치금을 입력 하세요. - 미 입력시 허위 매물로 적발됩니다.)</span>
										</div>
										<div class="transaction-item">
											<input name='cost1' type="number" class="form-control cost1"
												placeholder="보증금" value="0"><span class="slush">/</span><input
												name='cost2' type="number" class="form-control cost2"
												placeholder="0" value="0"><span>만원</span><span
												class="discription">(예
												월세 1000만원 / 50만원)</span><i class="icon-delete" aria-label="월세 지우기"></i>
										</div></td>
								</tr>
								<tr>
									<th>건물 층수</th>
									<td class="transaction-type"><div class="transaction-item">
									<span style="margin-right: 10px;">건물 층수</span>


									 <select class="form-control floor1" name='floor1' id="floor1"><option value="0">건물 층수 선택</option>
                                       <option value="1">1층</option>
                                       <option value="2">2층</option>
                                       <option value="3">3층</option>
                                       <option value="4">4층</option>
                                       <option value="5">5층</option>
                                       <option value="6">6층</option>
                                       <option value="7">7층</option>
                                       <option value="8">8층</option>
                                       <option value="9">9층</option>
                                       <option value="10">10층</option>
                                       <option value="11">11층</option>
                                       <option value="12">12층</option>
                                       <option value="13">13층</option>
                                       <option value="14">14층</option>
                                       <option value="15">15층</option>
                                       <option value="16">16층</option>
                                       <option value="17">17층</option>
                                       <option value="18">18층</option>
                                       <option value="19">19층</option>
                                       <option value="20">20층</option>
                                       <option value="21">21층</option>
                                       <option value="22">22층</option>
                                       <option value="23">23층</option>
                                       <option value="24">24층</option>
                                       <option value="25">25층</option>
                                       <option value="26">26층</option>
                                       <option value="27">27층</option>
                                       <option value="28">28층</option>
                                       <option value="29">29층</option>
                                       <option value="30">30층</option>
                                       <option value="31">31층</option>
                                       <option value="32">32층</option>
                                       <option value="33">33층</option>
                                       <option value="34">34층</option>
                                       <option value="35">35층</option>
                                       <option value="36">36층</option>
                                       <option value="37">37층</option>
                                       <option value="38">38층</option>
                                       <option value="39">39층</option>
                                       <option value="40">40층</option>
                                       <option value="41">41층</option>
                                       <option value="42">42층</option>
                                       <option value="43">43층</option>
                                       <option value="44">44층</option>
                                       <option value="45">45층</option>
                                       <option value="46">46층</option>
                                       <option value="47">47층</option>
                                       <option value="48">48층</option>
                                       <option value="49">49층</option>
                                       <option value="50">50층</option></select>



										</div>
										<div class="transaction-item">
											<span style="margin-right: 10px;">해당 층수</span><select
												class="form-control floor2" name='floor2' id="floor2"><option
													value="0">해당 층수 선택</option>
												<option value="1">1층</option>
												<option value="2">2층</option>
												<option value="3">3층</option>
												<option value="4">4층</option>
												<option value="5">5층</option>
												<option value="6">6층</option>
												<option value="7">7층</option>
												<option value="8">8층</option>
												<option value="9">9층</option>
												<option value="10">10층</option>
												<option value="11">11층</option>
												<option value="12">12층</option>
												<option value="13">13층</option>
												<option value="14">14층</option>
												<option value="15">15층</option>
												<option value="16">16층</option>
												<option value="17">17층</option>
												<option value="18">18층</option>
												<option value="19">19층</option>
												<option value="20">20층</option>
												<option value="21">21층</option>
												<option value="22">22층</option>
												<option value="23">23층</option>
												<option value="24">24층</option>
												<option value="25">25층</option>
												<option value="26">26층</option>
												<option value="27">27층</option>
												<option value="28">28층</option>
												<option value="29">29층</option>
												<option value="30">30층</option>
												<option value="31">31층</option>
												<option value="32">32층</option>
												<option value="33">33층</option>
												<option value="34">34층</option>
												<option value="35">35층</option>
												<option value="36">36층</option>
												<option value="37">37층</option>
												<option value="38">38층</option>
												<option value="39">39층</option>
												<option value="40">40층</option>
												<option value="41">41층</option>
												<option value="42">42층</option>
												<option value="43">43층</option>
												<option value="44">44층</option>
												<option value="45">45층</option>
												<option value="46">46층</option>
												<option value="47">47층</option>
												<option value="48">48층</option>
												<option value="49">49층</option>
												<option value="50">50층</option>
												</select>
										</div></td>
									<th><span>건물면적</span><br> <span>(1P = 3.3058㎡)</span></th>
									<td class="transaction-type building-size-wrap"
										style="width: 300px;">
										<div class="transaction-item" data-reactid="">
											<span class="title">전용 면적</span><input type="number"
												name='roomsize' class="form-control roomsize" value="0"><span>평</span><span><span>
													(</span><span></span></span><span class="unit"><span>m</span><sup>2</sup><span
												data-reactid="">)</span></span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="detail-wrap"=""="">
						<h3="">
							<img src="resources/img/title-05.png" name='title' alt="상세 설명"=""="">

							<colgroup="">
							</colgroup="">
							<col="">
							</col="">
							<col="">

							<tbody="">
								<tr="">
									<th="">방 제목</th="">
								</tr="">
							</tbody="">
							</col="">
							<tr="">
							</tr="">
							<tr="">
							</tr="">
							<table class="table"=""="">
								<caption class="caption"=""="">상세 설명</caption>
								<colgroup>
									<col style="width: 131px;"=""="">
								</colgroup>
								<colgroup>
									<col style="width: 131px;"=""="">
								</colgroup>
								<tbody>
									<tr>
										<td colspan="3" class="td-tit"><input type="text"
											class="form-control room_title" name="title" maxlength="20" 
											placeholder="예)신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다." value="">
										</td>
									</tr>

								</tbody>
							</table>
						</h3="">
					</div>
					<div class="photo-wrap"></div>
					<div class="alert"=""="">
						<i
							class="dabang-icon dabang-icon-exclamation-circle icon-size-3xl"=""=""></i>
						<p="">허위매물을 등록할 경우 다방에서 임의적으로 계정 및 매물 전체 삭제 처리되며, 결제된 금액은 환불되지
							않습니다.
						<p></p>
						</p="">
					</div>
					<div class="submit-wrap"=""="">
						<button class="btn btn-gray btn-xl border-radius-large btnradius"
							style="margin-right: 16px;"=""="">취소</button>
						<button id="up_room" class="btn btn-blue btn-xl border-radius-large up_room"=""="">방
							올리기</button>
					</div>
				</div>
			</div>
			<noscript data-reactid=""></noscript>
		</div>
	</div>
</div>

<jsp:include page="top2.jsp" />


<!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script>
var img;
function getimage(src){
	img= src;
}
	$(function() {
		
		
		
		$("#postcodify_search_button").postcodifyPopUp();
		$(".up_room").click(function() {
			if ($(".addr1").val() == '') {
				$(".addr1").focus();
				alert('주소1를 입력하세요');
				return;
			} else if ($(".addr2").val() == '') {
				$(".addr2").focus();
				alert('주소2를 입력하세요');
				return;
			} else if ($(".room_type").val() == '0') {
				$(".room_type").focus();
				alert('방종류를 선택하세요');
				return;
			} else if ($(".lease_type").val() == '0') {
				$(".lease_type").focus();
				alert('거래종류를 선택하세요');
				return;
			} else if ($(".floor1").val() == '0') {
				$(".floor1").focus();
				alert('건물층수를 선택하세요');
				return;
			}else if ($(".floor2").val() == '0') {
				$(".floor2").focus();
				alert('해당를층수 선택하세요');
				return;
			}else if ($(".room_title").val() == ''){
				
				alert('방제목을 입력하세요');
				return;
			}
			else if ($(".roomsize").val() == ''){
				
				alert('방평수을 입력하세요');
				return;
			}
			var addr1=$(".addr1").val();
			
			var addr2=$(".addr2").val();
			var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi

			var addr2;
				 if(regExp.test(addr2)){


				      //특수문자 제거 가로제거


				     addr2 = addr2.replace(regExp, "");



				  }
			
			var room_type=$(".room_type").val();
			var lease_type=$(".lease_type").val();
			var cost1=$(".cost1").val();
			var cost2=$(".cost2").val();
			var floor1=$(".floor1").val();
			var floor2=$(".floor2").val();
			var title=$(".room_title").val();
			var roomsize=$(".roomsize").val();
			/* var img = $("#room_img").attr('src'); */
			//console.log(img);
			console.log(addr1);
			console.log(addr2);
			console.log(room_type);
			console.log(lease_type);
			console.log(floor1);
			console.log(floor2);
			console.log(cost1);
			console.log(cost2);
			console.log(title);
			console.log(roomsize);
			 
			
			  jQuery.ajax({
	              url : "room_register.do",
	              method : "post",
	              data : "addr1="+addr1+"&addr2="+addr2+"&room_type="+room_type+"&floor1="+floor1+
	              "&floor2="+floor2+"&roomsize="+roomsize+"&lease_type="+lease_type+"&cost1="+cost1
	              +"&cost2="+cost2+"&title="+title+"&img="+img
	              ,
	              //dataType: "JSON", // 옵션이므로 JSON으로 받을게 아니면 안써도 됨
	              success : function(data) {
	            	  alert('방등록이완료되었습니다');
	                  location.href="search_room.do";
	              },
	             
	              
	              error : function(xhr, status, error) {
	                    alert("에러발생  status : " + status + ", xhr : " + xhr + ", error : "+ error);
	              }
	        });
	
			
		});
	});
</script>