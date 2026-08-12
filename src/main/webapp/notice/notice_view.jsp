<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Track27 임정규 notice_write</title>
<link rel="stylesheet" href="../css/notice/notice_view.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>
<body>

<%@include file="../common_header.jsp" %>


<!--  -->


<div class="wrap">

    <h1>공지사항</h1>

    <div class="view_box">

        <table>

            <tr>
                <th>제목</th>
                <td colspan="5">📢 PeraPera 서비스 업데이트 안내</td>
            </tr>

            <tr>
                <th>작성자</th>
                <td>관리자</td>

                <th>작성일</th>
                <td>2026-08-04</td>

                <th>조회수</th>
                <td>248</td>
            </tr>

            <tr>
                <th>첨부파일</th>
                <td colspan="5">
                    <a href="#">PeraPera_Update.pdf</a>
                </td>
            </tr>

            <tr>
                <th>내용</th>

                <td colspan="5">

                    <div class="content_box">

						안녕하세요.
						
						PeraPera를 이용해주셔서 감사합니다.
						
						이번 업데이트에서는 다음과 같은 기능이 추가되었습니다.
						
						- 단어장 검색 기능 개선
						- 암기 테스트 UI 변경
						- 공지사항 게시판 추가
						- 회원가입 화면 개선
						
						앞으로도 더 좋은 서비스를 제공하도록 노력하겠습니다.
						
						감사합니다.

                    </div>

                </td>
            </tr>

        </table>

        <div class="btn_box">

            <input type="button" value="목록" class="list_btn" onclick="location.href='notice_list.jsp'">

            <input type="button" value="수정" class="edit_btn" onclick="location.href='notice_update.jsp'">

            <input type="button" value="삭제" class="delete_btn">

        </div>

    </div>

</div>






<!--  -->

<%@include file="../common_footer.jsp" %>






</body>
</html>