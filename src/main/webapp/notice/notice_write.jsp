<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/notice_write.css">




<script type="text/javascript">
   function goSave(gubun){
	  noti.t_gubun.value = gubun;
   
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
      noti.action = "Notice?t_gubun="+gubun;
      noti.submit();
   }
</script>


<!--  -->


<body>

<div class="wrap">

    <h1>공지사항 작성</h1>

    <div class="write_box">
	<form name="noti" enctype="multipart/form-data">
		<input type="hidden" name="t_gubun">
        <table>
            <tr>
                <th>제목</th>
                <td>
                    <input type="text" name="t_title" placeholder="제목을 입력하세요.">
                </td>
            </tr>

            <tr>
                <th>작성자</th>
                <td>
                    <input type="text" name="t_reg_id" value="관리자" readonly>
                </td>
            </tr>

            <tr>
                <th>중요공지</th>
                <td>
                    <label><input type="checkbox" name="t_important" value="Y"> 중요공지로 등록</label>
                </td>
            </tr>

            <tr>
                <th>첨부파일</th>
                <td>
                    <input type="file" name="t_attach">
                </td>
            </tr>

            <tr>
                <th>내용</th>
                <td>
                    <textarea placeholder="공지사항 내용을 입력하세요." name="t_content"></textarea>
                </td>
            </tr>

        </table>
	</form>

        <div class="btn_box">
            <input type="button" value="목록" class="list_btn" onclick="goNotice('notice')">
            <input type="button" value="등록" class="write_btn" onclick="goSave('save')">
        </div>

    </div>
</div>




<!--  -->

<%@include file="../common_footer.jsp" %>






</body>
</html>