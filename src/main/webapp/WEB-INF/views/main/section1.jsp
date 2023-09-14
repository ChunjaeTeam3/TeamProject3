<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section1(소개) 영역 시작 -->
<section class="section has-background-primary is-relative testimonial-bg-shapes" id="about-me">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title has-text-white" style="margin-bottom:50px;font-weight:bold; ">소개</h2>
        </div>
        <div class="columns is-centered">
            <div class="column is-10 testimonial-slider">
                <div class="has-text-centered testimonial-content">
                    <i class="ti-quote-right has-text-white icon mb-20 is-inline-block"></i><br><br>
                    <p class="has-text-white mb-20">교육 정보가 한눈에, 학습 관리가 한번에 스마트한 학부모를 위한 토탈 교육 플랫폼! TSPOON로 완성하다.
                        <br><strong style="color:#413f3f; font-weight: bold;">내 아이의 하루를 담다! 부모의 하루를 열다!</strong>
                        아이 교육에 필요한 정보만을 한 번에 담은 우리 아이 통합 관리 플랫폼!어느덧 성큼 다가온 새학기!근심 없는 학부모가 되기 위한 꼼꼼한 준비!
                        입학 전 무엇을 어떻게 준비해야 하는지 티스푼과 함께 살펴볼까요?천재그룹 계열사의 정보를 한번에 확인
                        <strong style="color:#413f3f; font-weight: bold;">다른 알림장 앱 다운로드 없이 공지사항을 한번에 체크할 수 있습니다.</strong>
                        우리 아이 학교의 급식정보를 편하게 확인할 수 있습니다.</p>
                    <img class="image is-rounded is-inline-block mb-20" src="${path}/resources/images/tspoon.png" alt="티스푼 이미지">
                    <h4 class="has-text-white" style="font-weight: bold;">Tspoon</h4><br>
                    <h6 class="has-text-light mb-20" style="font-weight: bold;">천재교육, 티스푼</h6>
                </div>
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