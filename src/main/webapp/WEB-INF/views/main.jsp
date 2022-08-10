<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <!--NOTO SANS KR 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap" rel="stylesheet">
    <!--Nanum Pen Script 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <!-- slick css -->
    <link rel="stylesheet" type="text/css" href="./resources/css/slick.css"/>
    <!-- css -->
    <link rel="stylesheet" href="./resources/css/reset.css">
    <link rel="stylesheet" href="./resources/css/style.css">
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- slick js -->
    <script type="text/javascript" src="./resources/js/slick.min.js"></script>
    <!-- js -->
    <!-- <script src="./resources/js/index.js"></script> -->
    <script src="./resources/js/script.js"></script>
    <title>MOTION PICTURE</title>
</head>
<body>
    <div id="wrap">
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

        <div id="container">
            <div class="row1">
                <div class="row1In"> 

                    <div class="mo_mainSilde">
                        <ul>
                            <li class="on">
                                <a href="#"><img src="./resources/image/present/Doctor_1920X774.jpg" alt="공기살인"></a>
                            </li>

                            <li class="off">
                                <a href="#"><img src="./resources/image/present/Doctor_1920X774.jpg" alt="닥터스트렌지"></a>
                            </li>

                            <li class="off">
                                <a href="#"><img src="./resources/image/present/cranston_academy_monster_zone.jpg" alt="덤블도어"></a>
                            </li>

                            <li class="off">
                                <a href="#"><img src="./resources/image/present/Doctor_1920X774.jpg" alt="로스트시티"></a>
                            </li>

                            <li class="off">
                                <a href="#"><img src="./resources/image/present/Doctor_1920X774.jpg" alt="서울괴담"></a>
                            </li>

                            <li class="off">
                                <a href="#"><img src="./resources/image/present/Doctor_1920X774.jpg" alt="봄날"></a>
                            </li>
                        </ul>
