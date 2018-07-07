<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet">
<title>title here</title>

<style>
.input1 {
	
}
.dropdown-menu>li.kopie>a {
	padding-left: 5px;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px 6px;
	border-radius: 0 6px 6px 6px;
}

.dropdown-submenu>a:after {
	border-color: transparent transparent transparent #333;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	content: " ";
	display: block;
	float: right;
	height: 0;
	margin-right: -10px;
	margin-top: 5px;
	width: 0;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #555;
}

.dropdown-menu>li>a:hover, .dropdown-menu>.active>a:hover {
	text-decoration: none;
}

@media ( max-width : 767px) {
	.navbar-nav {
		display: inline;
	}
	.navbar-default .navbar-brand {
		display: inline;
	}
	.navbar-default .navbar-toggle .icon-bar {
		background-color: #fff;
	}
	.navbar-default .navbar-nav .dropdown-menu>li>a {
		display: inline;
		color: red;
		background-color: #ccc;
		border-radius: 4px;
		margin-top: 2px;
	}
	.dropdown-menu>li>a {
		display: inline;
		padding: 3px 20px;
		clear: both;
		font-weight: 400;
		line-height: 1.42857143;
		color: #333;
		white-space: nowrap;
	}
	.navbar-default .navbar-nav .open .dropdown-menu>li>a {
		color: #333;
	}
	.navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,
		.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus {
		background-color: #ccc;
	}
	.navbar-nav .open .dropdown-menu {
		border-bottom: 1px solid white;
		border-radius: 0;
	}
	.dropdown-menu {
		padding-left: 10px;
	}
	.dropdown-menu .dropdown-menu {
		padding-left: 20px;
	}
	.dropdown-menu .dropdown-menu .dropdown-menu {
		padding-left: 30px;
	}
	li.dropdown.open {
		border: 0px solid red;
	}
}

@media ( min-width : 768px) {
	ul.nav li:hover>ul.dropdown-menu {
		display: block;
	}
	#navbar {
		text-align: center;
	}
}
.filter .filter-dropdown .content .price-select-list .price-list .price-item.hover {
    background-color: #3b8de0;
    color: #fff;
}

</style>
</head>
<body>

	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<style>
.dropdown-menu>li>a {
	display: inline;
	padding: 3px 20px;
	clear: both;
	font-weight: 400;
	line-height: 1.42857143;
	color: #333;
	white-space: nowrap
}

