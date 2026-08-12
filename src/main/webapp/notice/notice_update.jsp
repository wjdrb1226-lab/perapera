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
<link rel="stylesheet" href="../css/notice/notice_update.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>
<body>

<%@include file="../common_header.jsp" %>


<!--  -->


<body>
<div class="wrap">

    <h1>공지사항 수정</h1>

    <div class="update_box">

        <table>

            <tr>
                <th>제목</th>
                <td>
                    <input type="text" value="PeraPera 서비스 업데이트 안내">
                </td>
            </tr>

            <tr>
                <th>작성자</th>
                <td>
                    <input type="text" value="관리자" readonly>
                </td>
            </tr>

            <tr>
                <th>중요공지</th>
                <td>
                    <label>
                        <input type="checkbox" checked>
                        중요공지로 등록
                    </label>
                </td>
            </tr>

            <tr>
                <th>첨부파일</th>
                <td>

                    <div class="file_box">

                        <span>📎 PeraPera_Update.pdf</span>

                        <input type="file">

                    </div>

                </td>
            </tr>

            <tr>
                <th>내용</th>

                <td>

					<textarea>
					안녕하세요.
					
					PeraPera를 이용해주셔서 감사합니다.
					
					이번 업데이트에서는 다음 기능이 추가되었습니다.
					
					- 단어장 검색 기능 개선
					- 암기 테스트 UI 변경
					- 공지사항 게시판 추가
					
					감사합니다.
					</textarea>

                </td>
            </tr>

        </table>

        <div class="btn_box">

            <input type="button" value="취소" class="cancel_btn" onclick="location.href='notice_view.jsp'">
	
            <input type="submit" value="수정완료" class="update_btn">

        </div>

    </div>

</div>




<!--  -->

<%@include file="../common_footer.jsp" %>






</body>
</html>