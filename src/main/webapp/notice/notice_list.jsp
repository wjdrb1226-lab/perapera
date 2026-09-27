<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common_header.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/notice_list.css">



<script>
	function goSearch(){
		noti.method="post";
		noti.action="Notice";
		noti.submit();
		
	}
	
	function goPageList(pageNum){
		noti.t_nowPage.value = pageNum;
		noti.method="post";
		noti.action="Notice";
		noti.submit();
		
	}

	function goView(no){
		view.t_gubun.value="view";
		view.t_no.value = no;
		view.method="post";
		view.action="Notice";
		view.submit();
	}
	
	

</script>

<!--  -->




<form name="view">
	<input type="hidden" name="t_gubun">
	<input type="hidden" name="t_no">
</form>



<div class="notice_wrap">
	
	<div class="notice_title">
		<i class="fa-solid fa-bullhorn"></i>
		<p class="notice_span_1">공지사항</p>
		<p class="notice_span_2">PeraPera의 새로운 소식과 업데이트 내용을 확인하세요.</p>
	</div>
	<div class="notice_lis">
	<form name="noti">
	
	
	<input type="hidden" name="t_nowPage">
		
		<p>
			<select name="t_select">
				<option value="title" <c:if test="${select eq 'title'}"> selected</c:if> >제목</option>
				<option value="content" <c:if test="${select eq 'content'}"> selected</c:if> >내용</option>
			</select>
			<input type="text" name="t_search" value="${search}">
			<button type="button" onclick="goSearch()" class=""><i class="fa fa-search"></i> SEARCH</button>
		</p>
			<!--<p class="">총 게시글:${totalCount}</p>-->
	</form>
	
	<table>
		<colgroup>
			<col width="10%">
			<col width="*%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
		</colgroup>
	
		<thead>
			<tr class="thead_title">
				<th>번호</th>
				<th>제목</th>
				<th>첨부파일</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
	
		</thead>
		
		<tbody>
					<c:set var="seq" value="${order}"> </c:set>
					<c:forEach items="${t_dtos}" var="dto">
				<tr>
					<td>
			            ${seq} 
			            <c:set var="seq" value="${seq - 1}"></c:set>
			        </td>
					<td class="subject">
						<c:if test="${dto.getImportant() eq 'Y'}">
					        <span class="important_badge">📌 중요</span>
					    </c:if>
						<a href="javascript:goView('${dto.getNo()}')">
							${dto.getTitle()}
						</a>
					</td>
					<td>
						<c:if test="${not empty dto.getAttach()}">
							<img src="images/clip.png">
						</c:if>
					</td>
					
					<td>${dto.getReg_id()}</td>
					<td>${dto.getReg_date()}</td>
					<td>${dto.getHit()}</td>

				</tr>
			</c:forEach>
<!--			<tr>
				<td>5</td>
					<td class="subject">
						<a href="notice_view.jsp">
							7월 업데이트 안내
						</a>
					</td>
					<td>관리자</td>
					<td>2026.07.30</td>
					<td>152</td>

				</tr>
				
				<tr>
					<td>4</td>
					<td class="subject">
						<a href="notice_view.jsp">
							새로운 단어 학습 기능 추가
						</a>
					</td>
					<td>관리자</td>
					<td>2026.07.20</td>
					<td>98</td>
				</tr>

				<tr>
					<td>3</td>
					<td class="subject">
						<a href="notice_view.jsp">
							PeraPera 서비스 이용 안내
						</a>
					</td>
					<td>관리자</td>
					<td>2026.07.10</td>
					<td>76</td>
				</tr>

				<tr>
					<td>2</td>
					<td class="subject">
						<a href="notice_view.jsp">
							회원가입 이벤트 안내
						</a>
					</td>
					<td>관리자</td>
					<td>2026.07.05</td>
					<td>55</td>
				</tr>

				<tr>
					<td>1</td>
					<td class="subject">
						<a href="notice_view.jsp">
							PeraPera 오픈 안내
						</a>
					</td>
					<td>관리자</td>
					<td>2026.07.01</td>
					<td>120</td>
				</tr>
				-->
		</tbody>
		
	</table>
	
	</div>
	
	<!-- page -->
	
		<div class="paging">
		<!--
			<a href="">◀</a>
	
			<a href="" class="active">1</a>
	
			<a href="">2</a>
	
			<a href="">3</a>
	
			<a href="">4</a>
	
			<a href="">▶</a>
		-->
			
			${pageDisplay}
			
				<c:if  test="${sessionLevel eq 'top'}">
					<input type="button" onclick="goNotice('writeForm')" value="글쓰기" class="notice_write">
				</c:if>
		</div>
	
	
	
<footer>
	<%@include file="../common_footer.jsp" %>
</footer>
	
	
	


</div>






</body>
</html>