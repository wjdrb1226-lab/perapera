<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>Track27 임정규 join</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member_join.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
<%@include file="/common_header.jsp" %>
</head>
<body>



<script>

	function goSave(){
		if(checkEmpty(mem.t_name,"성명 입력!")) return;
		if(checkEmpty(mem.t_id,"ID 입력!")) return;
		
		if(mem.t_id_check.value==""){
			alert("ID 중복 검사 하시오.");
			return;
		}
		if(mem.t_id_check.value=="사용불가"){
			alert("사용불가한 ID입니다.");
			mem.t_id.focus();
			return;
		}
		
		if(checkEmpty(mem.t_password,"비밀번호 입력!")) return;
		if(checkEmpty(mem.t_password_confirm,"비밀번호 확인 입력!")) return;
		if(mem.t_password.value != mem.t_password_confirm.value){
			alert("비밀번호가 같지 않습니다.");
			mem.t_password_confirm.focus();
			return;
		}
		if(checkEmpty(mem.t_email,"이메일 입력!")) return;
		if(checkEmpty(mem.t_nickname,"닉네임 입력!")) return;
		
		mem.t_gubun.value ="memberSave";
		mem.method="post";
		mem.action="Member";
		mem.submit();
	}
	
	function checkId(){
		if(checkEmpty(mem.t_id,"ID 입력후 중복검사 하시오!")) return;
		var id = mem.t_id.value;
		$.ajax({
			type :"POST",
			url : "MemberCheckId",
			data: "t_id="+id,
			async:false,
			dataType : "text",
			error : function(){
				alert('통신실패!!!');
			},
			success : function(data){
				var result = $.trim(data);
				mem.t_id_check.value = result;
				//alert("=="+result+"==");
			}
		});			
	}	
	function setEmpty(){
		mem.t_id_check.value ="";
	}


</script>



<!--  -->


<main class="join-wrap">

    <div class="join-box">

        <h1>회원가입</h1>
        <p>일본어 학습의 시작, PeraPera</p>

        <form name="mem">
		<input type="hidden" name="t_gubun">
            <table>

                <tr>
                    <th>이름</th>
                    <td><input type="text" name="t_name"></td>
                </tr>

                <tr>
                    <th>아이디</th>
                    <td>

                        <input class="idInput" type="text" name="t_id">

                        <button type="button" onclick="checkId()" class="checkBtn" name="">
                            중복확인
                        </button>
				  		<input type="text" name="t_id_check" disabled style="border:none">

                    </td>
                </tr>

                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="t_password"></td>
                </tr>

                <tr>
                    <th>비밀번호 확인</th>
                    <td><input type="password" name="t_password_confirm"></td>
                </tr>

                <tr>
                    <th>이메일</th>
                    <td><input type="email" name="t_email"></td>
                </tr>

                <tr>
                    <th>닉네임</th>
                    <td><input type="text" name="t_nickname"></td>
                </tr>

                <tr>
                    <th>일본어 수준</th>
                    <td>
                        <select name="t_grade">
                            <option value="입문">입문</option>
                            <option value="초급">초급</option>
                            <option value="중급">중급</option>
                            <option value="고급">고급</option>
                        </select>

                    </td>
                </tr>

            </table>
        </form>

            <div class="btnArea">

	                <button class="joinBtn" onclick="goSave()">
	                    회원가입
	                </button>
				 <a href="Member" class="homeBtn">메인으로</a>

            </div>

    </div>

    
	    <div class="login-link">
	
	            이미 회원이신가요?
	
	            <a href="javascript:goPage('login')">
	                로그인
	            </a>
	
	    </div>
	    
    
    
    

</main>


<%@include file="../common_footer.jsp" %>
	
	
</body>
</html>