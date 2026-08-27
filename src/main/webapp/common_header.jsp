<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Track27 임정규</title>	
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common_header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>


<script>
	function goPage(gubun){
		work.t_gubun.value = gubun;
		work.method="post";
		work.action="Member";
		work.submit();
	}
	function goNotice(gubun){
		work.t_gubun.value = gubun;
		work.method="post";
		work.action="Notice";
		work.submit();
	}
	function goProduct(gubun){
		work.t_gubun.value = gubun;
		work.method="post";
		work.action="Product";
		work.submit();
	}
</script>

</head>
<body>

<div class="wrap">
<form name="work">
<input type="hidden" name="t_gubun">


<!--  -->
<header>
	<div class="logo">
		<i class="fa-solid fa-book-open"></i>
		<a href="Index">PeraPera</a>
	</div>
	
	
	
	
	<div class="headerMenu">
		<ul class="headerList">
			<li><a href="">단어장</a></li>
		    <li><a href="">암기</a></li>
		    <li><a href="javascript:goNotice('notice')">공지사항</a></li>
		    <li><a href="">커뮤니티</a></li>
		    <li><a href="javascript:goPage('myinfo')">마이페이지</a></li>
		</ul>
	</div>
	
	<div class="headerJoin">
	<c:if test="${not empty sessionName }">
					<a>${sessionName }님.</a>
					<a href="javascript:goPage('myinfo')">Myinfo</a>
					<a href="javascript:goPage('logout')">Logout</a>
					</c:if>
	<c:if test="${empty sessionName }">
		<a href="javascript:goPage('login')">로그인</a> / 
		<a href="javascript:goPage('join')">회원가입</a>
	</c:if>
		
		
	</div>

</header>
</form>
