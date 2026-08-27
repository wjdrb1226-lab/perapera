<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/notice_view.css">



<script>
	function goUpdateForm(){
		noti.t_gubun.value="updateForm";
		noti.method="post";
		noti.action="Notice";
		noti.submit();
		
	}
	
	function goDelete(){
		if(confirm("삭제 하시겠습니까?")){
			noti.t_gubun.value="delete";
			noti.method="post";
			noti.action="Notice";
			noti.submit();
	   }
	}

</script>


	<form name="noti">
         <input type="hidden" name="t_gubun">
         <input type="hidden" name="t_no" value="${dto.getNo()}">
         <input type="hidden" name="t_ori_attach" value="${dto.getAttach()}">
    </form>


<div class="wrap">

    <h1>공지사항</h1>

    <div class="view_box">

        <table>

            <tr>
                <th>제목</th>
                <td colspan="5">📢 ${dto.getTitle()}</td>
            </tr>

            <tr>
                <th>작성자</th>
                <td>${dto.getReg_id()}</td>

                <th>작성일</th>
                <td>${dto.getReg_date()}</td>

                <th>조회수</th>
                <td>${dto.getHit()}</td>
            </tr>

            <tr>
                <th>첨부파일</th>
                <td colspan="5">
                    <a href="FileDownServlet?t_fileDir=notice&t_fileName=${dto.getAttach()}">${dto.getAttach()}</a>
                </td>
            </tr>

            <tr>
                <th>내용</th>

                <td colspan="5">

                    <div class="content_box"> ${dto.getContent()}



						<!-- 안녕하세요.
						
						PeraPera를 이용해주셔서 감사합니다.
						
						이번 업데이트에서는 다음과 같은 기능이 추가되었습니다.
						
						- 단어장 검색 기능 개선
						- 암기 테스트 UI 변경
						- 공지사항 게시판 추가
						- 회원가입 화면 개선
						
						앞으로도 더 좋은 서비스를 제공하도록 노력하겠습니다.
						
						감사합니다.
-->
                    </div>

                </td>
            </tr>

        </table>

        <div class="btn_box">
            <input type="button" value="목록" class="list_btn" onclick="location.href='Notice'">
        
        <c:if  test="${sessionLevel eq 'top'}">
            <input type="button" value="수정" class="edit_btn" onclick="goUpdateForm()">
            <input type="button" value="삭제" class="delete_btn" onclick="goDelete()">
		</c:if>

        </div>

    </div>

</div>






<!--  -->

<%@include file="../common_footer.jsp" %>






</body>
</html>