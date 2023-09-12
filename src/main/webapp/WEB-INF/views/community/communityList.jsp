<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> 커뮤니티 </title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <jsp:include page="../setting/head.jsp" />

    <style>
        h1 { font-size: 40pt; }
        h3 { font-size: 20pt; }
    </style>
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<!-- page title -->
<section class="page-title has-background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> Community </h1>
        </div>
    </div>
    <!-- background shapes -->
    <img src="${path}/resources/images/illustrations/page-title.png" alt="illustrations" class="bg-shape-1 w-100">
    <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="illustrations" class="bg-shape-2">
    <img src="${path}/resources/images/illustrations/dots-cyan.png" alt="illustrations" class="bg-shape-3">
    <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="illustrations" class="bg-shape-4">
    <img src="${path}/resources/images/illustrations/leaf-yellow.png" alt="illustrations" class="bg-shape-5">
    <img src="${path}/resources/images/illustrations/dots-group-cyan.png" alt="illustrations" class="bg-shape-6">
    <img src="${path}/resources/images/illustrations/leaf-cyan-lg.png" alt="illustrations" class="bg-shape-7">
</section>
<!-- /page title -->

<!-- portfolio -->
<section class="section">
    <div class="container">
        <!-- filter menu -->
        <div class="buttons has-addons is-centered filter-menu">
            <label class="button is-primary is-active">
                <input type="radio" name="shuffle-filter" value="all" checked="checked" /> 전체
            </label>
            <label class="button is-primary">
                <input type="radio" name="shuffle-filter" value="design" /> 교육정보
            </label>
            <label class="button is-primary">
                <input type="radio" name="shuffle-filter" value="branding" />교재/학원 추천
            </label>
            <label class="button is-primary">
                <input type="radio" name="shuffle-filter" value="illustration" />진로상담
            </label>
            <label class="button is-primary">
                <input type="radio" name="shuffle-filter" value="illustration" />자유게시판
            </label>
        </div>
        <!-- /filter menu -->

        <div class="columns shuffle-wrapper">
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;design&quot;,&quot;illustration&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-1.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;branding&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-2.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;illustration&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-3.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;design&quot;,&quot;branding&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-6.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;illustration&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-8.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;design&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-5.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item" data-groups="[&quot;branding&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-1.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item"
                 data-groups="[&quot;design&quot;,&quot;illustration&quot;,&quot;branding&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-3.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item illustration" data-groups="[&quot;illustration&quot;]">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-7.png" alt="portfolio-image" class="image is-full is-block">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-light is-small" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /portfolio -->

<%@ include file="../layout/footer.jsp"%>

<!-- jQuery -->
<script src="${path}/resources/plugins/jQuery/jquery.min.js"></script>
<!-- slick slider -->
<script src="${path}/resources/plugins/slick/slick.min.js"></script>
<!-- filter -->
<script src="${path}/resources/plugins/shuffle/shuffle.min.js"></script>

<!-- Main Script -->
<script src="${path}/resources/js/script.js"></script>
</body>
</html>
