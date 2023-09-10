<%@ page contentType="text/html;" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>TeaSpoon</title>
    <jsp:include page="setting/head.jsp"></jsp:include>
    <style>
        button.player_btn {border: none;background-color: #ffffff;}
    </style>

</head>
<body>

    <!--헤더 영역 시작 -->
    <jsp:include page="setting/header.jsp"></jsp:include>
    <!--헤더 영역 끝 -->

    <!-- 헤더 사이드 영역 시작 -->
    <section class="hero-area has-background-primary" id="parallax">
        <div class="container">
            <div class="columns">
                <div class="column is-11-desktop is-offset-1-desktop">
                    <h1 class="has-text-white font-tertiary">Hi! I’m <br> Christoher <br> UX designer</h1>
                </div>
            </div>
        </div>
        <div class="layer-bg is-full">
            <img class="image is-full" src="${path}/resources/images/illustrations/leaf-bg.png" alt="bg-shape">
        </div>
        <div class="layer" id="l2">
            <img src="${path}/resources/images/illustrations/dots-cyan.png" alt="bg-shape">
        </div>
        <div class="layer" id="l3">
            <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="bg-shape">
        </div>
        <div class="layer" id="l4">
            <img src="${path}/resources/images/illustrations/dots-orange.png" alt="bg-shape">
        </div>
        <div class="layer" id="l5">
            <img src="${path}/resources/images/illustrations/leaf-yellow.png" alt="bg-shape">
        </div>
        <div class="layer" id="l6">
            <img src="${path}/resources/images/illustrations/leaf-cyan.png" alt="bg-shape">
        </div>
        <div class="layer" id="l7">
            <img src="${path}/resources/images/illustrations/dots-group-orange.png" alt="bg-shape">
        </div>
        <div class="layer" id="l8">
            <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="bg-shape">
        </div>
        <div class="layer" id="l9">
            <img src="${path}/resources/images/illustrations/leaf-cyan-2.png" alt="bg-shape">
        </div>
        <!-- social icon -->
        <div class="list list-hero-social">
            <a class="list-item has-text-white" href="#"><i class="ti-facebook"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-instagram"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-dribbble"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-twitter"></i></a>
        </div>
        <!-- /social icon -->
    </section>
    <!-- 헤더 사이드 영역 끝 -->

    <!-- 메인 페이지 영역 시작-->

        <!--위로 가기 아이콘 부분 시작-->
        <form action="#home">
            <button id="toTop" title="Go to top">
                <i class="fas fa-angle-up"></i>
            </button>
        </form>
        <!--위로 가기 아이콘 부분 끝-->

        <!-- 메인페이지 메뉴바 영역 시작 -->
        <div class="header-wrapper" id="home">
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
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- PC -->
            </section>
        </div>
        <!-- 메인페이지 메뉴바 영역 끝 -->

        <!-- 메인페이지 콘텐츠 영역 시작 -->
        <div class="main-content">
            <!-- section1(소개) 영역 시작 -->
            <jsp:include page="main/section1.jsp"></jsp:include>
            <!-- section1(소개) 영역 끝 -->

            <!-- section2(서비스) 영역 시작 -->
            <jsp:include page="main/section2.jsp"></jsp:include>
            <!-- section2(서비스) 영역 끝 -->

            <!-- section3(추천 강의) 영역 시작 -->
            <jsp:include page="main/section3.jsp"></jsp:include>
            <!-- section3(추천 강의) 영역 끝 -->

            <!-- section4(추천 교재) 영역 시작 -->
            <jsp:include page="main/section4.jsp"></jsp:include>
            <!-- section4(추천 교재) 영역 시작 -->
        </div>
        <!-- 메인페이지 콘텐츠 영역 끝 -->

    <!--메인 페이지 영역 끝-->

    <!-- 푸터 영영 시작 -->
    <jsp:include page="setting/footer.jsp"></jsp:include>
    <!-- 푸터 영역 끝 -->

</body>
</html>