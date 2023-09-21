<%@ page contentType="text/html;" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title> 티스푼 </title>
    <jsp:include page="./setting/head.jsp"></jsp:include>
    <style>
        .player_btn {
            border: none;
            background-color: #ffffff;
        }

        #progressBar {
            width: 0px;
            height: 10px;
            background-color: #007cf0;
            transition: 1s;
            margin-top: -10px;
        }

        #btn-right {
            display: inline-block;
            float: right;
        }

        h4 {
            font-family: 'Roboto', 'sans-serif';
        }
    </style>

</head>
<body>
<!--헤더 영역 시작 -->
<jsp:include page="./layout/header.jsp"/>
<!--헤더 영역 끝 -->

<!-- 슬라이드 배너 영역 시작 -->
<jsp:include page="./main/slideBanner.jsp"/>
<!-- 슬라이드 배너 영역 끝 -->

<!-- 메인 페이지 영역 시작-->
<!-- 메인페이지 메뉴바 영역 시작 -->
<div class="header-wrapper" id="home" style="padding-bottom: 0;">
    <section class="hero is-large">
        <!-- 모바일 -->
        <nav class="navbar is-fixed-top is-transparent is-hidden-desktop">
            <div class="navbar-brand">
                <div class="navbar-burger burger" data-target="mobile-nav">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
            <div id="mobile-nav" class="navbar-menu">
                <div class="navbar-end">
                    <div class="navbar-item">
                        <a class="navbar-item" href="#home">
                            Home
                        </a>
                    </div>
                    <div class="navbar-item">
                        <a class="navbar-item" href="#about-me">
                            About Me
                        </a>
                    </div>
                    <div class="navbar-item">
                        <a class="navbar-item" href="#services">
                            Services
                        </a>
                    </div>
                    <div class="navbar-item">
                        <a class="navbar-item" href="#skills">
                            Skills
                        </a>
                    </div>
                    <div class="navbar-item">
                        <a class="navbar-item" href="#my-work">
                            My Work
                        </a>
                    </div>
                    <div class="navbar-item">
                        <a class="navbar-item" href="#contact">
                            Contact
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- 모바일 -->
        <!-- PC -->
        <div class="hero-foot ">
            <div class="hero-foot--wrapper">
                <div class="columns">
                    <div class="column is-12 hero-menu-desktop has-text-centered is-fixed-top">
                        <ul>
                            <li class="is-active">
                                <a href="${path}">Home</a>
                            </li>
                            <li>
                                <a href="#about-me">소개</a>
                            </li>
                            <li>
                                <a href="#services">서비스</a>
                            </li>
                            <li>
                                <a href="#skills">추천 강의</a>
                            </li>
                            <li>
                                <a href="#my-work">추천 교재</a>
                            </li>
                            <li>
                                <a href="#location">회사 위치</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- PC -->
    </section>
</div>
<!-- 메인페이지 메뉴바 영역 끝 -->

<!--위로 가기 아이콘 부분 시작-->
<form action="${path}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>
<!--위로 가기 아이콘 부분 끝-->

<!-- 메인페이지 콘텐츠 영역 시작 -->
<div class="main-content" style="padding-top: 0;">
    <!-- 사이드 메뉴 시작 -->
    <jsp:include page="layout/sidemenu.jsp"/>
    <!-- 사이드 메뉴 끝 -->
    <!-- section1(소개) 영역 시작 -->
    <jsp:include page="main/section1.jsp"></jsp:include>
    <!-- section1(소개) 영역 끝 -->

    <!-- section2(서비스 소개) 영역 시작 -->
    <jsp:include page="main/section2.jsp"></jsp:include>
    <!-- section2(서비스 소개) 영역 끝 -->

    <!-- section3(이벤트) 영역 시작 -->
    <jsp:include page="main/section3.jsp"></jsp:include>
    <!-- section3(이벤트) 영역 끝 -->

    <!-- section4(추천 교재) 영역 시작 -->
    <jsp:include page="main/section5.jsp"></jsp:include>
    <!-- section4(추천 교재) 영역 시작 -->

    <!-- section5(추천 강의) 영역 시작 -->
    <jsp:include page="main/section4.jsp"></jsp:include>
    <!-- section5(추천 강의) 영역 끝 -->

    <!-- section6(회사 위치) 영역 시작 -->
    <jsp:include page="main/section6.jsp"></jsp:include>
    <!-- section6(회사 위치) 영역 시작 -->
</div>
<!-- 메인페이지 콘텐츠 영역 끝 -->
<!--메인 페이지 영역 끝-->

<!-- 푸터 영영 시작 -->
<jsp:include page="./layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>