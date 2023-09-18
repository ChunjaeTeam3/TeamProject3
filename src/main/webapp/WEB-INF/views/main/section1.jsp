<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section1(소개) 영역 시작 -->
<section class="section is-relative testimonial-bg-shapes mb-100" id="about-me">
    <div class="container">
        <div class="has-text-centered">
            <br><br>
            <h2 class="section-title m-0" style="font-weight:bold"> 티스푼 소개 </h2>
            <p class="mb-100"> 티스푼은 학부모를 위한 교육 플랫폼으로, 효율적인 학습 관리와 개인 맞춤형 교육을 제공합니다. </p>
        </div>
        <div class="columns is-centered mb-100">
            <div class="column is-10 testimonial-slider">
                <div class="has-text-centered testimonial-content">
                    <i class="fa-solid fa-quote-left fa-2xl mb-50"></i>
                    <h3 class="mb-10"> 한눈에 교육 정보를 체계적으로, 학습 관리를 똑똑하게! </h3>
                    <h4 class="mb-50"> 스마트한 학부모를 위한 토탈 교육 플랫폼, 티스푼🚀 </h4>
                    <i class="fa-solid fa-quote-right fa-2xl"></i>
                </div>
            </div>
        </div>
        <div class="columns is-centered">
            <div class="column has-text-centered rounded-lg p-5" style="border: 3px solid #ddd; margin: 0px 10px;">
                <i class="fa-solid fa-children fa-flip fa-2xl mb-40" style="color: #007cf0;"></i><br>
                아이 교육의 핵심, 티스푼과 함께!
            </div>
            <div class="column has-text-centered rounded-lg p-5" style="border: 3px solid #ddd; margin: 0px 10px;">
                <i class="fa-solid fa-school fa-flip fa-2xl mb-40" style="color: #007cf0;"></i><br>
                티스푼과 함께 대비하는 새학기!
            </div>
            <div class="column has-text-centered rounded-lg p-5" style="border: 3px solid #ddd; margin: 0px 10px;">
                <i class="fa-solid fa-circle-info fa-flip fa-2xl mb-40" style="color: #007cf0;"></i><br>
                쉽게 제공받는 천재교육 계열사의 정보,<br>티스푼에서 한 번에 확인해요!
            </div>
        </div>
    </div>
    <!-- bg shapes -->
    <img src="${path}/resources/images/backgrounds/map.png" alt="map" class="image bg-map">
    <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="bg-shape" class="image bg-shape-2">
    <img src="${path}/resources/images/illustrations/dots-group-sm.png" alt="bg-shape" class="image bg-shape-3">
    <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="bg-shape" class="image bg-shape-4">
    <img src="${path}/resources/images/illustrations/leaf-cyan.png" alt="bg-shape" class="image bg-shape-5">
</section>
<!-- section1(소개) 영역 끝 -->