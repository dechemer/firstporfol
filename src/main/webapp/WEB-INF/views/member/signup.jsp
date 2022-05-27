<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../resources/css/reset.css">
<link type="text/css" rel="stylesheet" href="../resources/css/signup.css">
<script type="text/javascript" src="../resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/member.js"></script>
</head>
<body>
	<h1><a href="/">motion picture</a></h1>
    <div class="content">
        <form action="/member/signup" method="post">
            <div>
                <h3>아이디</h3>
                <div><input type="text" class="info" name="id" id="id"></div>
                <p class="idMg"></p>
            </div>
            <div>
                <h3>비밀번호</h3>
                <div><input type="password" class="info" name="pw" id="pw1"></div>
                <p class="pw1Mg"></p>   
            </div>
            <div>
                <h3>비밀번호 확인</h3>
                <div><input type="password" class="info" id="pw2"></div>   
                <p class="pw2Mg"></p>
            </div>
            <div>
                <h3>이름</h3>
                <div><input type="text" class="info" name="name" id="name"></div>   
                <p class="nameMg"></p>
            </div>

            <div>
                <h3>생년월일</h3>
                <div>
                    <input type="date" class="info" name="birth" id="birth">
                </div>
                <p class="birthMg"></p>
            </div>

            <div>
                <h3>이메일</h3>
                <div><input type="email" class="info" name="email" id="email"></div>
                <p class="emailMg"></p>
            </div>

            <div class="box">
                <h3>휴대전화</h3>
                <div><input type="text" class="info" name="phone" id="phone" placeholder="숫자만 적어주세요"></div>
                <p class="phoneMg"></p>
            </div>
			
			<input type="submit" class="btn" value="회원가입" >
			
            
        </form>
    </div>
    
</body>
</html>