<!-- 
                        <div class="mo_sildePrev"><a href="#none"></a></div>
                        <div class="mo_sildeNext"><a href="#none"></a></div> -->
                    </div>
                    
                    

                    <div class="pc_mainSilde">
                        <ul>
                            <li class="on">
                                <video class="mainVideo" style="width:1280px; height:720px" muted autoplay>
                                    <source src="./resources/image/video/Air_1280720.mp4" type="video/mp4">
                                </video>
                                <div class="moviePoster"><img src="./resources/image/present/killer_air_126X180.jpg" alt="공기살인"></div>
                                <div class="movieText">
                                    “가족을 위한 마음이<br>
                                    가족을 죽게 만들었다.”
                                </div>
                            </li>

                            <li class="off">
                                <video style="width:1280px; height:720px" muted >
                                    <source src="./resources/image/video/Doctor_1280720.mp4" type="video/mp4">
                                </video>
                                <div class="moviePoster"><img src="./resources/image/present/Doctor_Strange_in_the_Multiverse_of_Madness_126X180.jpg" alt=""></div>
                                <div class="movieText">
                                    상상의 경계를 무너뜨릴 광기
                                </div>
                            </li>

                            <li class="off">
                                <video style="width:1280px; height:720px" muted >
                                    <source src="./resources/image/video/Dumbledore_1280720.mp4" type="video/mp4">
                                </video>
                                <div class="moviePoster"><img src="./resources/image/present/Fantastic_Beasts_The_Secrets_of_Dumbledore_126X180.jpg" alt=""></div>
                                <div class="movieText">
                                    다시 마법이 시작된다
                                </div>
                            </li>

                            <li class="off">
                                <video style="width:1280px; height:720px" muted >
                                    <source src="./resources/image/video/Lost_1280720.mp4" type="video/mp4">
                                </video>
                                <div class="moviePoster"><img src="./resources/image/present/lost_city_126X180.jpg" alt=""></div>
                                <div class="movieText">
                                    남다른 그들의 대환장 케미 폭발 어드벤처
                                </div>
                            </li>

                            <li class="off">
                                <video style="width:1280px; height:720px" muted >
                                    <source src="./resources/image/video/Urban_Myths.mp4" type="video/mp4">
                                </video>
                                <div class="moviePoster"><img src="./resources/image/present/Urban_Myths_126X180.jpg" alt=""></div>
                                <div class="movieText">
                                    도시를 덮친 괴이하고 기인한 이야기
                                </div>
                            </li>

                            <li class="off">
                                <video style="width:1280px; height:720px" muted >
                                    <source src="./resources/image/video/spring_weather.mp4" type="video/mp4">
                                </video>
                                <div class="moviePoster"><img src="./resources/image/present/spring_weather_126X180.jpg" alt=""></div>
                                <div class="movieText">
                                    다 아는 것 같지만<br>
                                    아직도<br>
                                    모르는 당신에게
                                </div>
                            </li>
                        </ul>
                    </div><!--mainSlide end-->
                    
                    <div class="pc_mainBtn">
                        <button class="mainPrev"><img src="./resources/image/icon/prev.png" alt="이전"></button>
                        <button class="mainNext"><img src="./resources/image/icon/next.png" alt="다음"></button>
                        <button class="videoPlay"><img src="./resources/image/icon/pause.png" alt="일시정지"></button>
                        <button class="videoSound"><img src="./resources/image/icon/mute.png" alt="음소거"></button>
                    </div>

                </div>
            </div><!--row1 end-->

            <div class="row2">
                <div class="row2In">
                    
                    <div class="movieChart">
                        
                        <div class="category">
                            <ul>
                                <li><a href="#none" class="presentBtn on">현재상영작</a></li>
                                <li><a href="#none" class="boxofficeBtn">박스오피스</a></li>
                                <li><a href="#none" class="scheduledBtn">상영예정작</a></li>                                
                            </ul>
                        </div>
                        
                        <div class="content">
                            <div class="present">
                                <ul class="list">
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/killer_air_600x855.jpg" alt="공기살인"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Doctor_Strange_in_the_Multiverse_of_Madness_600x855.jpg" alt="닥터스트렌지"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                        
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Fantastic_Beasts_The_Secrets_of_Dumbledore_600x855.jpg" alt="덤블도어"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/lost_city_600x855.jpg" alt="로스트시티"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Urban_Myths_600x855.jpg" alt="서울괴담"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/spring_weather_600x855.jpg" alt="봄날"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Doctor_Strange_in_the_Multiverse_of_Madness_600x855.jpg" alt="닥터스트렌지"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                        
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Urban_Myths_600x855.jpg" alt="서울괴담"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Fantastic_Beasts_The_Secrets_of_Dumbledore_600x855.jpg" alt="덤블도어"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/lost_city_600x855.jpg" alt="로스트시티"></div>
                                        <div class="ticket">예매율</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
        
                                </ul>
                            </div><!--present-->

                            <div class="boxoffice">
                                <ul class="list">
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/i_want_to_know_your_parents.jpg" alt="니 부모 얼굴이 보고 싶다"></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Fantastic_Beasts_The_Secrets_of_Dumbledore.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Urban_Myths.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/killer_air.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Anchor.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/seventeen_power_of_love_the_movie.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/spring_weather.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/lost_city.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/Doctor_Strange_in_the_Multiverse_of_Madness.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/present/cranston_academy_monster_zone.jpg" alt=""></div>
                                        <div class="audience">관객수</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </li>
                                </ul>
                            </div><!--boxoffice-->
                            
                            <div class="scheduled">
                                <ul class="list">
                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Action_Dongja.jpg" alt="액션동자"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Butt_Detective_the_Movie the_Secret_of Souffle_Island.jpg" alt="극장판 엉덩이 탐정"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Kasane.jpg" alt="카시나"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Operation_Mincemeat.jpg" alt="민스민트작전"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/UMMA.jpg" alt="엄마"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Operation_Mincemeat.jpg" alt="민스민트작전"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Kasane.jpg" alt="카시나"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Butt_Detective_the_Movie the_Secret_of Souffle_Island.jpg" alt="극장판 엉덩이 탐정"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/UMMA.jpg" alt="엄마"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>

                                    <li class="chart">
                                        <div class="chartImg"><img src="./resources/image/scheduled/Action_Dongja.jpg" alt="액션동자"></div>
                                        <div class="playdate">개봉일</div>
                                        <div class="info">
                                            <a href="#" class="pc">상세정보</a>
                                        </div>
                                    </li>
                                </ul>
                            </div><!--scheduled-->
                        </div>
                        

                    </div>
                    
                    <button class="chartPrev pc"><img src="./resources/image/icon/prev_bk.png" alt="무비차트이전"></button>
                    <button class="chartNext pc"><img src="./resources/image/icon/next_bk.png" alt="무비차트다음"></button>

                </div>
            </div><!--row2 end-->


            <div class="row3">
                <div class="rowIn">
    
                    <div class="row3In">
                        <h2 class="oneLine">한줄평</h2>
                        <!--최신 글 5개만 표시-->
                        <div class="review">
                            <div class="oneImg"><img src="./resources/image/present/killer_air.jpg" alt="공기살인"></div>
                            <table>
                                <tr>
                                    <td class="star">
                                        <span>☆☆☆☆☆</span>
                                        <span>영화좋아</span>
                                        <span>샘형 진정해...형 영화 잘 만들었으니깐 쉬어,근데 닥스3 대본은?</span>
                                    </td>
                                    <td class="re"></td>
                                </tr>
                                <tr>
                                    <td class="star">
                                        <span>☆☆☆☆☆</span>
                                        <span>영화좋아</span>
                                        <span>샘형 진정해...형 영화 잘 만들었으니깐 쉬어,근데 닥스3 대본은?</span>
                                    </td>
                                    <td class="re"></td>
                                </tr>
                                <tr>
                                    <td class="star">
                                        <span>☆☆☆☆☆</span>
                                        <span>영화좋아</span>
                                        <span>샘형 진정해...형 영화 잘 만들었으니깐 쉬어,근데 닥스3 대본은?</span>
                                    </td>
                                    <td class="re"></td>
                                </tr>
                                <tr>
                                    <td class="star">
                                        <span>☆☆☆☆☆</span>
                                        <span>영화좋아</span>
                                        <span>샘형 진정해...형 영화 잘 만들었으니깐 쉬어,근데 닥스3 대본은?</span>
                                    </td>
                                    <td class="re"></td>
                                </tr>
                                <tr>
                                    <td class="star">
                                        <span>☆☆☆☆☆</span>
                                        <span>영화좋아</span>
                                        <span>샘형 진정해...형 영화 잘 만들었으니깐 쉬어,근데 닥스3 대본은?</span>
                                    </td>
                                    <td class="re"></td>
                                </tr>
                                
                            </table>    
                        </div>
                    </div>
                </div>
            </div><!--row3 end-->
            

            <div class="row4">
                <div class="row4In">
                    <div class="evList">
                        <h2>이벤트</h2>
                        <div class="evListIn">
                            <div class="evBox">
                                <a href="#"><img src="./resources/image/event/16492923704320.jpg" alt=""></a>    
                            </div>
                            
                            <div class="evBox">
                                <a href="#"><img src="./resources/image/event/16503596068380.jpg" alt=""></a>    
                            </div>

                            <div class="evBox">
                                <a href="#"><img src="./resources/image/event/16521429577520.jpg" alt=""></a>    
                            </div>
                            
                            <div class="evBox">
                                <a href="#"><img src="./resources/image/event/16526632598130.jpg" alt=""></a>    
                            </div>

                            <div class="evBox">
                                <a href="#"><img src="./resources/image/event/16492923704320.jpg" alt=""></a>    
                            </div>
                            
                            <div class="evBox">
                                <a href="#"><img src="./resources/image/event/16503596068380.jpg" alt=""></a>    
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--row4 end-->

            <div class="row5">
                <div class="row5In">
                    <h2>스폐셜관</h2>
                    <div class="spRoom">

                        <div class="spL">
                            <div class="boutique">
                                <img src="./resources/image/img-theater-boutique-suite-01.png" alt="">
                                <div class="spBox">
                                    <p class="spTitle">THE BOUTIQUE</p>
                                    <p class="spText">
                                        부티크 호텔의 개성을 더한<br>
                                        메가박스만의 프리미엄 시네마
                                    </p>
                                </div>
                                
                            </div>
    
                            <div class="boutiqueP">
                                <img src="./resources/image/img-theater-boutique-private-01.png" alt="">
                                <div class="spBox">
                                    <p class="spTitle">THE BOUTIQUE PRIVATE</p>
                                    <p class="spText">
                                        당신의 특별한 순간을 빛나게 해줄<br>
                                        프리미엄 어메니티와 룸서비스
                                    </p>
                                </div>
                                
                            </div>
                        </div>
                        
                        <div class="spR">
                            <div class="dolby">
                                <img src="./resources/image/img-theater-db-view05.png" alt="">
                                <div class="spBox">
                                    <p class="spTitle">DOLBY CINEMA</p>
                                    <p class="spText">
                                        국내 최초로 선보이는<br>
                                        세계 최고 기술력의 몰입 시네마
                                    </p>
                                </div>
                                
                            </div>
    
                            <div class="comfort">
                                <img src="./resources/image/img-theater-comfort-view01.png" alt="">
                                <div class="spBox">
                                    <p class="spTitle">COMFORT</p>
                                    <p class="spText">
                                        더욱 편안한 영화 관람을 위한<br>
                                        다양한 여유공간
                                    </p>
                                </div>
                                
                            </div>
                            
                            <div class="mx">
                                <img src="./resources/image/img-theater-mx-view01.png" alt="">
                                <div class="spBox">
                                    <p class="spTitle">MX</p>
                                    <p class="spText">
                                        진정한 영화 사운드를 통한 최고의 영화<br>
                                        차세대 표준 상영관
                                    </p>
                                </div>
                                
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
            </div><!-- row5-->


            <div class="row6">
                <div class="rowIn">
                    <div class="noticeBox">
                        <div class="noticeTitle">공지사항</div>
                        <ul class="notice">
                            <li><a href="">motion picture 안내사항</a></li>
                            <li><a href="">운영정책 변경사항</a></li>
                            <li><a href="">유의사항</a></li>
                            <li><a href="">다같이 웃어보아요</a></li>
                        </ul>
                        <div class="noticePlus"><a href="#">더보기</a></div>
                    </div>
                </div>
            </div><!--row6 end-->

            <div class="row7">
                <div class="row7In">
                    <div class="menuIcon">
                        <ul>
                            <li>
                                <a href="#">
                                    <img src="./resources/image/icon/discount.png" alt="">
                                    <div class="iconText">할인</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="./resources/image/icon/TICKET.png" alt="">
                                    <div class="iconText">예매</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="./resources/image/icon/member.png" alt="">
                                    <div class="iconText">멥버십</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <img src="./resources/image/icon/event.png" alt="">
                                    <div class="iconText">이벤트</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <img src="./resources/image/icon/store.png" alt="">
                                    <div class="iconText">스토어</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div><!--row7-->

            


        </div><!--container end-->

        <footer id="footer">
            <div id="f_in">
                <div class="co_menu">
                    <ul class="co_menu_in">
                        <li class="d1">
                            <a href="" class="m1">회사소개</a>
                            <ul>
                                <li><a href="">기업이념</a></li>
                                <li><a href="">그린용평</a></li>
                                <li><a href="">연혁</a></li>
                                <li><a href="">수상내역</a></li>
                                <li><a href="">CI</a></li>
                                <li><a href="">캐릭터</a></li>
                                <li><a href="">오시는길</a></li>
                            </ul>
                        </li> <!--회사소개 끝-->

                        <li class="d1">
                            <a href="" class="m1">투자정보</a>
                            <ul>
                                <li><a href="">재무정보</a></li>
                                <li><a href="">공시정보</a></li>
                                <li><a href="">IR자료실</a></li>
                                <li><a href="">내부정보관리규정</a></li>
                            </ul>
                        </li> <!--투자정보 끝-->

                        <li class="d1">
                            <a href="" class="m1">홍보센터</a>
                            <ul>
                                <li><a href="">언론보도</a></li>
                                <li><a href="">온라인브로셔</a></li>
                            </ul>
                        </li> <!--홍보센터 끝-->

                        <li class="d1">
                            <a href="" class="m1">채용안내</a>
                            <ul>
                                <li><a href="">인사제도</a></li>
                                <li><a href="">채용안내</a></li>
                                <li><a href="">공지사항</a></li>
                                <li><a href="">채용공고</a></li>
                                <li><a href="">채용결과확인</a></li>
                            </ul>
                        </li> <!--채용안내 끝-->

                        <li class="d1">
                            <a href="" class="m1">상영관</a>
                        </li>
                        <li class="d1">
                            <a href="" class="m1">전자상품권</a>
                        </li>
                    </ul>
                </div> <!--.co_menu-->
    
                
                <div class="f_family pc">
                    <a href="" class="btn">FAMILYSITE</a>
                    <div class="f_family_list">
                        <ul>
                            <li><a href="">CGV</a></li>
                            <li><a href="">롯데시네마</a></li>
                            <li><a href="">메가박스</a></li>
                        </ul>
                    </div>
                </div>

                <div class="f_utill pc">
                    <div class="f_lang">
                        <ul>
                            <li class="on"><a href="">한국어</a></li>
                            <li><a href="">ENG</a></li>
                        </ul>
                    </div>
                    <div class="f_sns">
                        <ul>
                            <li class="f_fb"><a href="">페이스북 바로가기</a></li>
                            <li class="f_tw"><a href="">트위터 바로가기</a></li>
                            <li class="f_bl"><a href="">블로그 바로가기</a></li>
                            <li class="f_yt"><a href="">유튜브 바로가기</a></li>
                        </ul>
                    </div>
                </div> <!--.f_utill-->

                <div class="f_menu">
                    <ul>
                        <li><a href="">개인정보취급방침</a></li>
                        <li><a href="">영상정보처리기기 운영관리 방침</a></li>
                        <li><a href="">이메일무단수집거부</a></li>
                    </ul>
                </div>
                <div class="f_info">
                    (주)motion picture 울산광역시 동구 대관령면 올림픽로 715 TEL : (예약문의) 1588-1588 (현장문의) 052-123-4567 <br>
                    대표이사 : 대이사 사업자등록번호: 123-45-67891 통신판매업 신고번호 : 제 1234-5호 개인정보관리책임 : 마케팅1팀 
                </div>
                <div class="copyright">
                    Copyright 2022 YONGPYONG RESORT All rights reserved.
                </div>
            </div>
            <div class="goTop"><a href=""><span>탑으로</span></a></div>
        </footer> <!--#footer-->
    </div>
    
</body>
</html>