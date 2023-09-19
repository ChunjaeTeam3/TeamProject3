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
    <jsp:include page="layout/header.jsp" />
    <!--헤더 영역 끝 -->

    <!-- 헤더 사이드 영역 시작 -->
    <section class="hero-area background-primary" id="parallax" style="height:780px">
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
            <a class="list-item has-text-white" href="https://github.com/ChunjaeTeam3/TeamProject3"><i class="ti-github"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-facebook"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-instagram"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-twitter"></i></a>
        </div>
        <!-- /social icon -->
    </section>
    <!-- 헤더 배너 영역 끝 -->

    <!-- 메인 페이지 영역 시작-->

        <!--위로 가기 아이콘 부분 시작-->
        <form action="${path}">
            <button id="toTop" title="Go to top">
                <i class="fas fa-angle-up"></i>
            </button>
        </form>
        <!--위로 가기 아이콘 부분 끝-->

        <!-- 메인페이지 콘텐츠 영역 시작 -->
        <div class="main-content" style="padding-top: 0;">
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

            <!-- section5(회사 위치) 영역 시작 -->
            <jsp:include page="main/section5.jsp"></jsp:include>
            <!-- section4(회사 위치) 영역 시작 -->
        </div>
        <!-- 메인페이지 콘텐츠 영역 끝 -->

    <!--메인 페이지 영역 끝-->

    <!-- 푸터 영영 시작 -->
    <jsp:include page="layout/footer.jsp"/>
    <!-- 푸터 영역 끝 -->

</body>
</html>