<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common_header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member_mypage.css">

<main>

    <!-- 페이지 제목 -->
	
    <div class="page_head">
        <h1>마이페이지</h1>
        <p>
            나의 PeraPera 학습 정보를 확인해보세요.
        </p>
    </div>


    <!-- 회원 정보 -->

    <section class="member_info">
        <div class="section_title">
            <i class="fa-solid fa-circle-user"></i>
            회원 정보
        </div>
        <div class="member_profile">
            <div class="profile_icon">
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="profile_text">
                <p class="member_name">
                    ${dto.getName()}
                </p>
                <p class="member_id">
                    아이디 : ${dto.getId()}
                </p>
            </div>

            <div class="profile_button">
                <a href="javascript:goPage('myinfoUpdate')">
                    회원정보 수정
                </a>
            </div>
        </div>

        <table class="member_table">
            <tr>
                <th>이름</th>
                <td>
                    ${dto.getName()}
                </td>
                <th>닉네임</th>
                <td>
                    ${dto.getNickname()}
                </td>
            </tr>

            <tr>

                <th>이메일</th>
                <td>
                    ${dto.getEmail()}
                </td>
                <th>일본어 수준</th>
                <td>
                    ${dto.getGrade()}
                </td>
            </tr>

            <tr>
                <th>가입일</th>
                <td>
                    ${dto.getReg_date()}
                </td>
                <th>최근 정보 수정일</th>
                
                <td>
                    ${dto.getUpdate_date()}
                </td>
                
                
            </tr>

        </table>

    </section>



    <!-- 학습 현황 -->

    <section class="study_status">
        <div class="section_title">
            <i class="fa-solid fa-chart-simple"></i>
            학습 현황
        </div>

        <div class="status_list" id="statusList">
            <!-- 카드 1 -->

            <div class="status_box status_blue">
                <p class="status_title">
                    내 단어
                </p>

                <p class="status_number">
                    3,290<span>개</span>
                </p>

                <p class="status_text">
                    등록한 단어
                </p>
            </div>


            <!-- 카드 2 -->

            <div class="status_box status_green">
                <p class="status_title">
                    학습 완료
                </p>

                <p class="status_number">
                    2,154<span>개</span>
                </p>

                <p class="status_text">
                    암기한 단어
                </p>
            </div>

            <!-- 카드 3 -->

            <div class="status_box status_orange">
                <p class="status_title">
                    복습 필요
                </p>

                <p class="status_number">
                    436<span>개</span>
                </p>

                <p class="status_text">
                    다시 공부할 단어
                </p>
            </div>


            <!-- 카드 4 -->
            <div class="status_box status_purple">
                <p class="status_title">
                    학습 일수
                </p>

                <p class="status_number">
                    42<span>일</span>
                </p>

                <p class="status_text">
                    꾸준히 학습 중
                </p>
            </div>

            <!-- 카드 5 -->

            <div class="status_box status_pink">
                <p class="status_title">
                    오늘 학습
                </p>

                <p class="status_number">
                    154<span>회</span>
                </p>

                <p class="status_text">
                    오늘 학습 횟수
                </p>
            </div>

        </div>
    </section>



    <!-- 내 단어장 -->

    <section class="my_wordbook">
        <div class="section_title">
            내 단어장
        </div>

        <div class="wordbook_list">
            <!-- 단어장 1 -->
            <div class="wordbook_box">
                <div class="wordbook_info">
                    <p class="wordbook_title">
                        JLPT N2
                    </p>

                    <p class="wordbook_desc">
                        JLPT N2 시험 대비 단어장
                    </p>
                </div>

                <div class="wordbook_count">
                    <span>842</span>개
                </div>
            </div>


            <!-- 단어장 2 -->

            <div class="wordbook_box">
                <div class="wordbook_info">
                    <p class="wordbook_title">
                        일상 일본어
                    </p>

                    <p class="wordbook_desc">
                        일상생활에서 자주 사용하는 단어
                    </p>
                </div>

                <div class="wordbook_count">
                    <span>516</span>개
                </div>
            </div>


            <!-- 단어장 3 -->

            <div class="wordbook_box">
                <div class="wordbook_info">
                    <p class="wordbook_title">
                        즐겨찾기
                    </p>

                    <p class="wordbook_desc">
                        자주 복습하고 싶은 단어
                    </p>
                </div>

                <div class="wordbook_count">
                    <span>128</span>개
                </div>
            </div>

        </div>


        <div class="wordbook_more">
            <a href="">
                내 단어장 전체 보기
                <i class="fa-solid fa-angle-right"></i>
            </a>
        </div>

    </section>


</main>


<!-- footer -->
<%@include file="../common_footer.jsp" %>


<!-- drag -->

<script>

const statusSlider =
    document.getElementById("statusList");

let isDown = false;

let isDragging = false;

let startX;

let scrollLeft;


/* 마우스 누르기 */

statusSlider.addEventListener("mousedown", function(e){

    isDown = true;

    isDragging = false;

    statusSlider.style.cursor = "grabbing";

    startX = e.pageX;

    scrollLeft = statusSlider.scrollLeft;

});


/* 마우스 떼기 */

document.addEventListener("mouseup", function(){

    isDown = false;

    statusSlider.style.cursor = "grab";

});


/* 마우스 이동 */

statusSlider.addEventListener("mousemove", function(e){

    if(!isDown) return;

    e.preventDefault();

    const walk = e.pageX - startX;


    if(Math.abs(walk) > 5){

        isDragging = true;

    }


    statusSlider.scrollLeft =
        scrollLeft - walk;

});


</script>


</body>
</html>