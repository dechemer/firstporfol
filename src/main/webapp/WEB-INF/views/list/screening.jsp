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
    <link rel="stylesheet" href="../resources/css/screening.css">
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- slick js -->
    <script type="text/javascript" src="../resources/js/slick.min.js"></script>
    <!-- js -->
    <!-- <script src="./resources/js/index.js"></script> -->
    
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div id="container">
            <div class="row1">
                <div class="rowIn">
                    <div class="title">
                        <ul>
                            <li class="on"><a href="#">현재상영작</a></li>
                            <li><a href="#">박스오피스</a></li>
                            <li><a href="#">상영예정작</a></li>
                        </ul>
                    </div>
                    <div class="present">
                        <ul>
                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Anchor.jpg" alt=""></div>
                                    <div class="movieTitle">앵커</div>
                                </a>
                                <div class="">예매율</div>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Doctor_Strange_in_the_Multiverse_of_Madness.jpg" alt=""></div>
                                    <div class="movieTitle">닥터 스트레인지-대혼돈의 멀티버스</div>
                                </a>
                                
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/cranston_academy_monster_zone.jpg" alt=""></div>
                                    <div class="movieTitle">몬스터 아카데미</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Fantastic_Beasts_The_Secrets_of_Dumbledore.jpg" alt=""></div>
                                    <div class="movieTitle">신비한 동물들과 덤블도어의 비밀</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/i_want_to_know_your_parents.jpg" alt=""></div>
                                    <div class="movieTitle">니 엄마 얼굴을 보고 싶다</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/killer_air.jpg" alt=""></div>
                                    <div class="movieTitle">공기살인</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/lost_city.jpg" alt=""></div>
                                    <div class="movieTitle">로스트시티</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/seventeen_power_of_love_the_movie.jpg" alt=""></div>
                                    <div class="movieTitle">세븐틴</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/spring_weather.jpg" alt=""></div>
                                    <div class="movieTitle">봄날</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Urban_Myths.jpg" alt=""></div>
                                    <div class="movieTitle">서울괴담</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Anchor.jpg" alt=""></div>
                                    <div class="movieTitle">앵커</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Doctor_Strange_in_the_Multiverse_of_Madness.jpg" alt=""></div>
                                    <div class="movieTitle">닥터 스트레인지-대혼돈의 멀티버스</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/cranston_academy_monster_zone.jpg" alt=""></div>
                                    <div class="movieTitle">몬스터 아카데미</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Fantastic_Beasts_The_Secrets_of_Dumbledore.jpg" alt=""></div>
                                    <div class="movieTitle">신비한 동물들과 덤블도어의 비밀</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/i_want_to_know_your_parents.jpg" alt=""></div>
                                    <div class="movieTitle">니 엄마 얼굴을 보고 싶다</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/killer_air.jpg" alt=""></div>
                                    <div class="movieTitle">공기살인</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/lost_city.jpg" alt=""></div>
                                    <div class="movieTitle">로스트시티</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/seventeen_power_of_love_the_movie.jpg" alt=""></div>
                                    <div class="movieTitle">세븐틴</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/spring_weather.jpg" alt=""></div>
                                    <div class="movieTitle">봄날</div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div><img src="../resources/image/present/Urban_Myths.jpg" alt=""></div>
                                    <div class="movieTitle">서울괴담</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        
        <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>