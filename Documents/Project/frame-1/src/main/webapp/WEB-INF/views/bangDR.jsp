<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/web.css" rel="stylesheet">
<title>title here</title>
</head>

<jsp:include page = "top.jsp" flush="false"/>
<body>
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
									허위매물 등록으로 이용이 제한될 수 있습니다</span><br> <span>- 매물 관리규정에 위배
									되거나 신고된 매물은 비공개 또는 삭제처리되며 경고 및 제재조치를 받을 수 있습니다.</span><br> <em>-
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
											<form class="Address">
												<p class="Address-row Address-row--typing">
													<input type="text" class="form-control"
														placeholder="예) 번동 10-1, 강북구 번동">
													<button type="submit" class="Address-submit btn">주소검색</button>
												</p>
												<p class="Address-row Address-row--addr">
													<textarea class="form-control" readonly=""></textarea>
												</p>
												<p class="Address-row Address-row--detail">
													<input class="form-control" type="text" readonly=""
														value="" placeholder="상세 주소를 입력하세요. (동, 호수)">
												</p>
											</form>
											<p class="location-discription clearfix"
												style="margin-top: 10px; color: #ef4351;">
												<i
													class="dabang-icon dabang-icon-exclamation-circle icon-size-lg left"></i>
												<button
													style="display: block; margin-left: 20px; text-decoration: underline; cursor: pointer;"
													class="btn-no-border btn-no-bg">주소가 검색되지 않으세요?</button>
											</p></td>
										<td style="padding-left: 0;"><div class="DaumMap-mask">
												<div class="DaumMap"></div>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="basic-wrap">
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
										<td colspan="3" style="position: relative;"><select
											class="form-control"><option value="">방 종류
													선택</option>
												<option value="0">원룸</option>
												<option value="5">1.5룸</option>
												<option value="1">투룸</option>
												<option value="2">쓰리룸</option></select>
											<div
												style="display: inline-block; width: 600px; position: absolute; top: 9px;">
												<p
													style="margin-left: 10px; color: #585858; line-height: 18px;">
													<i
														class="dabang-icon dabang-icon-exclamation-circle icon-size-lg"></i><span
														data-reactid=".0.0.1.1.1.2.0.1.1.0.1"> </span><span
														data-reactid=".0.0.1.1.1.2.0.1.1.0.2">오피스텔, 아파트는
														다방앱에서 등록 가능 합니다.</span>
												</p>
												<p
													style="margin-left: 10px; color: #585858; line-height: 18px;"
													data-reactid=".0.0.1.1.1.2.0.1.1.1">
													<i
														class="dabang-icon dabang-icon-exclamation-circle icon-size-lg"
														data-reactid=".0.0.1.1.1.2.0.1.1.1.0"></i><span
														data-reactid=".0.0.1.1.1.2.0.1.1.1.1"> </span><span
														data-reactid=".0.0.1.1.1.2.0.1.1.1.2">다방에서는
														고시원(텔)등의 고시원업 매물 등록을 제한합니다(차단조치)</span>
												</p>
											</div></td>
									</tr>
									<tr>
										<th>거래 종류</th>
										<td colspan="3" class="transaction-type"><div
												class="transaction-item">
												<button class="btn btn-white-gray btn-xs border-radius-base">전세
													추가</button>
												<button class="btn btn-white-gray btn-xs border-radius-base">월세
													추가</button>
												<label><input type="checkbox" style="width: 20px;"><span>단기
														가능</span></label>
											</div>
											<div class="transaction-item"
												style="padding: 5px 10px; line-height: 18px; color: #ef4351;">
												<span>거래종류를 추가해 주세요. 다중 선택 가능하며, 첫 번째 선택한 거래종류가 우선 노출
													됩니다.</span><br> <span style="font-size: 12px;">(예치금이
													있는 경우 보증금 입력란에 필히 예치금을 입력 하세요. - 미 입력시 허위 매물로 적발됩니다.)</span>
											</div></td>
									</tr>
									<tr>
										<th>건물 층수</th>
										<td class="transaction-type"><div
												class="transaction-item">
												<span style="margin-right: 10px;"
													data-reactid=".0.0.1.1.1.2.2.1.0.0">건물 층수</span><select
													class="form-control"><option value="">건물
														층수 선택</option>
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
													class="form-control"><option value=""
														data-reactid=".0.0.1.1.1.2.2.1.1.1.0.0">해당 층수 선택</option>
													<option value="-1">반지층</option>
													<option value="0">옥탑</option>
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
											</div></td>
										<th><span>건물크기</span><br> <span>(1P =
												3.3058㎡)</span></th>
										<td class="transaction-type building-size-wrap"
											style="width: 300px;"><div class="transaction-item">
												<span class="title">공급 면적</span><input type="number"
													class="form-control" value=""><span>평</span><span><span>
														(</span><span></span></span><span class="unit"><span>m</span><sup>2</sup><span>)</span></span>
											</div>
											<div class="transaction-item" data-reactid="">
												<span class="title">전용 면적</span><input type="number"
													class="form-control" value=""><span>평</span><span><span>
														(</span><span></span></span><span class="unit"><span>m</span><sup>2</sup><span
													data-reactid="">)</span></span>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="additional-wrap"="">
							<h3="">
								<img src="resources/img/title-04.png" alt="추가 정보"="">
							</h3>
							<table class="table"="">
								<caption class="caption"="">추가 정보</caption>
								<colgroup="">
									<col style="width: 131px;"="">
									<col="">
									<col style="width: 131px;"="">
									<col="">
								</colgroup>
								<tbody="">
									<tr="">
										<th="">관리비</th>
										<td colspan="3" class="transaction-type"=""><div
												class="transaction-item"="">
												<label=""><input type="checkbox"=""><span="">있음</span></label><input
													type="text" class="form-control" disabled=""
													style="background-color: #ecf0f5;"=""><span
													style="margin-right: 23px;"="">만원</span><label=""><input
													type="checkbox" checked=""=""><span="">없음</span></label>
											</div>
											<div class="transaction-item"="">
												<span style="margin-right: 5px;"="">관리비포함 항목 선택:</span><label=""><input
													type="checkbox"=""><span="">인터넷</span></label><label=""><input
													type="checkbox"=""><span="">유선TV</span></label><label=""><input
													type="checkbox"=""><span="">청소비</span></label><label=""><input
													type="checkbox"=""><span="">수도세</span></label><label=""><input
													type="checkbox"=""><span="">도시가스</span></label><label=""><input
													type="checkbox"=""><span="">전기세</span></label>
											</div></td>
									</tr>
									<tr="">
										<th="">주차 여부</th>
										<td=""><label=""><input type="checkbox"=""><span="">가능</span></label><input
											type="text" class="form-control" disabled="" value=""
											style="background-color: #ecf0f5;"=""><span
											style="margin-right: 23px;"="">만원</span><label=""><input
												type="checkbox" checked=""=""><span="">불가능</span></label></td>
										<th="">난방종류</th>
										<td=""><select class="form-control"=""><option
													value=""="">난방종류 선택</option>
												<option value="0"="">중앙 난방</option>
												<option value="1"="">개별 난방</option>
												<option value="2"="">지역 난방</option></select></td>
									</tr>
									<tr="">
										<th="">엘리베이터</th>
										<td=""><label=""><input type="checkbox"=""><span="">
											</span><span="">있음</span></label><label=""><input
												type="checkbox" checked=""=""><span="">
											</span><span="">없음</span></label></td>
										<th="">반려동물</th>
										<td=""><label=""><input type="checkbox"=""><span="">
											</span><span="">가능</span></label><label=""><input
												type="checkbox" checked=""=""><span="">
											</span><span="">불가능</span></label></td>
									</tr>
									<tr="">
										<th="">입주 가능일</th>
										<td colspan="3"=""><input type="text"
											class="form-control"
											style="width: 100px; background-color: #fff; text-align: center;"
											value="" disabled=""="">
											<button class="calendar btn-no-border btn-no-bg"="">
												<span class="screen-reader-only"="">달력</span>
											</button> <label=""><input type="checkbox"=""><span="">즉시
													입주</span></label><label=""><input type="checkbox"=""><span="">날짜
													협의</span></label>
											<div class="calendar-popup" style="display: none;"="">
												<div class="Calendar"="">
													<div class="CalendarControls"="">
														<div
															class="CalendarControls-item CalendarControls-item--prev"="">&lt;&lt;
															이전달</div>
														<div
															class="CalendarControls-item CalendarControls-item--current"="">2018-03</div>
														<div
															class="CalendarControls-item CalendarControls-item--next"="">다음달
															&gt;&gt;</div>
													</div>
													<div class="Calendar-grid"="">
														<div class="Calendar-days"="">
															<div class="Calendar-day Calendar-day--prev_month"="">
																<span class="CalendarDay-number"="">25</span>
															</div>
															<div class="Calendar-day Calendar-day--prev_month"="">
																<span class="CalendarDay-number"="">26</span>
															</div>
															<div class="Calendar-day Calendar-day--prev_month"
																data-reactid="">
																<span class="CalendarDay-number" data-reactid="">27</span>
															</div>
															<div class="Calendar-day Calendar-day--prev_month"="">
																<span class="CalendarDay-number"="">28</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">1</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">2</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">3</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">4</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">5</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">6</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">7</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">8</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">9</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">10</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">11</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">12</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">13</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">14</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">15</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">16</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">17</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">18</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">19</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">20</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">21</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">22</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">23</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">24</span>
															</div>
															<div class=" Calendar-day Calendar-day--prev_day"="">
																<span class="CalendarDay-number"="">25</span>
															</div>
															<div class=" Calendar-day Calendar-day--today"="">
																<span class="CalendarDay-number"="">26</span>
															</div>
															<div class="Calendar-day"="">
																<span class="CalendarDay-number"="">27</span>
															</div>
															<div class="Calendar-day"="">
																<span class="CalendarDay-number"="">28</span>
															</div>
															<div class="Calendar-day"="">
																<span class="CalendarDay-number"="">29</span>
															</div>
															<div class="Calendar-day"="">
																<span class="CalendarDay-number"="">30</span>
															</div>
															<div class="Calendar-day"="">
																<span class="CalendarDay-number">31</span>
															</div>
														</div>
													</div>
												</div>
											</div></td>
									</tr>
									<tr="">
										<th="">옵션항목</th>
										<td colspan="3" style="line-height: 2.2;"=""><div="">
												<label=""><input type="checkbox"=""><span="">에어컨</span></label><label=""><input
													type="checkbox"=""><span="">세탁기</span></label><label=""><input
													type="checkbox"=""><span="">침대</span></label><label=><input
													type="checkbox"=""><span="">책상</span></label><label=""><input
													type="checkbox"=""><span="">옷장</span></label><label=""><input
													type="checkbox"=""><span="">TV</span></label><label=""><input
													type="checkbox"=""><span="">신발장</span></label><label=""><input
													type="checkbox"=""><span="">냉장고</span></label><label=""><input
													type="checkbox"=""><span="">가스레인지</span></label><label=""><input
													type="checkbox"=""><span="">인덕션</span></label><label=""><input
													type="checkbox"=""><span="">전자레인지</span></label><label=""><input
													type="checkbox"=""><span="">전자도어락</span></label><label=""><input
													type="checkbox"=""><span="">비데</span></label>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="detail-wrap"="">
							<h3="">
								<img src="resources/img/title-05.png" alt="상세 설명"="">
							</h3>
							<table class="table"="">
								<caption class="caption"="">상세 설명</caption>
								<colgroup="">
									<col style="width: 131px;"="">
									<col="">
									<col style="width: 131px;"="">
									<col="">
								</colgroup>
								<tbody="">
									<tr="">
										<th="">방 제목</th>
										<td colspan="3" class="td-tit"=""><input type="text"
											class="form-control" maxlength="20"
											placeholder="예) 신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다." value=""=""><span
											class="tit-count"=""><span
												data-reactid="">0</span><span=""> </span><span="">/
													20</span></span></td>
									</tr>
									<tr="">
										<th style="height: 194px;"="">상세 설명</th>
										<td colspan="3" class="td-desc"=""><textarea
												class="form-control form-desc" maxlength="500"
												style="height: 194px;"
												placeholder="방에 대한 추가 설명을 적어주세요.

