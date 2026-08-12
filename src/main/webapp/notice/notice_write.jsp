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
<link rel="stylesheet" href="../css/notice/notice_write.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>
<body>

<%@include file="../common_header.jsp" %>


<!--  -->


<body>

<div class="wrap">

    <h1>공지사항 작성</h1>

    <div class="write_box">

        <table>
            <tr>
                <th>제목</th>
                <td>
                    <input type="text" placeholder="제목을 입력하세요.">
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
                    <label><input type="checkbox"> 중요공지로 등록</label>
                </td>
            </tr>

            <tr>
                <th>첨부파일</th>
                <td>
                    <input type="file">
                </td>
            </tr>

            <tr>
                <th>내용</th>
                <td>
                    <textarea placeholder="공지사항 내용을 입력하세요."></textarea>
                </td>
            </tr>

        </table>

        <div class="btn_box">

            <input type="button" value="목록" class="list_btn" onclick="location.href='notice_list.jsp'">

            <input type="submit" value="등록" class="write_btn">

        </div>

    </div>

</div>




<!--  -->

<%@include file="../common_footer.jsp" %>






</body>
</html>