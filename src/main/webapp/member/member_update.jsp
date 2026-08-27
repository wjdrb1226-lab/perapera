<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common_header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member_update.css">

<script type="text/javascript">
	function goUpdate(){
		if(checkEmpty(mem.t_name,"성명 입력!")) return;
		if(checkEmpty(mem.t_password,"비밀번호 입력!")) return;
		if(checkEmpty(mem.t_email,"이메일 입력!")) return;
		if(checkEmpty(mem.t_nickname,"닉네임 입력!")) return;

		if(checkEmpty(mem.t_password_check,"비밀번호 확인 입력!")) return;
		
		checkPassword();
		
		if(mem.t_password_check.value =="fail"){
			alert("비밀번호가 정확하지 않습니다.");
			mem.t_password_check();
			return;
		}
		
		mem.t_gubun.value ="memberUpdate";
		mem.method="post";
		mem.action="Member";
		mem.submit();
	}
	
	function checkPassword(){
		
		var id = mem.t_id.value;
		var password = mem.t_password_check.value;
		$.ajax({
			type :"POST",
			url : "MemberCheckPassword",
			data: "t_id="+id+"&t_password="+password,
			async:false,
			dataType : "text",
			error : function(){
				alert('통신실패!!!');
			},
			success : function(data){
				var result = $.trim(data);
				mem.t_password_check.value = result;
				//alert("=="+result+"==");
			}
		});			
	}	

</script>




    <main>

        <div class="update-box">

            <h1>내 정보 수정</h1>
            <p>회원님의 정보를 수정할 수 있습니다.</p>


            <form name="mem">
			<input type="hidden" name="t_gubun">
                <table>
                    <!-- 이름 -->
                    <tr>
                        <th>이름</th>
                        <td>
                            <input type="text" name="t_name" value="${dto.getName()}">
                        </td>
                    </tr>


                    <!-- 아이디 -->
                    <tr>
                        <th>아이디</th>
                        <td>
                            <input type="text" name="t_id" value="${dto.getId()}" readonly>
                        </td>
                    </tr>


                    <!-- 비밀번호 -->
                            <input type="hidden" name="t_password" value="${dto.getPassword()}" placeholder="변경할 비밀번호를 입력하세요.">


                    <!-- 비밀번호 확인 -->
                    <tr>
                        <th>비밀번호 확인</th>
                        <td>
                            <input type="password" name="t_password_check" placeholder="비밀번호를 다시 입력하세요.">
                        </td>
                    </tr>


                    <!-- 이메일 -->
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="email" name="t_email" value="${dto.getEmail()}">
                        </td>
                    </tr>


                    <!-- 닉네임 -->
                    <tr>
                        <th>닉네임</th>
                        <td>
                            <input type="text" name="t_nickname" value="${dto.getNickname()}">
                        </td>
                    </tr>


                    <!-- 일본어 수준 -->
                    <tr>
                        <th>일본어 수준</th>
                        <td>

                            <select name="t_grade">
                                <option value="입문" <c:if test="${dto.getGrade() eq '입문' }">selected</c:if>>입문</option>
                                <option value="초급" <c:if test="${dto.getGrade() eq '초급' }">selected</c:if>>초급</option>
                                <option value="중급" <c:if test="${dto.getGrade() eq '중급' }">selected</c:if>>중급</option>
                                <option value="고급" <c:if test="${dto.getGrade() eq '고급' }">selected</c:if>>고급</option>
                            </select>

                        </td>
                    </tr>

                </table>


                <div class="button-area">

                    <button type="button" class="update-btn" onclick="goUpdate()">
                        수정하기
                    </button>

                    <button type="button" class="cancel-btn" onclick="history.back();">
                        취소
                    </button>

                </div>

            </form>

        </div>

    </main>


    <!-- 풋터 -->
    <%@ include file="../common_footer.jsp" %>


</body>
</html>
