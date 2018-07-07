<%@page import="java.util.List"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.TagDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<%@include file="../header.jsp" %>



<div class="container">
        


        <div id="content" class="snippet-hidden">

<style>
.tag-cell {padding:15px 8px 10px 8px; border-bottom:1px dotted #eaeaea;}
.stats-row.fl {display:none}
</style>
            

<div id="mainbar-full">
        <div class="subheader">
            <h1 id="h-tags"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">태그</font></font></h1>

            
<div id="tabs">
        <a class="youarehere " href="/tags?tab=popular" data-nav-xhref="" title="가장 인기있는 태그" data-value="popular" data-shortcut=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
            인기태그 </font></font></a>
        <font style="vertical-align: inherit;"><a href="/tags?tab=new" data-nav-xhref="" title="최근에 생성 된 태그" data-value="new" data-shortcut=""><font style="vertical-align: inherit;">
            신규 </font></a></font><a href="/tags?tab=name" data-nav-xhref="" title="알파벳순으로 태그" data-value="name" data-shortcut=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
            가나다순</font></font></a>
        <a href="/tags?tab=new" data-nav-xhref="" title="최근에 생성 된 태그" data-value="new" data-shortcut=""><font style="vertical-align: inherit;"></font></a>
    </div>
        </div>
        <div class="page-description">
            <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                태그는 카테고리와 같이 질문을 분류하는 기능입니다. </font><font style="vertical-align: inherit;">올바른 태그를 사용하면 다른 사람들이 질문을 쉽게 찾고 답변 할 수 있습니다.
            </font></font></p>
            <table>
                <tbody><tr>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">찾고 싶은 태그를 입력하세요.</font></font></td>
                    <td style="padding-left:5px"><input id="tagfilter" name="tagfilter" type="text" maxlength="35"></td>
                </tr>
            </tbody></table>
        </div>

    <div id="tags_list">
        <table id="tags-browser">
    
            <tbody><tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/javascript" class="post-tag" title="'javascript'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Javascript</font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1576580</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">JavaScript (Java와 혼동하지 말 것)는 클라이언트 측 및 서버 측 스크립트 모두에 사용되는 동적 인 다중 패러다임의 약형 언어입니다. </font><font style="vertical-align: inherit;">ECMA 관련 질문에이 태그를 사용하십시오 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/javascript?sort=newest&amp;days=1" title="지난 24 시간 동안 519 분 질문이 javascript을 태그"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">519가 오늘 요구했다</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/javascript?sort=newest&amp;days=7" title="지난 7 일간 5512 질문에 javascript 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주에 5512</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/java" class="post-tag" title="'java'라는 태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Java </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1385778</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Java (JavaScript 또는 JScript와 혼동하지 말 것)는 JVM (Java Virtual Machine)과 함께 사용하도록 설계된 범용 객체 지향 프로그래밍 언어입니다. </font><font style="vertical-align: inherit;">"자바 플랫폼"나는 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/java?sort=newest&amp;days=1" title="지난 24 시간 동안 474 질문이 java을 태그했습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">474 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/java?sort=newest&amp;days=7" title="지난 7 일 동안 4266 질문을하는 자바"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 4266</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/c%23" class="post-tag" title="'c #'태그가 지정된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C # </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1188595</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.NET Framework (또는 .NET Core)에서 실행되는 다양한 응용 프로그램을 빌드 할 수 있도록 고수준의 객체 지향 프로그래밍 언어입니다. </font><font style="vertical-align: inherit;">C #은 간단하고 강력한 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/c%23?sort=newest&amp;days=1" title="지난 24 시간 동안 267 개의 질문에 C #이 (가) 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">267 </font></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/c%23?sort=newest&amp;days=7" title="지난 7 일간 C #으로 태그 된 3099 개의 질문"><font style="vertical-align: inherit;">명이 </font></a><a href="/questions/tagged/c%23?sort=newest&amp;days=1" title="지난 24 시간 동안 267 개의 질문에 C #이 (가) 태그되었습니다."><font style="vertical-align: inherit;">오늘</font></a><font style="vertical-align: inherit;"> ( </font><a href="/questions/tagged/c%23?sort=newest&amp;days=7" title="지난 7 일간 C #으로 태그 된 3099 개의 질문"><font style="vertical-align: inherit;">3099) 이번 주에 </font></a><a href="/questions/tagged/c%23?sort=newest&amp;days=1" title="지난 24 시간 동안 267 개의 질문에 C #이 (가) 태그되었습니다."><font style="vertical-align: inherit;">물었다.</font></a></font><a href="/questions/tagged/c%23?sort=newest&amp;days=7" title="지난 7 일간 C #으로 태그 된 3099 개의 질문"><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/php" class="post-tag" title="'php'라는 태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">PHP </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1177078</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">주로 서버 측 웹 개발을 위해 설계된 널리 사용되는 고급 동적 객체 지향 해석 언어입니다.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/php?sort=newest&amp;days=1" title="지난 24 시간 동안 301 개의 질문에 php 태그가 붙어 있습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(301)는 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/php?sort=newest&amp;days=7" title="3183 질문은 지난 7 일간 PHP 태그"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 3183</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/android" class="post-tag" title="'android'태그가 지정된 질문 표시" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Android </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1082083</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">스마트 폰, 태블릿, 자동차, TV,웨어, 글래스, IoT 등 디지털 기기 프로그래밍 또는 개발에 사용되는 Google의 모바일 운영체제입니다. </font><font style="vertical-align: inherit;">Android와 관련된 주제 인 경우 Android-s 사용</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/android?sort=newest&amp;days=1" title="지난 24 시간 동안 363 개의 질문에 안드로이드 태그가 붙어 있습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">363 </font></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/android?sort=newest&amp;days=7" title="지난 7 일 동안 3464 개의 질문에 안드로이드 태그가 붙어 있습니다."><font style="vertical-align: inherit;">명이 </font></a><a href="/questions/tagged/android?sort=newest&amp;days=1" title="지난 24 시간 동안 363 개의 질문에 안드로이드 태그가 붙어 있습니다."><font style="vertical-align: inherit;">오늘</font></a><font style="vertical-align: inherit;"> ( </font><a href="/questions/tagged/android?sort=newest&amp;days=7" title="지난 7 일 동안 3464 개의 질문에 안드로이드 태그가 붙어 있습니다."><font style="vertical-align: inherit;">3464)에 </font></a><a href="/questions/tagged/android?sort=newest&amp;days=1" title="지난 24 시간 동안 363 개의 질문에 안드로이드 태그가 붙어 있습니다."><font style="vertical-align: inherit;">물었다.</font></a></font><a href="/questions/tagged/android?sort=newest&amp;days=7" title="지난 7 일 동안 3464 개의 질문에 안드로이드 태그가 붙어 있습니다."><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/python" class="post-tag" title="'python'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">python </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">x </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">914613</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">사용성을 강조하도록 설계된 동적이며 강력한 형식의 프로그래밍 언어입니다. </font><font style="vertical-align: inherit;">두 가지 유사하지만 호환되지 않는 Python 버전이 널리 사용됩니다 (2와 3). </font><font style="vertical-align: inherit;">당신은 versi 있다면 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/python?sort=newest&amp;days=1" title="지난 24 시간 동안 591 개의 질문에 파이썬 태그가 붙어 있습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">591 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/python?sort=newest&amp;days=7" title="지난 7 일간 5475 개의 질문에 파이썬 태그가 붙어 있습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 5475</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/jquery" class="post-tag" title="'jquery'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">jquery </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">900913</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">br를 가로 지르는 불일치를 최소화하여 DOM (Document Object Model) 순회, 이벤트 처리, 애니메이션 및 AJAX 상호 작용을 용이하게하는 인기있는 크로스 브라우저 JavaScript 라이브러리입니다.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/jquery?sort=newest&amp;days=1" title="지난 24 시간 동안 144 개의 질문이 jquery 태그로 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(144)는 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/jquery?sort=newest&amp;days=7" title="지난 7 일간 1,635 개의 질문에 jquery 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1635</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/html" class="post-tag" title="'html'로 태그 된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">html </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">733343</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">웹 페이지 구성 및 내용 서식 지정에 사용되는 표준 마크 업 언어 </font><font style="vertical-align: inherit;">HTML은 pres를위한 단서와 함께 의미 론적으로 웹 사이트의 구조를 설명합니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/html?sort=newest&amp;days=1" title="지난 24 시간 동안 html로 표시된 249 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">249 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/html?sort=newest&amp;days=7" title="지난 7 일간 2343 개의 질문 html로 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 2343</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/c%2b%2b" class="post-tag" title="'c ++'태그가 지정된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C ++ </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">559910</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">범용 프로그래밍 언어. </font><font style="vertical-align: inherit;">그것은 원래 C의 확장으로 설계되었으며 유사한 구문을 유지하지만 완전히 다른 언어입니다. </font><font style="vertical-align: inherit;">에 대한 질문이 태그를 사용 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/c%2b%2b?sort=newest&amp;days=1" title="지난 24 시간 동안 203 개의 질문이 C ++로 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">203 명은 오늘</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ( </font><a href="/questions/tagged/c%2b%2b?sort=newest&amp;days=7" title="지난 7 일간 1574 개의 질문에 c ++이 (가) 태그되었습니다."><font style="vertical-align: inherit;">1574) 이번 주에 </font></a><a href="/questions/tagged/c%2b%2b?sort=newest&amp;days=1" title="지난 24 시간 동안 203 개의 질문이 C ++로 태그되었습니다."><font style="vertical-align: inherit;">물었다.</font></a></font><a href="/questions/tagged/c%2b%2b?sort=newest&amp;days=7" title="지난 7 일간 1574 개의 질문에 c ++이 (가) 태그되었습니다."><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/ios" class="post-tag" title="'ios'라고 표시된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">EOS </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">554281</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Apple iPhone, iPod touch 및 iPad에서 실행되는 모바일 운영 체제. </font><font style="vertical-align: inherit;">iOS 플랫폼 프로그래밍 관련 질문은이 태그 [ios]를 사용하십시오. </font><font style="vertical-align: inherit;">관련 태그 [objective-c]를 사용하십시오 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/ios?sort=newest&amp;days=1" title="지난 24 시간 동안 123 개의 질문이 게시되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(123)는 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/ios?sort=newest&amp;days=7" title="지난 7 일간 1365 개의 질문에 ios가 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1365</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/css" class="post-tag" title="" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">CSS </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">524826</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">HTML (하이퍼 텍스트 마크 업 언어), XML (Extensible Markup Language) 문서 및 S의 모양 및 형식을 설명하는 데 사용되는 표현 스타일 시트 언어</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/css?sort=newest&amp;days=1" title="지난 24 시간 동안 156 개의 질문에 css 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(156)는 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/css?sort=newest&amp;days=7" title="지난 7 일간 1536 개의 질문에 css 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1536</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/mysql" class="post-tag" title="'mysql'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">mysql </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">509345</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">구조화 된 쿼리 언어 (SQL)를 사용하는 무료 오픈 소스 관계형 데이터베이스 관리 시스템 (RDBMS). </font><font style="vertical-align: inherit;">SQL Server, SQLite 등의 다른 DB에 대해서는이 태그를 사용하지 마십시오. 이것들은 diff입니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/mysql?sort=newest&amp;days=1" title="지난 24 시간 동안 126 개의 질문이 mysql 태그 됨"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(126)는 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/mysql?sort=newest&amp;days=7" title="지난 7 일간 1356 개의 질문이 mysql 태그 됨"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1356</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/sql" class="post-tag" title="'sql'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SQL </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">430349</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">데이터베이스를 쿼리하는 언어. </font><font style="vertical-align: inherit;">질문에는 코드 예제, 테이블 구조, 샘플 데이터 및 DBMS 구현을위한 태그 (예 : MySQL, PostgreSQ ...)가 포함되어야합니다.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/sql?sort=newest&amp;days=1" title="지난 24 시간 동안 85 개의 질문에 sql이 (가) 태그되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/sql?sort=newest&amp;days=7" title="1299 questions tagged sql in the last 7 days"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/sql?sort=newest&amp;days=1" title="지난 24 시간 동안 85 개의 질문에 sql이 (가) 태그되었습니다."><font style="vertical-align: inherit;">85 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/sql?sort=newest&amp;days=7" title="지난 7 일 동안 1299 개의 질문에 대해 sql이 (가) 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1299 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/asp.net" class="post-tag" title="'asp.net'태그가 지정된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">asp.net </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">330669</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">프로그래머가 동적 웹 사이트, 웹 응용 프로그램 및 웹 서비스를 작성할 수있게 해주는 Microsoft 웹 응용 프로그램 개발 프레임 워크입니다. </font><font style="vertical-align: inherit;">이 태그를 함께 사용하면 유용합니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/asp.net?sort=newest&amp;days=1" title="지난 24 시간 동안 47 개의 질문이 asp.net으로 태그되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/asp.net?sort=newest&amp;days=7" title="496 questions tagged asp.net in the last 7 days"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/asp.net?sort=newest&amp;days=1" title="47 questions tagged asp.net in the last 24 hours"><font style="vertical-align: inherit;">47 </font></a><a href="/questions/tagged/asp.net?sort=newest&amp;days=7" title="496 questions tagged asp.net in the last 7 days"><font style="vertical-align: inherit;">명은 496 명</font></a><font style="vertical-align: inherit;"> ,</font></font><a href="/questions/tagged/asp.net?sort=newest&amp;days=7" title="지난 7 일 동안 496 개의 질문에 asp.net이 (가) 태그되었습니다."><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/ruby-on-rails" class="post-tag" title="'ruby-on-rails'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">루비 온 레일 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">288915</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">루비로 작성된 오픈 소스 풀 스택 웹 애플리케이션 프레임 워크. </font><font style="vertical-align: inherit;">그것은 인기있는 MVC 프레임 워크 모델을 따르고 응용 프로그램에 대한 "컨벤션 오버 컨벤션"접근법으로 유명합니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/ruby-on-rails?sort=newest&amp;days=1" title="지난 24 시간 동안 44 건의 질문이있는 ruby-on-rails"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/ruby-on-rails?sort=newest&amp;days=7" title="468 questions tagged ruby-on-rails in the last 7 days"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/ruby-on-rails?sort=newest&amp;days=1" title="44 questions tagged ruby-on-rails in the last 24 hours"><font style="vertical-align: inherit;">44 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/ruby-on-rails?sort=newest&amp;days=7" title="지난 7 일간 468 개의 질문에 ruby-on-rails이 (가) 표시되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">468 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/objective-c" class="post-tag" title="'objective-c'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">objective-c </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">283004</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Objective-C 기능에 관한 질문이나 언어의 코드에 의존하는 질문에만 사용해야합니다. </font><font style="vertical-align: inherit;">태그 [코코아]와 [코코아 터치]는 애플의 프레임 워크 또는 CL에 대해 묻는 데 사용해야합니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/objective-c?sort=newest&amp;days=1" title="지난 24 시간 동안 objective-c로 태그 된 11 개의 질문"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/objective-c?sort=newest&amp;days=7" title="지난 7 일간 objective-c로 표시된 187 개의 질문"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/objective-c?sort=newest&amp;days=1" title="지난 24 시간 동안 objective-c로 태그 된 11 개의 질문"><font style="vertical-align: inherit;">11 명은 오늘 </font></a><a href="/questions/tagged/objective-c?sort=newest&amp;days=7" title="지난 7 일간 objective-c로 표시된 187 개의 질문"><font style="vertical-align: inherit;">187 명</font></a><font style="vertical-align: inherit;"> ,</font></font><a href="/questions/tagged/objective-c?sort=newest&amp;days=7" title="지난 7 일간 objective-c로 표시된 187 개의 질문"><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/c" class="post-tag" title="'c'라고 표시된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">c </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">273034</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">운영 체제, 라이브러리, 게임 및 기타 고성능 작업에 사용되는 범용 컴퓨터 프로그래밍 언어입니다. </font><font style="vertical-align: inherit;">이 태그는 C 언어에 관한 일반적인 질문과 함께 사용해야합니다.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/c?sort=newest&amp;days=1" title="지난 24 시간 동안 103 개의 질문에 c가 표시되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">103 명이 오늘 요청</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 했으며, </font><a href="/questions/tagged/c?sort=newest&amp;days=7" title="지난 7 일간 712 개 질문에 c가 태그 됨"><font style="vertical-align: inherit;">712 명이 이번 주에 </font></a><a href="/questions/tagged/c?sort=newest&amp;days=1" title="지난 24 시간 동안 103 개의 질문에 c가 표시되었습니다."><font style="vertical-align: inherit;">요청 </font></a></font><a href="/questions/tagged/c?sort=newest&amp;days=7" title="지난 7 일간 712 개 질문에 c가 태그 됨"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">했습니다.</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/.net" class="post-tag" title="'.net'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.net </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">265364</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">주로 Microsoft Windows 운영 체제 용으로 설계된 소프트웨어 프레임 워크입니다. </font><font style="vertical-align: inherit;">그것은 기본 클래스 라이브러리, 공통 언어 런타임 (일반적으로 참조를 구현 포함 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/.net?sort=newest&amp;days=1" title="지난 24 시간 동안 42 개의 질문에 .net이 (가) 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">42 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/.net?sort=newest&amp;days=7" title="지난 7 일 동안 476 개의 질문에 .net이 (가) 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 476</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/arrays" class="post-tag" title="'배열'이라는 태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Array </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">257628</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">각각 하나 또는 여러 개의 색인으로 식별되는 요소 (값 또는 변수)의 콜렉션으로 구성된 순서화 된 데이터 구조. </font><font style="vertical-align: inherit;">배열의 특정 변형에 대해 묻는다면, 이것들을 사용하십시오 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/arrays?sort=newest&amp;days=1" title="지난 24 시간 동안 96 개의 질문에 태그가 달린 배열"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/arrays?sort=newest&amp;days=7" title="지난 7 일간 태그가 지정된 833 개의 질문"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/arrays?sort=newest&amp;days=1" title="지난 24 시간 동안 96 개의 질문에 태그가 달린 배열"><font style="vertical-align: inherit;">96 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/arrays?sort=newest&amp;days=7" title="지난 7 일간 태그가 지정된 833 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">833 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/angularjs" class="post-tag" title="'angularjs'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">angularjs </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">250064</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">오픈 소스 JavaScript 프레임 워크 인 AngularJS (1.x)에 대한 질문에 사용하십시오. </font><font style="vertical-align: inherit;">Angular 2 이상 버전에는이 태그를 사용하지 마십시오. </font><font style="vertical-align: inherit;">대신 [angular] 태그를 사용하십시오.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/angularjs?sort=newest&amp;days=1" title="지난 24 시간 동안 32 개의 질문에 angularjs 태그가 지정되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/angularjs?sort=newest&amp;days=7" title="지난 7 일간 441 개의 질문에 angularjs 태그가 추가되었습니다."><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/angularjs?sort=newest&amp;days=1" title="지난 24 시간 동안 32 개의 질문에 angularjs 태그가 지정되었습니다."><font style="vertical-align: inherit;">32 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/angularjs?sort=newest&amp;days=7" title="지난 7 일간 441 개의 질문에 angularjs 태그가 추가되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">441 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/json" class="post-tag" title="" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">json </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">228464</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">텍스트 데이터 교환 형식 및 언어 독립적. </font><font style="vertical-align: inherit;">이 텍스트 형식이 관련되어있을 때이 태그를 사용하십시오. </font><font style="vertical-align: inherit;">기본 JAVASCRIPT 객체 또는 JA에이 태그를 사용하지 마십시오.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/json?sort=newest&amp;days=1" title="지난 24 시간 동안 90 개의 질문에 json이 (가) 태그되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/json?sort=newest&amp;days=7" title="지난 7 일 동안 878 개의 질문에 json이 (가) 태그되었습니다."><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/json?sort=newest&amp;days=1" title="지난 24 시간 동안 90 개의 질문에 json이 (가) 태그되었습니다."><font style="vertical-align: inherit;">90 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/json?sort=newest&amp;days=7" title="지난 7 일 동안 878 개의 질문에 json이 (가) 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">878 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/r" class="post-tag" title="'r'이라는 태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">r </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">227733</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">통계학 컴퓨팅, 생물 정보학, 시각화 및 일반 컴퓨팅을위한 무료 오픈 소스 프로그래밍 언어 및 소프트웨어 환경입니다. </font><font style="vertical-align: inherit;">최소한의 재생산 가능하고 대표적인 EXA 제공</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/r?sort=newest&amp;days=1" title="지난 24 시간 동안 r 개의 태그가있는 115 개의 질문"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/r?sort=newest&amp;days=7" title="지난 7 일간 r 개의 태그가있는 1447 개의 질문"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/r?sort=newest&amp;days=1" title="지난 24 시간 동안 r 개의 태그가있는 115 개의 질문"><font style="vertical-align: inherit;">115 건</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/r?sort=newest&amp;days=7" title="지난 7 일간 r 개의 태그가있는 1447 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1447 건</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/sql-server" class="post-tag" title="'sql-server'태그가 지정된 질문 표시" rel="tag"><img src="//i.stack.imgur.com/gfrSH.png" height="16" width="18" alt="" class="sponsor-tag-img"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SQL 서버 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">226875</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">관계형 데이터베이스 관리 시스템 (RDBMS). </font><font style="vertical-align: inherit;">Compact, Express, Azure, Fast-track, APS (이전의 PDW) 및 Azure SQL DW를 포함한 모든 SQL Server 에디션에이 태그를 사용하십시오. </font><font style="vertical-align: inherit;">해야 할 것…</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/sql-server?sort=newest&amp;days=1" title="지난 24 시간 동안 49 번 질문에 SQL-server 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">49 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/sql-server?sort=newest&amp;days=7" title="지난 7 일 동안 734 개 질문 sql-server에 태그 됨"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 (734)</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/iphone" class="post-tag" title="'iphone'이라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">아이폰 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">218782</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Apple의 iPhone 및 / 또는 iPod touch를 특별히 다루지 않는 한. </font><font style="vertical-align: inherit;">하드웨어에 의존하지 않는 질문은 [ios] 태그를 사용하십시오. </font><font style="vertical-align: inherit;">고려해야 할 태그는 [xcode]입니다 (하지만 경우에만 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/iphone?sort=newest&amp;days=1" title="지난 24 시간 동안 아이폰으로 태그 된 6 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/iphone?sort=newest&amp;days=7" title="지난 7 일간 94 개의 질문 아이폰 태그"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 (94)</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/node.js" class="post-tag" title="'node.js'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">node.js </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">216559</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Google의 V8 JavaScript 엔진과 libuv 라이브러리를 사용하는 이벤트 기반 비 차단, 비동기 I / O 프레임 워크입니다. </font><font style="vertical-align: inherit;">그것은 능력을 많이 사용하게 응용 프로그램을 개발하는 데 사용됩니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/node.js?sort=newest&amp;days=1" title="지난 24 시간 동안 node.js에 질문 된 157 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">157 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/node.js?sort=newest&amp;days=7" title="지난 7 일간 node.js에 태그 된 1354 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1354</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/ruby" class="post-tag" title="'루비'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">루비 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">192918</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">마츠모토 유키히로 (Matz)가 1995 년에 만든 다중 플랫폼 오픈 소스 동적 객체 지향 언어. [ruby] 태그는 Ruby 언어와 관련된 질문을위한 것입니다.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/ruby?sort=newest&amp;days=1" title="지난 24 시간 동안 33 개의 질문이있는 ruby"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/ruby?sort=newest&amp;days=7" title="지난 7 일간 312 개의 질문에 ruby &#8203;&#8203;태그가 붙어 있습니다"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/ruby?sort=newest&amp;days=1" title="지난 24 시간 동안 33 개의 질문이있는 ruby"><font style="vertical-align: inherit;">33 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/ruby?sort=newest&amp;days=7" title="지난 7 일간 312 개의 질문에 ruby &#8203;&#8203;태그가 붙어 있습니다"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">312 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/swift" class="post-tag" title="'신속한'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신속 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">184711</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Apple Inc.에서 플랫폼 및 Linux 용으로 개발 한 범용 오픈 소스 프로그래밍 언어입니다. </font><font style="vertical-align: inherit;">언어 기능에 관한 질문이나 Swift에서 코드를 요구하는 경우에만 태그를 사용하십시오. </font><font style="vertical-align: inherit;">...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/swift?sort=newest&amp;days=1" title="지난 24 시간 동안 117 개의 질문이 신속하게 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(117)는 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/swift?sort=newest&amp;days=7" title="지난 7 일간 신속하게 태그 된 1179 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 1179</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/regex" class="post-tag" title="'정규식'태그가 지정된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">정규식 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">184547</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">정규식은 문자열 내의 패턴과 일치하는 선언적 언어를 제공합니다. </font><font style="vertical-align: inherit;">일반적으로 문자열 유효성 검사, 구문 분석 및 변환에 사용됩니다. </font><font style="vertical-align: inherit;">정규 표현식이 완전하지 않기 때문에 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/regex?sort=newest&amp;days=1" title="지난 24 시간 동안 46 개의 질문이 정규식 태그되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/regex?sort=newest&amp;days=7" title="지난 7 일 동안 476 개의 질문이 정규식 태그되었습니다."><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/regex?sort=newest&amp;days=1" title="지난 24 시간 동안 46 개의 질문이 정규식 태그되었습니다."><font style="vertical-align: inherit;">46 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/regex?sort=newest&amp;days=7" title="지난 7 일 동안 476 개의 질문이 정규식 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">476 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/ajax" class="post-tag" title="'아약스'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">아약스 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">184204</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">클라이언트와 서버 간의 비동기 데이터 교환을 통해 원활한 대화 형 웹 사이트를 만드는 기술. </font><font style="vertical-align: inherit;">AJAX는 서브와의 통신을 용이하게합니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/ajax?sort=newest&amp;days=1" title="지난 24 시간 동안 아약스를 태그 한 30 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">30 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/ajax?sort=newest&amp;days=7" title="지난 7 일간 384 질문을 아약스에 태그했습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 384</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/xml" class="post-tag" title="'xml'태그가 지정된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">xml </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">170262</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">인간 및 기계 판독 가능한 인코딩 규칙을 정의하는 유연하고 구조화 된 문서 형식입니다.
</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/xml?sort=newest&amp;days=1" title="지난 24 시간 동안 26 개의 질문 xml이 (가) 태그되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/xml?sort=newest&amp;days=7" title="지난 7 일 동안 365 개의 질문 xml이 (가) 태그되었습니다."><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/xml?sort=newest&amp;days=1" title="지난 24 시간 동안 26 개의 질문 xml이 (가) 태그되었습니다."><font style="vertical-align: inherit;">26 명이이 질문</font></a><font style="vertical-align: inherit;"> 에 </font></font><a href="/questions/tagged/xml?sort=newest&amp;days=7" title="지난 7 일 동안 365 개의 질문 xml이 (가) 태그되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">답했다.</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/asp.net-mvc" class="post-tag" title="'asp.net-mvc'태그가 지정된 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">asp.net-mvc </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">168199</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">오픈 소스 웹 애플리케이션 프레임 워크와 웹 애플리케이션에 맞춰 제작 된 MVC (Model-View-Controller) 패턴을 구현하는 툴링</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/asp.net-mvc?sort=newest&amp;days=1" title="지난 24 시간 동안 37 개 질문 asp.net-mvc으로 태그되었습니다."><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/asp.net-mvc?sort=newest&amp;days=7" title="지난 7 일 동안 414 개 질문 asp.net-mvc으로 태그되었습니다."><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/asp.net-mvc?sort=newest&amp;days=1" title="지난 24 시간 동안 37 개 질문 asp.net-mvc으로 태그되었습니다."><font style="vertical-align: inherit;">37 </font></a><a href="/questions/tagged/asp.net-mvc?sort=newest&amp;days=7" title="지난 7 일 동안 414 개 질문 asp.net-mvc으로 태그되었습니다."><font style="vertical-align: inherit;">명은 414 명</font></a><font style="vertical-align: inherit;"> ,</font></font><a href="/questions/tagged/asp.net-mvc?sort=newest&amp;days=7" title="지난 7 일 동안 414 개 질문 asp.net-mvc으로 태그되었습니다."><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/django" class="post-tag" title="'장고'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">장고 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">165071</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">파이썬으로 작성된 오픈 소스 서버 측 웹 애플리케이션 프레임 워크. </font><font style="vertical-align: inherit;">그것은 복잡한 데이터 기반 웹 사이트 및 웹 응용 프로그램을 만드는 데 필요한 노력을 줄일 수 있도록 설계되었습니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/django?sort=newest&amp;days=1" title="지난 24 시간 동안 django로 태그 된 65 개 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">65 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/django?sort=newest&amp;days=7" title="지난 7 일간 642 개의 질문에 장고 태그가 붙어 있습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 642</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tag-cell">
                    <a href="/questions/tagged/linux" class="post-tag" title="'linux'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">리눅스 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">x </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">161287</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">리눅스 질문은 반드시 프로그래밍해야합니다. </font><font style="vertical-align: inherit;">귀하의 질문이 리눅스 API 또는 Linux 관련 행동을 사용하여 프로그래밍하는 것과 관련이있을 때만이 태그를 사용하십시오. Linu에서 코드를 실행했기 때문에가 아니라 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/linux?sort=newest&amp;days=1" title="지난 24 시간 동안 리눅스에 태그 된 20 개의 질문"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/linux?sort=newest&amp;days=7" title="지난 7 일간 리눅스에 태그 된 494 개의 질문"><font style="vertical-align: inherit;">이번 주에 </font></a><a href="/questions/tagged/linux?sort=newest&amp;days=1" title="지난 24 시간 동안 리눅스에 태그 된 20 개의 질문"><font style="vertical-align: inherit;">20 명</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/linux?sort=newest&amp;days=7" title="지난 7 일간 리눅스에 태그 된 494 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">494 명</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/database" class="post-tag" title="'데이터베이스'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">데이터베이스 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">141059</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">조직 된 데이터 수집 </font><font style="vertical-align: inherit;">스키마, 테이블, 쿼리, 보고서, 뷰 및 기타 개체의 모음입니다. </font><font style="vertical-align: inherit;">데이터는 전형적으로 현실에서의 모델 측면으로 구성되어 있습니다.</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/database?sort=newest&amp;days=1" title="지난 24 시간 동안 데이터베이스에 태그 된 31 개의 질문"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/database?sort=newest&amp;days=7" title="지난 7 일간 데이터베이스에 태그 된 425 개의 질문"><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/database?sort=newest&amp;days=1" title="지난 24 시간 동안 데이터베이스에 태그 된 31 개의 질문"><font style="vertical-align: inherit;">31 명이 315 개</font></a><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/database?sort=newest&amp;days=7" title="지난 7 일간 데이터베이스에 태그 된 425 개의 질문"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 425 개</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/excel" class="post-tag" title="'excel'태그가 붙은 질문 표시" rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">엑셀 </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">141046</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Excel 개체 또는 파일 또는 복잡한 수식 개발에 대한 프로그래밍 관련 질문에만 해당됩니다. </font><font style="vertical-align: inherit;">VBA, VSTO, C #, VB.NET, PowerShell, OLE 자동화 및 기타 프로그램과 Excel 태그를 결합 할 수 있습니다 ...</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/excel?sort=newest&amp;days=1" title="지난 24 시간 동안 42 개의 질문이 우수하다고 답함"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"><a href="/questions/tagged/excel?sort=newest&amp;days=7" title="지난 7 일간 610 개의 질문에 Excel이 달했다."><font style="vertical-align: inherit;">이번 주 </font></a><a href="/questions/tagged/excel?sort=newest&amp;days=1" title="지난 24 시간 동안 42 개의 질문이 우수하다고 답함"><font style="vertical-align: inherit;">42 명이 오늘</font></a><font style="vertical-align: inherit;"> ( </font><a href="/questions/tagged/excel?sort=newest&amp;days=7" title="지난 7 일간 610 개의 질문에 Excel이 달했다."><font style="vertical-align: inherit;">610) </font></a><a href="/questions/tagged/excel?sort=newest&amp;days=1" title="지난 24 시간 동안 42 개의 질문이 우수하다고 답함"><font style="vertical-align: inherit;">물었다.</font></a></font><a href="/questions/tagged/excel?sort=newest&amp;days=7" title="지난 7 일간 610 개의 질문에 Excel이 달했다."><font style="vertical-align: inherit;"></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
                <td class="tag-cell">
                    <a href="/questions/tagged/wpf" class="post-tag" title="'wpf'라는 질문을 보여줍니다." rel="tag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">wpf </font></font></a><span class="item-multiplier"><span class="item-multiplier-x"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">× </font></font></span>&nbsp;<span class="item-multiplier-count"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">138941</font></font></span></span>
                        <div class="excerpt"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Windows 기반 응용 프로그램에서 사용자 인터페이스를 렌더링하기위한 하위 시스템</font></font></div>
                    <div>
                        <div class="stats-row fl"><a href="/questions/tagged/wpf?sort=newest&amp;days=1" title="지난 24 시간 동안 29 개의 질문에 wpf 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">29 오늘 질문</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , </font></font><a href="/questions/tagged/wpf?sort=newest&amp;days=7" title="지난 7 일간 252 개의 질문에 wpf 태그가 지정되었습니다."><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이번 주 (252)</font></font></a></div>
                        <div class="cbt"></div>
                    </div>
                </td>
            </tr>

</tbody></table>
    


    </div>

    <div id="tags-legend">

                <span>
            <a class="tag-synonym-link" href="/tags/synonyms" title="모든 태그 동의어 표시"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">태그 동의어</font></font></a>
        </span>
    </div>

    <script>
        StackExchange.ready(function() {
            $("#tagfilter").focus().typeWatch({ highlight:true, wait:500, captureLength: -1, callback: finished });
        });

        var request = null;
        function finished(txt) {
            if (request) { request.abort(); }
            request = $.ajax({
                type: "POST",
                url: "/filter/tags-for-index",
                data: { filter: txt, tab: 'Popular' },
                dataType: "html",
                success: function (result) {
                    var domelement = $(result);
                    $("#tags_list").html(domelement);

                    if (txt == "") {
                        $(".pager").show();
                    } else
                    {
                        $(".pager").hide();
                    }

                }
            });
        }
    </script>
</div>

        </div>
    </div>
 <%@include file="../footer.jsp" %>
 