.kopie>li {
	margin: 0 5px;
}
</style>
	
	<!------ Include the above in your HEAD tag ---------->


	   <div id="navbar">
      <nav class="navbar navbar-default navbar-static-top" role="navigation">


         <div class="collapse navbar-collapse" id="navbar-collapse-1">
            <ul class="nav navbar-nav">



               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">매물종류 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li class="kopie"><a href="#">매물종류</a></li>
                     <li><input type="checkbox"><a href="#">월세 + 전세</a></li>
                     <li><input type="checkbox"><a href="#">월세</a></li>
                     <li><input type="checkbox"><a href="#">전세</a></li>
                  </ul></li>




               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">거래종류 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li class="kopie"><a href="#">거래종류</a></li>
                     <li><input type="checkbox"><a href="#">전체</a></li>
                     <li><input type="checkbox"><a href="#">중개</a></li>
                     <li><input type="checkbox"><a href="#">직거래</a></li>
                  </ul></li>

               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">방 종류 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li class="kopie"><a href="#">방 종류</a></li>
                     <li><input type="checkbox"><a href="#">전체</a></li>
                     <li><input type="checkbox"><a href="#">원룸</a></li>
                     <li><input type="checkbox"><a href="#">1.5룸</a></li>
                     <li><input type="checkbox"><a href="#">투룸</a></li>
                     <li><input type="checkbox"><a href="#">쓰리룸</a></li>
                     <li><input type="checkbox"><a href="#">오피스텔</a></li>
                     <li><input type="checkbox"><a href="#">아파트</a></li>
                  </ul></li>

               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">보증금 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li class="kopie"><a href="#">0만원~100만원</a></li>
                     <div class="filter-item filter-small-view price-filter"
                        data-reactid=".0.0.9.1.$=10:0">
                        <div class="popup-title" data-reactid=".0.0.9.1.$=10:0.0">
                           <span data-reactid=".0.0.9.1.$=10:0.0.0"
                              style="font-size: 10px;">보증금</span>
                        </div>
                        <p class="hidden" data-reactid=".0.0.9.1.$=10:0.1">보증금 (ex.
                           10,000만원 = 1억원)</p>
                        <input class="input1" type="number" value="0"
                           data-reactid=".0.0.9.1.$=10:0.2">
                        <div class="swing" data-reactid=".0.0.9.1.$=10:0.3">~</div>
                        <input class="input2" type="number" value="0"
                           data-reactid=".0.0.9.1.$=10:0.4">
                        <div class="price-line" data-reactid=".0.0.9.1.$=10:0.5"></div>
                        <div class="clearfix" data-reactid=".0.0.9.1.$=10:0.6">
                           <div class="price-select-list from"
                              data-reactid=".0.0.9.1.$=10:0.6.0">
                              <ul class="price-list" data-reactid=".0.0.9.1.$=10:0.6.0.0">
                                 <!-- <li class="price-item active"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$0"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$0.0">0 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$1"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$1.0">10 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$2"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$2.0">20 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$3"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$3.0">30 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$4"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$4.0">40 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$5"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$5.0">50 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$6"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$6.0">60 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$7"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$7.0">70 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$8"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$8.0">80 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$9"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$9.0">90 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$10"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$10.0">100 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$11"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$11.0">무제한</span></li> -->
                              </ul>
                           </div>
                           <div class="price-select-list to"
                              data-reactid=".0.0.9.1.$=10:0.6.1">
                              <ul class="price-list" data-reactid=".0.0.9.1.$=10:0.6.1.0">
                                 <!-- <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$0"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$0.0">0 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$1"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$1.0">10 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$2"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$2.0">20 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$3"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$3.0">30 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$4"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$4.0">40 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$5"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$5.0">50 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$6"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$6.0">60 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$7"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$7.0">70 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$8"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$8.0">80 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$9"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$9.0">90 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$10"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$10.0">100 만원</span></li>
                                 <li class="price-item active"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$11"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$11.0">무제한</span></li> -->
                              </ul>
                           </div>
                        </div>
                     </div>
                  </ul></li>

               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">월세 가격 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li class="kopie"><a href="#">0만원~100만원</a></li>
                     <div class="filter-item filter-small-view price-filter"
                        data-reactid=".0.0.9.1.$=10:0">
                        <div class="popup-title" data-reactid=".0.0.9.1.$=10:0.0">
                           <span data-reactid=".0.0.9.1.$=10:0.0.0"
                              style="font-size: 10px;">월세 가격</span>
                        </div>
                        <p class="hidden" data-reactid=".0.0.9.1.$=10:0.1">보증금 (ex.
                           10,000만원 = 1억원)</p>
                        <input class="input1" type="number" value="0"
                           data-reactid=".0.0.9.1.$=10:0.2">
                        <div class="swing" data-reactid=".0.0.9.1.$=10:0.3">~</div>
                        <input class="input2" type="number" value="0"
                           data-reactid=".0.0.9.1.$=10:0.4">
                        <div class="price-line" data-reactid=".0.0.9.1.$=10:0.5"></div>
                        <div class="clearfix" data-reactid=".0.0.9.1.$=10:0.6">
                           <div class="price-select-list from"
                              data-reactid=".0.0.9.1.$=10:0.6.0">
                              <ul class="price-list" data-reactid=".0.0.9.1.$=10:0.6.0.0">
                                 <!--    <li class="price-item active"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$0"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$0.0">0 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$1"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$1.0">10 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$2"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$2.0">20 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$3"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$3.0">30 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$4"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$4.0">40 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$5"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$5.0">50 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$6"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$6.0">60 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$7"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$7.0">70 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$8"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$8.0">80 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$9"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$9.0">90 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$10"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$10.0">100 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$11"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.0.0.$11.0">무제한</span></li> -->
                              </ul>
                           </div>
                           <div class="price-select-list to"
                              data-reactid=".0.0.9.1.$=10:0.6.1">
                              <ul class="price-list" data-reactid=".0.0.9.1.$=10:0.6.1.0">
                                 <!--    <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$0"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$0.0">0 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$1"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$1.0">10 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$2"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$2.0">20 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$3"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$3.0">30 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$4"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$4.0">40 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$5"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$5.0">50 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$6"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$6.0">60 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$7"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$7.0">70 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$8"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$8.0">80 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$9"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$9.0">90 만원</span></li>
                                 <li class="price-item"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$10"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$10.0">100 만원</span></li>
                                 <li class="price-item active"
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$11"><span
                                    data-reactid=".0.0.9.1.$=10:0.6.1.0.$11.0">무제한</span></li> -->
                              </ul>
                           </div>
                        </div>
                     </div>
                  </ul></li>

               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">추가옵션 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li class="kopie"><a href="#">추가옵션</a></li>
                     <li><input type="checkbox"><a href="#">5평 이하</a></li>
                     <li><input type="checkbox"><a href="#">5평 ~ 10평
                           이하</a></li>
                     <li><input type="checkbox"><a href="#">10평 이상</a></li>
                  </ul></li>



            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </nav>
   </div>



</body>
</html>