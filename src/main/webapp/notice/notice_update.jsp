<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/notice_update.css">

</head>
<body>

<script type="text/javascript">
   function goUpdate(){
      if(checkEmpty(noti.t_title,"제목 입력!")) return;
      if(checkEmpty(noti.t_content,"내용 입력!")) return;
      
      // 1.확장자 검사
      /*      var fileName = noti.t_attach.value;
            if(fileName != ""){ //  C:\fakepath\img_1.png
               var pathFileName = fileName.lastIndexOf(".")+1;    //확장자 제외한 경로+파일명
               var extension = (fileName.substr(pathFileName)).toLowerCase();   //확장자명
               //파일명.확장자
//               if(extension != "pdf" && extension != "hwp" && extension != "png"){
               if(extension != "pdf"{
                  alert(extension +" 형식 파일은 업로드 안됩니다. 한글, PDF, PNG 파일만 가능!");
                  return;
               }      
            }
      */         
            // 2.첨부 용량 체크   
            var file = noti.t_attach;
            var fileMaxSize  = 10; // 첨부 최대 용량 설정
            if(file.value !=""){
               // 사이즈체크
               var maxSize  = 1024 * 1024 * fileMaxSize;
               var fileSize = 0;
               // 브라우저 확인
               var browser=navigator.appName;
               // 익스플로러일 경우
               if (browser=="Microsoft Internet Explorer"){
                  var oas = new ActiveXObject("Scripting.FileSystemObject");
                  fileSize = oas.getFile(file.value).size;
               }else {
               // 익스플로러가 아닐경우
                  fileSize = file.files[0].size;
               }

               if(fileSize > maxSize){
                  alert(" 첨부파일 사이즈는 "+fileMaxSize+"MB 이내로 등록 가능합니다. ");
                  return;
               }   
            }      
      
      noti.method = "post";
      noti.action="Notice?t_gubun=update";
//      noti.action="NoticeSaveServlet";
      noti.submit();
   }   
</script>



<body>
<div class="wrap">

    <h1>공지사항 수정</h1>

    <div class="update_box">
	<form name="noti" enctype="multipart/form-data">
	<input type="hidden" name="t_gubun">
	<input type="hidden" name="t_no" value="${dto.getNo()}">
	<input type="hidden" name="t_ori_attach" value="${dto.getAttach()}">
        <table>

            <tr>
                <th>제목</th>
                <td>
                    <input type="text" name="t_title" value="${dto.getTitle()}">
                </td>
            </tr>

            <tr>
                <th>작성자</th>
                <td>
                    <input type="text" name="t_reg_id" value="${dto.getReg_id()}" readonly>
                </td>
            </tr>

            <tr>
                <th>중요공지</th>
                <td>
                    <label>
	                    <input type="hidden" name="t_important" value="0">
                        <input type="checkbox" name="t_important" value="Y" <c:if test="${dto.getImportant() eq 'Y'}">checked</c:if>> 중요공지로 등록
                    </label>
                </td>
            </tr>

            <tr>
                <th>첨부파일</th>
                <td>

                    <div class="file_box">

                        <span>${dto.getAttach()}</span>
                        <input type="file" name="t_attach">

                    </div>

                </td>
            </tr>

            <tr>
                <th>내용</th>

                <td>
					<textarea name="t_content">${dto.getContent()}</textarea>
                </td>
            </tr>

        </table>
		</form>
        <div class="btn_box">

            <input type="button" value="취소" class="cancel_btn" onclick="history.back();">
	
            <input type="button" value="수정완료" class="update_btn" onclick="goUpdate()">

        </div>

    </div>

</div>




<!--  -->

<%@include file="../common_footer.jsp" %>






</body>
</html>