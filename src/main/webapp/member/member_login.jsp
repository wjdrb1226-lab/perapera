<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<title>Track 27 임정규 login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/member/member_login.css">
<link rel="stylesheet" href="../css/common/common_footer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>


<%@include file="../common_header.jsp" %>



<div class="login_wrap">

    <div class="login_box">

        <div class="logo_1">
            <a href="../index.html">PeraPera</a>
        </div>

        <div class="sub_title">
            일본어 학습을 시작해보세요.
        </div>

        <form>

            <div class="input_box">
                <input type="text" name="t_id" placeholder="아이디" required>
            </div>

            <div class="input_box">
                <input type="password" name="t_password" placeholder="비밀번호" required>
            </div>

            <button type="submit" class="login_btn">
                로그인
            </button>

        </form>
        <div class="join_area">
            <a href="member_join.jsp" class="join_btn">
                회원가입
            </a>
        </div>

        <div class="find_area">
            <a class="find_1" href="">아이디 찾기</a>
            <a class="find_2" href="">비밀번호 찾기</a>
        </div>
    </div>

</div>



<!--  -->

	<%@include file="../common_footer.jsp" %>





</body>
</html>