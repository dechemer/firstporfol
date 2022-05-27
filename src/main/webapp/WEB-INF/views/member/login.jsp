<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/reset.css">
<link rel="stylesheet" href="../resources/css/signup.css">
<script type="text/javascript" src="../resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/member.js"></script>
</head>
<body>
	<h1><a href="/">motion picture</a></h1>
    <div class="content">
        <form action="/member/login" method="post">
            <div>
                <h3>아이디</h3>
                <div><input type="text" name="id" class="info"></div>   
            </div>
            <div>
                <h3>비밀번호</h3>
                <div><input type="password" name="pw" class="info"></div>   
            </div>
            <div><input type="submit" value="로그인" class="btn"></div>
        </form>
    </div>
</body>
</html>