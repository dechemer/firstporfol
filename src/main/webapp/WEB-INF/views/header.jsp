<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
	<!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <!--NOTO SANS KR 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap" rel="stylesheet">
    <!--Nanum Pen Script 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <!-- slick css -->
    <link rel="stylesheet" type="text/css" href="../resources/css/slick.css"/>
    <!-- css -->
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/header.css">
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- slick js -->
    <script type="text/javascript" src="../resources/js/slick.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
	<header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="#"></a></h1>

                <p class="mo_btnMenu">
                    <a href="#">
                       <span>메뉴열기</span>
                       <span></span>
                       <span></span>
                    </a>
                </p>
                <div class="mo_menuWrap">
                    
                    <div class="mo_member">
                        <ul>
	                        <c:if test="${member==null }">
	                        	<li><a href="/member/signup">회원가입</a></li>
	                        	<li class="login"><a href="/member/login">로그인</a></li>
	                        </c:if>
	                        
	                        <c:if test="${member!=null }">
	                        	<li class="login"><a href="/member/logout">로그아웃</a></li>
	                        </c:if>
	                    </ul>
                    </div>

                    <div class="mo_menu">
                        <ul>
                            <li>
                                <a href="/list/screening" class="mo_movie">영화</a>

                                <div class="mo_movieBox">
                                    <ul class="mo_movieMenu">
                                        <li><a href="/list/screening">현재상영작</a></li><!--현재상영작 애매율 순위-->
                                        <li><a href="#">박스오피스</a></li><!--박스오피스 순위 https://www.kobis.or.kr/kobis/business/stat/boxs/findDailyBoxOfficeList.do-->
                                        <li><a href="#">상영예정작</a></li><!--상영예정작 개봉일순-->
                                    </ul>
                                </div>
                            </li>

                            <li><a href="#">예매</a></li>
                            <li><a href="#">영화관</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">스토어</a></li>
                        </ul>
                    </div>
                </div>
                <div class="mo_backbk"></div>

                <div class="pc_menu">
                    <ul>
                        <li>
                            <a href="/list/screening" class="pc_movie">영화</a>
                            <div class="pc_movieBox">
                                <ul class="pc_movieMenu">
                                    <li><a href="/list/screening">현재상영작</a></li><!--현재상영작 애매율 순위-->
                                    <li><a href="#">박스오피스</a></li><!--박스오피스 순위 https://www.kobis.or.kr/kobis/business/stat/boxs/findDailyBoxOfficeList.do-->
                                    <li><a href="#">상영예정작</a></li><!--상영예정작 개봉일순-->
                                </ul>
                            </div>
                            
                        </li>

                        <li><a href="#">예매</a></li>
                        <li><a href="#">영화관</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="#">스토어</a></li>
                    </ul>
                </div>

                <div class="pc_member">
                    <ul>
                        
                        <c:if test="${member==null }">
                        	<li class="login"><a href="/member/login">로그인</a></li>
                        	<li><a href="/member/signup">회원가입</a></li>
                        </c:if>
                        
                        <c:if test="${member!=null }">
                        	<li class="login"><a href="/member/logout">로그아웃</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </header>
</body>
</html>