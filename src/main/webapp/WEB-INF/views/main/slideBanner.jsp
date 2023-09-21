<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path2" value="<%=request.getContextPath() %>"/>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>

<style>
    .swiper {
        min-height: 430px;
    }
</style>

<!-- Swiper -->
<div class="swiper mySwiper">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <img src="${path2}/resources/images/main/banner1.jpg" alt="메인페이지 배너1" style="width: 100vw">
        </div>
        <div class="swiper-slide">
            <img src="${path2}/resources/images/main/banner2.jpg" alt="메인페이지 배너2" style="width: 100vw">
        </div>
        <div class="swiper-slide">
            <img src="${path2}/resources/images/main/banner3.jpg" alt="메인페이지 배너3" style="width: 100vw">
        </div>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
</div>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>