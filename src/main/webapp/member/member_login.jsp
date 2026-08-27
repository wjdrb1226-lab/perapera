<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member_login.css">




<script type="text/javascript">
//	function goPassword(){
//		mem.t_password.focus();
//	}


	function memberLogin(){
		if(checkEmpty(mem.t_id,"ID 입력!")) return;
		if(checkEmpty(mem.t_password,"비밀번호 입력!")) return;
		mem.t_gubun.value ="memberLogin";
		mem.method="post";
		mem.action="Member";
		mem.submit();
	}
</script>


<div class="login_wrap">

    <div class="login_box">

        <div class="logo_1">
            <a href="Index">PeraPera</a>
        </div>

        <div class="sub_title">
            일본어 학습을 시작해보세요.
        </div>

        <form name="mem">
		<input type="hidden" name="t_gubun">
            <div class="input_box">
                <input type="text" name="t_id" placeholder="아이디" required>
            </div>

            <div class="input_box">
                <input type="password" name="t_password" placeholder="비밀번호" required>
            </div>

            <button type="button" onclick="memberLogin()" class="login_btn">
                로그인
            </button>

        </form>
        <div class="join_area">
            <a href="javascript:goPage('join')" class="join_btn">
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