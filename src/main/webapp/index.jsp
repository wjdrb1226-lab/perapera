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
<title>Track27 임정규</title>
<link rel="stylesheet" href="css/main/main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">


</head>
<body>

<div class="wrap">

<!--  -->
<header>
	<div class="logo">
		<i class="fa-solid fa-book-open"></i>
		<a href="index.jsp">PeraPera</a>
	</div>
	
	
	
	
	<div class="headerMenu">
		<ul class="headerList">
			<li><a href="">단어장</a></li>
		    <li><a href="">암기</a></li>
		    <li><a href="notice/notice_list.jsp">공지사항</a></li>
		    <li><a href="">커뮤니티</a></li>
		    <li><a href="">마이페이지</a></li>
		</ul>
	</div>
	
	<div class="headerJoin">
		<a href="member/member_login.jsp">로그인</a> / 
		<a href="member/member_join.jsp">회원가입</a>
	</div>

</header>


<!-- -->


<main>
	<!--  -->
	<section class="left">
	
		<!-- 오늘의 단어 -->
		<div class="todayTango">
		
			<span class="title"><i class="fa-solid fa-bookmark"></i>&nbsp;&nbsp;오늘의 단어</span>
			<div class="todayTango_box">
				
				<p class="tango_1">ペラペラ&nbsp;<i class="fa-solid fa-volume-high"></i></p>
				<p class="tango_2">[페라페라]</p>
				<p class="tango_3">재잘재잘, 외국어를 잘 지껄이는 모양</p>
				<p class="tango_4">예문</p>
				<div class="tango_5">
					<p>
						彼は日本語でペラペラ答えている。<br>
						그는 일본어로 유창하게 대답하고 있다.
					</p>
				</div>
			</div>
			
			
		</div>
		
		<!-- 빠른 메뉴 -->
		
		<div class="fastMenu">
			<span class="title"><i class="fa-solid fa-bookmark"></i>&nbsp;&nbsp;빠른 메뉴</span>
			<div class="fastList" id="fastList">
			
				<div class="fast_1">
					<i class="fa-solid fa-book"></i>
					<p class="fast_1_1">단어장</p>
					<p class="fast_1_2">내 단어장 보기/추가</p>
					
					
				</div>
				<div class="fast_2">
					<i class="fa-solid fa-graduation-cap"></i>
					<p class="fast_2_1">암기</p>
					<p class="fast_2_2">단어 암기 학습</p>
				</div>
				<a href="notice/notice_list.jsp" class="fast_3">
					<i class="fa-solid fa-bell"></i>
					<p class="fast_3_1">공지사항</p>
					<p class="fast_3_2">새로운 소식/이벤트</p>
				</a>
				<div class="fast_4">
					<i class="fa-regular fa-comment-dots"></i>
					<p class="fast_4_1">커뮤니티</p>
					<p class="fast_4_2">질문 및 정보 공유</p>
				</div>
				<div class="fast_5">
					<i class="fa-regular fa-address-card"></i>
					<p class="fast_5_1">마이 페이지</p>
					<p class="fast_5_2">내 정보 및 단어장</p>
				</div>
				
				
			</div>
			
			
		</div>
		
	</section>
	
	<!--  -->
	
	<section class="right">
	
	
	<!-- 로그인 -->
		<div class="login">
			<div>
				<i class="fa-solid fa-circle-user"></i>
				<p class="login_guide">로그인이 필요합니다.</p>
				<div class="login_ment">
					<p>오늘도 한 걸음 더</p>
					<p>일본어에 가까워지세요.</p>
					<p>로그인하고 나만의 단어장과 학습 기록을 이어서 시작해보세요!</p>
				</div>
				
				<div class="login_box">
					<div class="login_box_1">
						<a href="member/member_login.jsp">로그인</a>
					</div>
					<div class="login_box_2">
						<a href="member/member_join.jsp">회원가입</a>
					</div>
				</div>
			</div>
		</div>
	
	
	<!-- 서비스 -->
		<div class="service">
			<span class="service_title">서비스 현황</span>
			<ul class="service_list">
				<li>
					<span class="service_1_1">등록 단어<p class="service_1_2">3,290개</p></span>
					
				</li>
					<span class="service_2_1">오늘 학습<p class="service_2_2">154회</p></span>
				<li>
					<span class="service_3_1">회원 수<p class="service_3_2">305명</p></span>
					
				</li>
			</ul>
		</div>
	
	</section>


</main>


<!-- footer -->


	<!-- 공지사항 -->
<footer class="footer">
	
	<div class="notice">
		<i class="fa-solid fa-bullhorn"></i>
		<p class="notice_title">공지사항</p>
		<p class="notice_content">새로운 이벤트가 진행 중입니다! 지금 바로 참여하세요.</p>
		<p class="notice_date">2026.07.01 <i class="fa-solid fa-angle-right"></i></p>
	</div>
	
	<div class="copyright">

            <div class="footer_logo">
				<i class="fa-solid fa-book-open"></i>
				<span>PeraPera</span>
			</div>
			<p>Learn a little, remember forever.</p>
			
			<p>© 2026 PeraPera. All Rights Reserved.
			Designed & Developed by Im Jeonggyu.</p>

    </div>

</footer>
</div>


<script>
const slider = document.getElementById("fastList");

let isDown = false;
let isDragging = false;
let startX;
let scrollLeft;

// 드래그 시작
slider.addEventListener("mousedown", function (e) {
    isDown = true;
    isDragging = false;

    slider.style.cursor = "grabbing";

    startX = e.pageX;
    scrollLeft = slider.scrollLeft;
});

// 드래그 종료
document.addEventListener("mouseup", function () {
    isDown = false;
    slider.style.cursor = "grab";
});

// 드래그 중
slider.addEventListener("mousemove", function (e) {

    if (!isDown) return;

    e.preventDefault();

    const walk = e.pageX - startX;

    // 5px 이상 움직이면 드래그로 인식
    if (Math.abs(walk) > 5) {
        isDragging = true;
    }

    slider.scrollLeft = scrollLeft - walk;
});

// 드래그 후 링크 클릭 방지
slider.querySelectorAll("a").forEach(function (link) {

	link.addEventListener("dragstart", function(e){
        e.preventDefault();
    });
	
    link.addEventListener("click", function (e) {

        if (isDragging) {
            e.preventDefault();
            e.stopPropagation();
            isDragging = false;
        }

    });

});
</script>
</body>
</html>