홈페이지, 블로그, SNS, 메신져ID, 전화번호, 이메일 등. 방정보에 관련된 내용 이외에는 넣을 수 없습니다.
중개수수료 언급을 할 수 없습니다.(중개수수료,공짜,무료,반값 등)"=""></textarea>
											<div class="desc-count"="">
												<span="">0</span><span=""> </span><span="">/ 500</span>
											</div></td>
									</tr>
									<tr="">
										<th style="height: 104px;"="">비공개 메모</th>
										<td colspan="3"=""><textarea class="form-control"
												style="height: 104px;"
												placeholder="외부에 공개되지 않으며, 등록자에게 보이는 메모 입니다."
												data-reactid=""></textarea></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="photo-wrap"="">
							<div class="header clearfix"="">
								<h3="">
									<img src="resources/img/title-06.png" alt="사진 업로드"="">
								</h3>
								<ul class="gnb clearfix"="">
									<li class="general"=""><button class="active"="">일반
											사진 올리기</button></li>
									<li class="pano"=""><button class=""="">360˚
											사진 올리기</button></li>
								</ul>
								<div class="line"=""></div>
							</div>
							<div class="photo-guide-wrap"="">
								<div class="photo-guide"="">
									<p="">
										<span>- 사진은 가로로 찍은 사진을 권장합니다. (가로 사이즈 최소 800픽셀)</span><br="">
										<span>- 사진 용량은 사진 1장당 10MB까지 등록이 가능합니다.</span><br=""> <span="">-
											사진은 최소 3장 이상 등록해야하며, 최대 15장까지 권장합니다. 그 이상 등록할 경우 업로드 시간이 다소
											지연될 수 있습니다.</span>
									</p>
								</div>
								<div id="files" class="photo-zone sortable"="">
									<div class="discription"="">
										<p class=""="">
											<img src="resources/img/photo-discription.png"
												alt="실사진 최소 3장 이상 등록 하셔야 하며, 가로 사진을 권장합니다." data-reactid="">
										</p>
										<div id="fileupload-btn"
											class="btn btn-blue btn-md border-radius-base"
											aria-label="일반 사진 등록"
											=""
											style="position: relative; z-index: 1;">일반
											사진 등록</div>
										<div id="html5_1c9fvcaj7a3qmdurib1dks8q43_container"
											class="moxie-shim moxie-shim-html5"
											style="position: absolute; top: 106px; left: 409px; width: 142px; height: 44px; overflow: hidden; z-index: 0;">
											<input id="html5_1c9fvcaj7a3qmdurib1dks8q43" type="file"
												style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;"
												multiple="" accept="image/jpeg,image/png,.webp">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="alert"="">
							<i
								class="dabang-icon dabang-icon-exclamation-circle icon-size-3xl"=""></i>
							<p="">허위매물을 등록할 경우 다방에서 임의적으로 계정 및 매물 전체 삭제 처리되며, 결제된 금액은
								환불되지 않습니다.</p>
						</div>
						<div class="submit-wrap"="">
							<button class="btn btn-gray btn-xl border-radius-large btnradius"
								style="margin-right: 16px;"="">취소</button>
							<button class="btn btn-blue btn-xl border-radius-large"="">방
								올리기</button>
						</div>
					</div>
				</div>
				<noscript data-reactid=""></noscript>
			</div>
		</div>
	</div>

</body>

</html>